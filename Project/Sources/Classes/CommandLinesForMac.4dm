Class constructor($pictureManagement : Object)
	
	This:C1470.appPath:="sips "
	
	This:C1470.pictureManagement:=$pictureManagement
	
	// Returns the command line to rotate a picture
Function getRotateRequest($angle : Integer)->$request : Text
	
	$request:=This:C1470.appPath+"-r "+String:C10($angle)+" "+This:C1470.getOriginalPath()+" --out \""+Replace string:C233(This:C1470.pictureManagement.rotatePath; "{name}"; String:C10($angle))+"\""
	
	// Returns the command line to resize a picture
Function getResizeRequest($height : Integer; $width : Integer)->$request : Text
	var $name : Text
	
	$name:=String:C10($width)+"x"+String:C10($height)
	
	$request:=This:C1470.appPath+"-z "+String:C10($height)+" "+String:C10($width)+" "+This:C1470.getOriginalPath()+" --out \""+Replace string:C233(This:C1470.pictureManagement.resizePath; "{name}"; $name)+"\""
	
	// Returns the command line to get the info of a picture
Function getIdentifyRequest->$request : Text
	
	$request:=This:C1470.appPath+"-g all "+This:C1470.getOriginalPath()
	
	// Returns the original path surrounded with ""
Function getOriginalPath->$request : Text
	
	$request:="\""+This:C1470.pictureManagement.originalPath+"\" "
	
	