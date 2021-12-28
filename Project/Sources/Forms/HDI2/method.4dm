Case of 
		
	: (FORM Event:C1606.code=On Load:K2:1)
		
		InitInfo
		
		Init
		
	: (FORM Event:C1606.code=On Timer:K2:25)
		var $status : Integer
		var $type : Text
		
		For each ($type; PictureInfo.spinner)
			
			SpinnerStatus($type)
			
			$status:=$status+PictureInfo.spinner[$type]; 
			
		End for each 
		If ($status=0)
			SET TIMER:C645(0)
		Else 
			SET TIMER:C645(50)
		End if 
		
	: (FORM Event:C1606.code=On Unload:K2:2)
		If ((Form:C1466.systemWorkerRotate90#Null:C1517) && (Not:C34(Bool:C1537(Form:C1466.systemWorkerRotate90.terminated))))
			Form:C1466.systemWorkerRotate90.terminate()
		End if 
		If ((Form:C1466.systemWorker2Rotate180#Null:C1517) && (Not:C34(Bool:C1537(Form:C1466.systemWorker2Rotate180.terminated))))
			Form:C1466.systemWorker2Rotate180.terminate()
		End if 
		If ((Form:C1466.systemWorker3Rotate270#Null:C1517) && (Not:C34(Bool:C1537(Form:C1466.systemWorker3Rotate270.terminated))))
			Form:C1466.systemWorker3Rotate270.terminate()
		End if 
		If ((Form:C1466.systemWorkerResize100x50#Null:C1517) && (Not:C34(Bool:C1537(Form:C1466.systemWorkerResize100x50.terminated))))
			Form:C1466.systemWorkerResize100x50.terminate()
		End if 
		If ((Form:C1466.systemWorkerResize200x100#Null:C1517) && (Not:C34(Bool:C1537(Form:C1466.systemWorkerResize200x100.terminated))))
			Form:C1466.systemWorkerResize200x100.terminate()
		End if 
		If ((Form:C1466.systemWorkerResize300x150#Null:C1517) && (Not:C34(Bool:C1537(Form:C1466.systemWorkerResize300x150.terminated))))
			Form:C1466.systemWorkerResize300x150.terminate()
		End if 
		If ((Form:C1466.systemWorkerResize400x200#Null:C1517) && (Not:C34(Bool:C1537(Form:C1466.systemWorkerResize400x200.terminated))))
			Form:C1466.systemWorkerResize400x200.terminate()
		End if 
		If ((Form:C1466.systemWorkerResize500x250#Null:C1517) && (Not:C34(Bool:C1537(Form:C1466.systemWorkerResize500x250.terminated))))
			Form:C1466.systemWorkerResize500x250.terminate()
		End if 
		If ((Form:C1466.systemWorkerResize600x300#Null:C1517) && (Not:C34(Bool:C1537(Form:C1466.systemWorkerResize600x300.terminated))))
			Form:C1466.systemWorkerResize600x300.terminate()
		End if 
		If ((Form:C1466.systemWokerIdentify#Null:C1517) && (Not:C34(Bool:C1537(Form:C1466.systemWokerIdentify.terminated))))
			Form:C1466.systemWokerIdentify.terminate()
		End if 
		
		
End case 


