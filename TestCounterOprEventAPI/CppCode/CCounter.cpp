#include <windows.h>
#include <stdio.h>
#include "Conversion.h"
// This is the Novakod Studio base API
#include "api.h"

// Automatically generated include file corresponding to Novakod Studio project
#include "CCounter.h"

// Synbol file and environment file produced by the psC compiler
#define SYM_FILE "..\\..\\!!gen!!.sym"
#define ENV_FILE "..\\..\\!!gen!!.env"

#define PROG_FILE ""

int CCounter::Initialize(void)
{

	DMA_RAM_SIZE = 0;

	hModule = LoadLibrary("apisimulated.dll");
	if(hModule == 0)
	{
		printf("Can not load API dll file : apisimulated.dll\n");
	    return 1;
	}

	GetApiPtr_t fpGetApiPtr;
	fpGetApiPtr = (GetApiPtr_t)GetProcAddress(hModule, "GetApiPtr");

	if(fpGetApiPtr == 0)
	{
		FreeLibrary(hModule);
		printf("Can not obtain dll function GetApiPtr()...\n");
	    return 1;
	}


	pApi = fpGetApiPtr(0);

	if(pApi == 0)
	{
		FreeLibrary(hModule);
		printf("Error: pApi is NULL!\n");
	    return 1;
	}

	
	if(pApi->Open(SYM_FILE, ENV_FILE)!=0)
	{
		printf("pApi->Open FAILED : missing FPGA or RVM not running\n");
	    return 1;
	}
	
	char ProgFileName[4096];
	GetFullPathNameA(PROG_FILE, 4096, ProgFileName, NULL);
	if( pApi->LoadBinaryProg(ProgFileName, 0) != 0 )
	{
		printf("pApi -> LoadBinaryProg FAILED!\n");
	    return 1;
	}
	
	
	if(pApi->GetPortNumberByName("iOpr", Index_iOpr)!=0)
	{
		printf("Can not find port iOpr in symbol file:  (pApi->GetPortNumberByName())\n");
	    return 1;
	}
	if(pApi->GetPortNumberByName("iLoadValue", Index_iLoadValue)!=0)
	{
		printf("Can not find port iLoadValue in symbol file:  (pApi->GetPortNumberByName())\n");
	    return 1;
	}
	if(pApi->GetPortNumberByName("oValue", Index_oValue)!=0)
	{
		printf("Can not find port oValue in symbol file:  (pApi->GetPortNumberByName())\n");
	    return 1;
	}
    return 0;
}
void CCounter::Terminate(void)
{
    pApi->Close();
    delete pApi;
    FreeLibrary(hModule);
}

// iOpr
void CCounter::Set_iOpr  (unsigned char val, bool bEvent)
{
    Data_iOpr = *((int *)&val);
    pApi->InsertValue( Index_iOpr, Data_iOpr );
    if(bEvent)
        pApi->InsertEvent( Index_iOpr);
}
void CCounter::SetEv_iOpr( void)
{
    pApi->InsertEvent( Index_iOpr);
}

// iLoadValue
void CCounter::Set_iLoadValue  (unsigned char val)
{
    Data_iLoadValue = *((int *)&val);
    pApi->InsertValue( Index_iLoadValue, Data_iLoadValue );
}

// oValue
unsigned char CCounter::Get_oValue  (void)
{
    pApi->GetPortValue(Index_oValue, Data_oValue);
    return *((unsigned char*)(&Data_oValue));
}
bool CCounter::TestEv_oValue( void)
{
    bool ret; 
    pApi->GetPortEvent(Index_oValue, Data_oValue, ret);
    return ret;
}

