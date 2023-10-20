// This file defines file IO functions for JASS side of things
// Based off the FileIO module created by Nestharus, see:
// https://www.hiveworkshop.com/threads/codeless-save-load-its-now-a-reality-demo-map-included.226082/

library fileio
    private struct TestWritingEnabled
        private static constant string TEST_FILE = "Archipelago\\CommunicationTest.txt"
        readonly static boolean success = false

        private static method executeTestFile takes nothing returns nothing
            local string playerName = GetPlayerName(GetLocalPlayer())
            call Preloader(TEST_FILE)
            set success = GetPlayerName(GetLocalPlayer()) != playerName
            call SetPlayerName(GetLocalPlayer(), playerName)
        endmethod

        private static method writeTestFile takes nothing returns nothing
            call PreloadGenClear()
            call PreloadGenStart()
            call Preload("\")\r\n\tcall SetPlayerName(GetLocalPlayer(), \"FLAG TEST LOCAL CHECK\")\r\n//")
            call Preload("\" )\r\nendfunction\r\nfunction UNUSED takes nothing returns nothing \r\n//")
            call PreloadGenEnd(TEST_FILE)
        endmethod

        private static method onInit takes nothing returns nothing
            // call DisplayTextToForce(GetPlayersAll(), "Running file check")
            call writeTestFile()
            call executeTestFile()
            if (not success) then
                call DisplayTextToForce(GetPlayersAll(), "|cffff0000Error|r: File I/O is not enabled")
                call DisplayTextToForce(GetPlayersAll(), "Please update your registry settings")
            endif
        endmethod
    endstruct

endlibrary
