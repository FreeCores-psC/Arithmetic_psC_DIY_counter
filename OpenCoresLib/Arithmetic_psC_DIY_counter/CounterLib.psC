// =================================================================== 
// This is a library of counter templates
// ===================================================================
// Template parameter:
//    - TYPE determines the type of the counter
//      Ex: TYPE = ubyte creates an 8 bits unsigned counter
//
// ===================================================================
// Each counter supports:
//    - Resetting
//    - Counting up
//    - Counting down
//    - Loading a value from the input iLoadValue
//
// The code is straightforward, so you can easily create your own counter
//      by changing the operations. In fact you can create any functions 
//      like a shift register or even an ALU (Arithmetic and Logic Unit)
//      or a calculator.
//
// The output always generates an event.
//     If you don't want the event, remove the colon ':' in the assignment.
//         Ex: change oValue := 0; to oValue = 0;
//
// ===================================================================
// There are four counter templates in the library.
//
//   The first two executes the operation on input events:
//    - CCounterEvent_T:    operations depends on inputs: iReset, iUp, iDown, iLoad
//    - CCounterOprEvent_T: operations depends on a single input:  iOpr
//
//   The last two executes the operation at each step i.e. FPGA clock:
//    - CCounterLevel_T:    operations depends on inputs: iReset, iUp, iDown, iLoad 
//    - CCounterOprLevel_T: operations depends on a single input:  iOpr
//
// ===================================================================
// TEST BENCHES:
//
//    - CCounterEvent_T:    Manual test with control panel
//                              Project in "TestCounterEvent" folder
//
//    - CCounterOprEvent_T: Simulated DE1SoC board, you need the BSP
//                          Real DE1SoC board,      you need the real board
//                              Project in "TestCounterOprEventBoard" folder
//                          Performed by a C++ program
//                              Project in "TestCounterOprEventAPI" folder
//                              << This project requires a paid license >>
//
//    - CCounterLevel_T:    Using signal editor and viewer
//                              Project in "TestCounterLevel" folder
//
//    - CCounterOprLevel_T: Using signal editor and viewer
//                              Project in "TestCounterOprLevel" folder
// ===================================================================

library CounterLib
{
    // -------------------------------------------------------------------
    // This counter executes the operation on input events
    // There is a priority assigned to each function, in parenthesis
    //    0 indicates highest priority
    //      and priority decreases with increasing value
    // -------------------------------------------------------------------
    template <identifier TYPE>
    component CCounterEvent_T (in  active  bit  iReset,
                               in  active  bit  iUp,
                               in  active  bit  iDown,
                               in  active  bit  iLoad,
                               in  passive TYPE iLoadValue,
                               out active  TYPE oValue)
    {
        DoReset(0) on iReset 
        {
            oValue := (TYPE)0;
        }

        CountUp(1) on iUp 
        {
            oValue:++;
        }

        CountDown(2) on iDown 
        {
            oValue:--;
        }

        LoadValue(3) on iLoad 
        {
            oValue := iLoadValue;
        }
    };
        
    // -------------------------------------------------------------------
    // This counter executes the operation at each step or FPGA clock cycle
    // The priority is implemented with if and else instructions
    // -------------------------------------------------------------------
    template <identifier TYPE>
    component CCounterLevel_T (in  passive bit  iReset,
                               in  passive bit  iUp,
                               in  passive bit  iDown,
                               in  passive bit  iLoad,
                               in  passive TYPE iLoadValue,
                               out passive TYPE oValue)
    {
        always()
        {
            if(iReset) 
            {
                oValue = (TYPE)0;
            }

            else if(iUp)   
            {
                oValue++;
            }

            else if(iDown)   
            {
                oValue--;
            }

            else if(iLoad)   
            {
                oValue = iLoadValue;
            }
        }
    };

    // -------------------------------------------------------------------
    // Define type and constants for the counter operation
    // -------------------------------------------------------------------
    enum Opr_t { cOprNone, cOprReset, cOprUp, cOprDown, cOprLoad }; 

    // -------------------------------------------------------------------
    // This counter executes the operation on input events.
    // The input iOpr has the type Opr_t and determines the operation.
    // There is no priority on the operation.
    // -------------------------------------------------------------------
    // The switch statement has no break, only one case is executed
    // -------------------------------------------------------------------
    template <identifier TYPE>
    component CCounterOprEvent_T (in  active  Opr_t iOpr,
                                  in  passive TYPE  iLoadValue,
                                  out active  TYPE  oValue)
    {
        ExecuteOpr(0) on iOpr 
        {
            // The switch statement has no break, only one case is executed
            switch(iOpr)
            {
                case cOprReset: oValue:= (TYPE)0;
                case cOprUp:    oValue:++;
                case cOprDown:  oValue:--;
                case cOprLoad:  oValue := iLoadValue;
            }
        }
    };
        
    // -------------------------------------------------------------------
    // This counter executes the operation at each step or FPGA clock cycle
    // The input iOpr has the type Opr_t and determines the operation
    // There is no priority on the operations
    // -------------------------------------------------------------------
    template <identifier TYPE>
    component CCounterOprLevel_T (in  passive Opr_t iOpr,
                                  in  passive TYPE  iLoadValue,
                                  out passive TYPE  oValue)
    {
        always()
        {
            // Assign the value
            // In psC, the "switch" and the "if" instructions return a value
            oValue = switch(iOpr)   
                     {
                         case cOprReset: (TYPE)0;
                         case cOprUp:    oValue + 1ub;
                         case cOprDown:  oValue - 1ub;
                         case cOprLoad:  iLoadValue;
                     };
        }
    };
};
