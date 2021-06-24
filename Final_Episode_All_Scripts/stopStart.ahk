
global running := 0

stop(){
	WinActivate, Simba
	Send {f2}
}

start(){
	WinActivate, Simba
	Send {f9}
	WinActivate, Old
	
}

process(){
	
	if(running > 0)
	{
		stop()
		running:=0
	
	}
	else{
		start()
		running:=1
	
	}

}



\::process()
