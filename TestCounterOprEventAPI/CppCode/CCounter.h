#ifdef __cplusplus
extern "C"  {// use the C fcn-call standard for all functions  
#endif       // defined within this scope   

class  CCounter
{

public: 
    // Member to access the basic API
    CFpgaApi *pApi;

    // Call first to connect to FPGA board;
    int Initialize(void);

    // Call to disconnect from FPGA board;
    void Terminate();

private:
    // DLL handle
    HMODULE hModule;

    // Size of memory for DMA transfer
    int DMA_RAM_SIZE;

    // Index for input and output ports
    int Index_iOpr;
    int Index_iLoadValue;
    int Index_oValue;

    // Temporary storage for input and output ports
    int Data_iOpr;
    int Data_iLoadValue;
    int Data_oValue;

public:
    // iOpr
    void Set_iOpr(unsigned char val, bool bEvent = false);
    void SetEv_iOpr(void);

    // iLoadValue
    void Set_iLoadValue(unsigned char val);

    // oValue
    unsigned char Get_oValue(void);
    bool TestEv_oValue(void);

};

#ifdef __cplusplus
} // end of extern "C" scope
#endif

