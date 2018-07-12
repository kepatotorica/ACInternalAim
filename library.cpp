#include <Windows.h>
#include <Wincon.h>
#include <iostream>
#include <cmath>

//I don't know if this is the right way to do a struct, seems wrong since all of
// my members (is that what we call them?) are pointers.
typedef struct{
    int*    health;
    float*	fPosX;
    float*	fPosY;
    float*	fPosZ;
    float*	PlayerDistance;
    int*	Team;
    char*	*PlayerName;
}EntityData;

// pretty simple function to calculate distance between two three dimensional points
float distance3D(float pX, float pY, float pZ, float eX, float eY, float eZ) {
    return sqrt(pow(pX - eX, 2.0) + pow(pY - eY, 2.0) + pow(pZ - eZ, 2.0));
}

// If I have done this correctly it will take an address (base) and apply offsets
// provided in a list (offsets[]) to it until it has reached the end. At which point
// all you have to do is dereference and cast the value to edit it in memory. I could
// be wrong though since I haven't done much work in c++
uintptr_t addressFinder(uintptr_t* base, uintptr_t offsets[]){
    int num_elements = sizeof( offsets ) / sizeof( offsets[0] );
    uintptr_t address = *base;
    for(int i = 0; i < num_elements; i++){
        address = (address + offsets[i]);
    }
    return address;
}

DWORD WINAPI hackthread(LPVOID param)
{
//for debugging
    AllocConsole();
    HANDLE han = GetStdHandle(STD_OUTPUT_HANDLE);
    WriteConsole(han,"getting started\n",16,new DWORD,0);
//-------------

    uintptr_t* localPlayerAddress = (uintptr_t*)(0x50F4F4);
    uintptr_t* entArrayBaseAdd = (uintptr_t*)0x0050F4F8; //this is the pointer to the list of pointers that points to everyone entity in the GAME, what an ass sentence
    uintptr_t entSize = 0x4;

//player offsets
    uintptr_t xMoOffs[] = { 0x40 };
    uintptr_t yMoOffs[] = { 0x44 };
    uintptr_t xPosOffs[] = { 0x34 };
    uintptr_t yPosOffs[] = { 0x38 };
    uintptr_t zPosOffs[] = { 0x3c };
    uintptr_t nameOffs[] = { 0x225 };
    uintptr_t teamOffs[] = { 0x032c }; // 0 red 1 blue
    uintptr_t healthOffs[] = { 0xf8 };

    EntityData	my;

    my.health = (int*)addressFinder(localPlayerAddress,healthOffs);
//    my.health = (int*)(*localPlayerAddress + healthOffs[0]);
//    my.fPosX = (float*)(*localPlayerAddress + 0xF8);

//    if using CLion debugger and you want to exit the cheat while in game change value of
//    debug to 0; press f6
    BOOL debug = 1;

    while (true)
    {
//       my.health = 9999;
//        *health = 9999;
        *my.health = 1000;
        // So we can break from the infinite loop
        if (GetAsyncKeyState(VK_F3) || !debug) break;

        Sleep(10);
    }

    // Free the DLL
    *my.health = 99;
    *my.health = 100;
    FreeConsole();
    FreeLibraryAndExitThread((HMODULE)param, NULL);

    return NULL;
}

BOOL WINAPI DllMain(HINSTANCE hModule, DWORD dwReason, LPVOID lpReserved)
{
    switch (dwReason)
    {
        case DLL_PROCESS_ATTACH:
            CreateThread(0, 0, hackthread, hModule, 0, 0); // Added hModule to be passed to hackthread
            // DisableThreadLibraryCalls(0); <-- Not needed tbh
            break;

        case DLL_PROCESS_DETACH:
            break;
    }
    return TRUE;
}