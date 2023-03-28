#include <windows.h>
#include <iostream>
using namespace std;

#include "api.h"
#include "CCounter.h"

int main(int argc, char* argv[])
{
    int  Value = 0;         // Counter value
    char chKey = ' ';       // Pressed key value
    int  iLoadValue = 0;    // Load value

    // Operation enum
    enum Opr_t { cOprNone, cOprReset, cOprUp, cOprDown, cOprLoad };

	// Declare the board interface object
    CCounter oFPGA;

	// Initialize and conect to FPGA board
    if( oFPGA.Initialize() != 0 )
	{
        cout << "Failed to initialize\n";
		return 1;
	};

	// Sends a reset, function start() is executed in each component
    oFPGA.pApi->SendStartEvent( );         

    // Infinite loop, until quit 
    while(true)
    {   
        // Print options
        system("cls");
        cout << "1 - Reset\n";
        cout << "2 - Up\n";
        cout << "3 - Down\n";
        cout << "4 - Load\n";
        cout << "    Load Value: " << iLoadValue << endl << endl;
        cout << "q - Quit\n\n";
        cout << "Counter value " << Value << endl << endl;
        cout << "Select operation: ";
        
        cin >> chKey;

        // If the user wants to quit
        if((chKey == 'q') || (chKey == 'Q'))
            break;  // Exit the while!

        // Allows to received future events
        oFPGA.pApi->ReStartEventsReception();

        switch(chKey)
        {
            // Reset counter
            case '1':
				oFPGA.Set_iOpr(cOprReset, true);
                break;

            // Up counter
            case '2':
				oFPGA.Set_iOpr(cOprUp, true);
                break;

                // Down counter
            case '3':
                oFPGA.Set_iOpr(cOprDown, true);
                break;

                // Load value
            case '4':
                cout << "\nEnter the load value 0 - 255 : ";
                cin >> iLoadValue;
                oFPGA.Set_iLoadValue(iLoadValue);
                oFPGA.Set_iOpr(cOprLoad, true);
                break;
        }  // End switch

        oFPGA.pApi->SendEvents();
        oFPGA.pApi->WaitForEvents();

        Value = oFPGA.Get_oValue();
    } // End while
        
    return 0;
}


