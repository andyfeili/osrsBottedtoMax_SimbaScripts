CoordMode, ToolTip, Relative 


append()
{

	MouseGetPos, xpos, ypos, id, Control
	Mouse_Data = (%xpos%,%ypos%)`n
	;msgbox %Mouse_Data%
	FileAppend, %Mouse_data%, change.txt
}





c::append()