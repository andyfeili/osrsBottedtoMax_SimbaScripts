n := 0

Loop, read, change.txt
{
	;last_line := A_LoopReadLine
	
	;len := strlen(last_line)

	;StringGetPos pos, last_line, (

	;n := len - pos

	;StringRight, point, last_line, %n%

	point := A_LoopReadLine

   	value := Mod(n,3)
	n := n+1

    Loop, parse, A_LoopReadLine, %A_Tab%
    {
	
	

	if (value = 0)
	{	
		line := "option := randomRange(1,10000);"
		FileAppend, %line%`n, coords.txt

		line := "  if(option<2000) then"		
		FileAppend, %line%`n, coords.txt

		line := "  begin"		
		FileAppend, %line%`n, coords.txt

		line := % "    cMouseMove" . point . ";"
		FileAppend, %line%`n, coords.txt

		line := "    cMouseClick();"		
		FileAppend, %line%`n, coords.txt
	
		line := "  end"		
		FileAppend, %line%`n, coords.txt

		line := "  else if(option<5000) then"		
		FileAppend, %line%`n, coords.txt


		line := "  begin"		
		FileAppend, %line%`n, coords.txt		
		
	}


	if(value = 1)
	{
		line := % "    cMouseMove" . point . ";"
		FileAppend, %line%`n, coords.txt

	}

	if(value = 2)
	{


		line := "    cMouseClick();"		
		FileAppend, %line%`n, coords.txt

		line := "  end"		
		FileAppend, %line%`n, coords.txt

		line := "  else"		
		FileAppend, %line%`n, coords.txt

		
		line := "  begin"		
		FileAppend, %line%`n, coords.txt

		line := % "    cMouseMove" . point . ";"
		FileAppend, %line%`n, coords.txt

		line := "    cMouseClick();"		
		FileAppend, %line%`n, coords.txt

		line := "  end;"		
		FileAppend, %line%`n, coords.txt
	
	}


	
	

	
    }
}

Run C:\Windows\Notepad.exe "coords.txt"

sleep 3000

FileDelete, coords.txt

FileDelete, change.txt