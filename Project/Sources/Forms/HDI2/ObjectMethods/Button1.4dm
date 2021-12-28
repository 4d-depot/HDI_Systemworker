var $systemWorker1; $systemWorker2; $systemWorker3; $systemWorker4 : Object
var $systemWorker5; $systemWorker6; $systemWorker7; $systemWorker8; $systemWorker9 : Object
var $type : Text

If (Form:C1466.trace)
	TRACE:C157
End if 


// Start the systemworkers. Each systemworker creates automatically its own worker in which it works.
// The response is manage by the cs.SystemWorkerParameters class
Form:C1466.systemWorkerRotate90:=4D:C1709.SystemWorker.new(Form:C1466.commandLine.getRotateRequest(90); cs:C1710.SystemWorkerParameters.new("Rotate90"))
Form:C1466.systemWorkerRotate90:=4D:C1709.SystemWorker.new(Form:C1466.commandLine.getRotateRequest(180); cs:C1710.SystemWorkerParameters.new("Rotate180"))
Form:C1466.systemWorker3Rotate270:=4D:C1709.SystemWorker.new(Form:C1466.commandLine.getRotateRequest(270); cs:C1710.SystemWorkerParameters.new("Rotate270"))

Form:C1466.systemWorkerResize100x50:=4D:C1709.SystemWorker.new(Form:C1466.commandLine.getResizeRequest(50; 100); cs:C1710.SystemWorkerParameters.new("Resize100x50"))
Form:C1466.systemWorkerResize200x100:=4D:C1709.SystemWorker.new(Form:C1466.commandLine.getResizeRequest(100; 200); cs:C1710.SystemWorkerParameters.new("Resize200x100"))
Form:C1466.systemWorkerResize300x150:=4D:C1709.SystemWorker.new(Form:C1466.commandLine.getResizeRequest(150; 300); cs:C1710.SystemWorkerParameters.new("Resize300x150"))
Form:C1466.systemWorkerResize400x200:=4D:C1709.SystemWorker.new(Form:C1466.commandLine.getResizeRequest(200; 400); cs:C1710.SystemWorkerParameters.new("Resize400x200"))
Form:C1466.systemWorkerResize500x250:=4D:C1709.SystemWorker.new(Form:C1466.commandLine.getResizeRequest(250; 500); cs:C1710.SystemWorkerParameters.new("Resize500x250"))
Form:C1466.systemWorkerResize600x300:=4D:C1709.SystemWorker.new(Form:C1466.commandLine.getResizeRequest(300; 600); cs:C1710.SystemWorkerParameters.new("Resize600x300"))

// Start the timer to verify the status of the button and the spinner
SET TIMER:C645(50)

// Hide the buttons and display the spinner
For each ($type; PictureInfo.spinner)
	
	SpinnerStatus($type)
	
End for each 

Form:C1466.picture.convertedPicture:=Null:C1517
