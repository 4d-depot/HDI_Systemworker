Class constructor($type : Text)
	
	This:C1470.encoding:="UTF-8"
	This:C1470.dataType:="text"
	This:C1470.hideConsole:=True:C214
	This:C1470.type:=$type
	
	
	Use (PictureInfo)
		PictureInfo.spinner[$type]:=1
	End use 
	
	
Function onResponse($systemworker : Object)
	
	If (This:C1470.type="Identify")
		// Because the systemworker is asynchronous and so is started in its own worker, I use a shared object to pass the result to the UI
		Use (PictureInfo)
			PictureInfo.Identify:=$systemworker.response
		End use 
	End if 
	
Function onTerminate
	// Because the systemworker is asynchronous and so is started in its own worker, I use a shared object to pass the result to the UI
	Use (PictureInfo)
		PictureInfo.spinner[This:C1470.type]:=0
	End use 
	
Function onDataError($systemworker : Object)
	// Because the systemworker is asynchronous and so is started in its own worker, I use a shared object to pass the result to the UI
	Use (PictureInfo)
		PictureInfo.spinner[This:C1470.type]:=0
	End use 
	
Function onError($systemworker : Object)
	// Because the systemworker is asynchronous and so is started in its own worker, I use a shared object to pass the result to the UI
	Use (PictureInfo)
		PictureInfo.spinner[This:C1470.type]:=0
	End use 
	
	