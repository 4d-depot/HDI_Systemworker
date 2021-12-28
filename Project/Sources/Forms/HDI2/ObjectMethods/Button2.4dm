var $systemWoker : Object
If (Form:C1466.trace)
	TRACE:C157
End if 

Use (PictureInfo)
	PictureInfo.Identify:=""
End use 

// Start the system worker
// The response is manage by the cs.SystemWorkerParameters class
Form:C1466.systemWokerIdentify:=4D:C1709.SystemWorker.new(Form:C1466.commandLine.getIdentifyRequest(); cs:C1710.SystemWorkerParameters.new("Identify"))


// Start the timer that verify the status of the button and the spinner
SET TIMER:C645(50)

// Hide the buttons and display the spinner
SpinnerStatus("Identify")
