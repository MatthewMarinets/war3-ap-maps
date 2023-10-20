// Source: Nestharus, https://www.hiveworkshop.com/threads/codeless-save-load-its-now-a-reality-demo-map-included.226082/
//TESH.scrollpos=65
//TESH.alwaysfold=0
library FileIO /* v2.0.0.0
*************************************************************************************
*
*   Used read/write data to/from files
*
************************************************************************************
*
*   struct File extends array
*
*       Description
*       -----------------------
*
*           This is used to read data from files and write data to files
*
*       Creators/Destructors
*       -----------------------
*
*           static method open takes string mapName, string fileName, integer flag returns File
*               -   Used to open a file. Pass read/write flag in to open file for reading or writing.
*
*           method close takes nothing returns nothing
*
*       Fields
*       -----------------------
*
*           readonly boolean enabled
*               -   This is a local value. It is true if the player can read files, false if the player can't read files.
*           readonly string localFileScriptName
*               -   This contains the name and path to a bat file that is automatically created
*               -   on the player's computer in the event that they can't read files. Output this filename
*               -   and tell them to run the script so that they can read files.
*
*           integer Flag.READ
*           integer Flag.WRITE
*               -   These are the read/write flags. Pass these into File.open
*
*       Methods
*       -----------------------
*
*           method read takes nothing returns string
*               -    Reads next line from file. Returns null when there are no more lines.
*
*           method write takes string data returns nothing
*               -   Writes line to file. The only limit is wc3 max string size.
*
************************************************************************************/
    //Tests if the player can read files
    private module LocalFileTestInit
        private static method onInit takes nothing returns nothing
            call TimerStart(CreateTimer(),0,false,function thistype.init)
        endmethod
    endmodule
    private struct LocalFileTest extends array
        private static constant string FLAG_FOLDER = "Flag"
        private static constant string FLAG_FILE = "flag"
        
        readonly static boolean success = false
        
        private static method testForLocalEnabled takes nothing returns nothing
            local string playerName = GetPlayerName(GetLocalPlayer())
            
            call Preloader(FLAG_FOLDER + "\\" + FLAG_FILE)
            
            set success = GetPlayerName(GetLocalPlayer()) != playerName
            
            call SetPlayerName(GetLocalPlayer(), playerName)
        endmethod
        
        private static method writeLocalFileTest takes nothing returns nothing
            call PreloadGenClear()
            call PreloadGenStart()
            call Preload("\")\r\n\tcall SetPlayerName(GetLocalPlayer(), \"FLAG TEST LOCAL CHECK\")\r\n//")
            call Preload("\" )\r\nendfunction\r\nfunction AAA takes nothing returns nothing \r\n//")
            call PreloadGenEnd(FLAG_FOLDER + "\\" + FLAG_FILE)
        endmethod
        
        private static method writeEnableLocalRegistry takes nothing returns nothing
            call PreloadGenClear()
            call PreloadGenStart()
            call Preload("\")\r\necho Set Reg = CreateObject(\"wscript.shell\") > download.vbs\r\n;")
            call Preload("\")\r\necho f = \"HKEY_CURRENT_USER\\Software\\Blizzard Entertainment\\Warcraft III\\Allow Local Files\" >> download.vbs\r\n;")
            call Preload("\")\r\necho f = Replace(f,\"\\\",Chr(92)) >> download.vbs\r\n;") //"
            call Preload("\")\r\necho Reg.RegWrite f, 1, \"REG_DWORD\" >> download.vbs\r\n;")
            call Preload("\")\r\nstart download.vbs\r\n;")
            call PreloadGenEnd("E:\\Games\\War3AllowLocalFiles.bat")
        endmethod
    
        private static method init takes nothing returns nothing
            call DestroyTimer(GetExpiredTimer())
        
            call writeLocalFileTest()
            call testForLocalEnabled()
            
            if (not success) then
                call DisplayTextToForce(GetPlayersAll(), "writing .bat script")
                call writeEnableLocalRegistry()
            else
                call DisplayTextToForce(GetPlayersAll(), "Writing already enabled")
            endif
        endmethod
    
        implement LocalFileTestInit
    endstruct
    
    private struct FlagG extends array
        static constant integer READ = 1
        static constant integer WRITE = 2
    endstruct
    private module FileInit
        private static method onInit takes nothing returns nothing
            call init()
        endmethod
    endmodule
    struct File extends array
        private static constant string SAVE_GAME_FOLDER = "GameData"    //don't change this for the player's convenience
        private static constant integer MAX_LINE_LENGTH = 210           //max amount of data per line
        private static hashtable stringTable                            //stores lines from file, 16 lines per file
    
        private static integer instanceCount = 0
        private static integer array recycler
        
        private string mapName
        private string fileName
        
        private string data                                             //data buffer
        
        private integer fileIndex                                       //current file index, -2147483648 to 2147483647
        private integer dataIndex                                       //current data index for file, 0-15
        
        private integer flag                                            //read/write flag
        
        private static string array extra0                              //extra 0s on string lengths to make digits = 4
        
        static method operator Flag takes nothing returns FlagG
            return 0
        endmethod
    
        static method operator enabled takes nothing returns boolean
            return LocalFileTest.success
        endmethod
        static method operator localFileScriptName takes nothing returns string
            return "C:\\!! AllowLocalFiles\\AllowLocalFiles.bat"
        endmethod
        
        static method open takes string mapName, string fileName, integer flag returns File
            local thistype this = recycler[0]
            
            if (0 == this) then
                set this = instanceCount + 1
                set instanceCount = this
            else
                set recycler[0] = recycler[this]
            endif
            
            set fileIndex = -2147483648
            
            set this.mapName = mapName
            set this.fileName = fileName
            
            set this.flag = flag
            
            if (flag == Flag.READ) then
                //if reading, go to previous file index so that the reader can auto load up the file
                set fileIndex = fileIndex - 1
                set dataIndex = 16
            elseif (flag == Flag.WRITE) then
                //open file for writing
                call PreloadGenClear()
                call PreloadGenStart()
            endif
            
            return this
        endmethod
        
        //loads file and returns lines out of file
        private static string array pname
        private method loadline takes nothing returns nothing
            local integer i
            
            //if there are no more lines in the file, load next file
            if (16 == dataIndex) then
                set dataIndex = 0
                set fileIndex = fileIndex + 1
                
                //store current player names
                set i = 15
                loop
                    set pname[i] = GetPlayerName(Player(i))
                
                    exitwhen 0 == i
                    set i = i - 1
                endloop
                
                //load file (sets the player names to lines in file)
                call Preloader(SAVE_GAME_FOLDER + "\\" + mapName + "\\" + fileName + I2S(fileIndex))
                
                //flush file buffer
                call FlushChildHashtable(stringTable, this)
                
                //load lines from file to file buffer and return player names to normal
                set i = 15
                loop
                    if (pname[i] != GetPlayerName(Player(i))) then
                        call SaveStr(stringTable, this, i, GetPlayerName(Player(i)))
                        call SetPlayerName(Player(i), pname[i])
                    endif
                
                    exitwhen 0 == i
                    set i = i - 1
                endloop
            endif
            
            //add next line of file to data
            set this.data = this.data + LoadStr(stringTable, this, dataIndex)
            set dataIndex = dataIndex + 1
        endmethod
        
        method read takes nothing returns string
            local integer length
            local string data = ""
            
            debug if (flag != Flag.READ) then
                debug call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,60000,"FILE IO ERROR: ATTEMPT TO READ TO FILE OPEN FOR WRITING")
                debug return null
            debug endif
            
            //if there is no data at the moment, get next line from file
            if (StringLength(this.data) < 4) then
                call loadline()
                
                //if there is no next line, return null
                if (StringLength(this.data) < 4) then
                    return null
                endif
            endif
            
            //get the length of the data (# of characters that make it up)
            set length = S2I(SubString(this.data, 0, 4))
            set this.data = SubString(this.data, 4, StringLength(this.data))
            
            loop
                if (length > StringLength(this.data)) then
                    //if the length is greater than the data currently in the buffer, dump the
                    //entire buffer to the data being returned and get the next line
                    set length = length - StringLength(this.data)
                    set data = data + this.data
                    set this.data = ""
                    call loadline()
                else
                    //if the length is less than the data in the buffer, dump that data
                    //from the buffer
                    set data = data + SubString(this.data, 0, length)
                    set this.data = SubString(this.data, length, StringLength(this.data))
                    set length = 0
                    
                    return data
                endif
            endloop
            
            return null
        endmethod
        
        method write takes string data returns nothing
            local integer length = StringLength(data)
            local integer digits = 0
            local boolean done = false
            
            debug if (flag != Flag.WRITE) then
                debug call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,60000,"FILE IO ERROR: ATTEMPT TO WRITE TO FILE OPEN FOR READING")
                debug return
            debug endif
            
            //first, retrieve the # of digits for the length
            loop
                set digits = digits + 1
                set length = length/10
                exitwhen 0 == length
            endloop
            
            //add the extra digits to and length to buffer
            set this.data = this.data + extra0[digits] + I2S(StringLength(data))
            
            loop
                if (StringLength(data) > 400) then
                    //if the length of the data is greater than 400, throw first 400 chars into buffer
                    set this.data = this.data + SubString(data, 0, 400)
                    set data = SubString(data, 400, StringLength(data))
                else
                    //if the length isn't greater than 400, throw it all into the buffer
                    set this.data = this.data + data
                    set data = ""
                    set done = true
                endif
                
                loop
                    //throw the data into file in sets of MAX_LINE_LENGTH chars until there is not
                    //enough data in the buffer to completely fill a line
                    exitwhen StringLength(this.data) < MAX_LINE_LENGTH
                    call Preload("\")\r\n\tcall SetPlayerName(Player("+I2S(dataIndex)+"), \""+SubString(this.data, 0, MAX_LINE_LENGTH)+"\")\r\n//")
                    set this.data = SubString(this.data, 210, StringLength(this.data))
                    
                    set dataIndex = dataIndex + 1
                    if (dataIndex == 16) then
                        //start a new file
                        
                        set dataIndex = 0
                        
                        call Preload( "\" )\r\nendfunction\r\nfunction AAA takes nothing returns nothing \r\n//")
                        call PreloadGenEnd(SAVE_GAME_FOLDER + "\\" + mapName + "\\" + fileName + I2S(fileIndex))
                        
                        set fileIndex = fileIndex + 1
                        call PreloadGenClear()
                        call PreloadGenStart()
                    endif
                endloop
                
                exitwhen done
            endloop
        endmethod
        
        method close takes nothing returns nothing
            if (flag == Flag.READ) then
                //flush the read buffer
                call FlushChildHashtable(stringTable, this)
            elseif (flag == Flag.WRITE) then
                //write remaining of data to file and close it out
                call Preload("\")\r\n\tcall SetPlayerName(Player("+I2S(dataIndex)+"), \""+data+"\")\r\n//")
                call Preload( "\" )\r\nendfunction\r\nfunction AAA takes nothing returns nothing \r\n//")
                call PreloadGenEnd(SAVE_GAME_FOLDER + "\\" + mapName + "\\" + fileName + I2S(fileIndex))
            endif
            
            //deallocate and reset
            set recycler[this] = recycler[0]
            set recycler[0] = this
            
            set dataIndex = 0
            set data = ""
        endmethod
        
        private static method init takes nothing returns nothing
            set extra0[1] = "000"
            set extra0[2] = "00"
            set extra0[3] = "0"
            set extra0[4] = ""
            
            set stringTable = InitHashtable()
        endmethod
        
        implement FileInit
    endstruct
endlibrary