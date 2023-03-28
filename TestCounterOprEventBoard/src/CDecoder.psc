component CDecoder (in  active  uint:4  iKeys,
				    in  passive uint:10 iSwitches,
				    out active  Opr_t   oOpr,
				    out passive ubyte   oLoadValue)
{
    // This component decodes the Keys and the Switches input port as follow:
    //
    //      Switches bits 7-0 --> oLoadValue
    //
    //      Keys    An event on Keys generates an event on oOpr
    //              bit  0 --> Reset
    //              bit  1 --> Up
    //              bit  2 --> Down
    //              bit  3 --> Load

    enum KeyCmd_t { cKeyReset = 1, cKeyUp = 2, cKeyDown = 4, oKeyLoad = 8 };

    Decode(0) on iKeys
    {
        // Send the event
        oOpr:;

        // Decode the operation
        oOpr =  switch(iKeys)
                {
                    case cKeyReset: cOprReset;
                    case cKeyUp:    cOprUp;
                    case cKeyDown:  cOprDown;
                    case oKeyLoad:  cOprLoad;
                    default:        (uint:3)0;
                };
    }
    
    always()
    {
        oLoadValue = (ubyte)bits(iSwitches, 7ub, 0ub);
    }
};