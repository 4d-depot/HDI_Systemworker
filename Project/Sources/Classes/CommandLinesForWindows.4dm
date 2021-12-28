Class constructor($pictureManagement : Object)
	var $resourcePath : Text
	
	$resourcePath:=Convert path system to POSIX:C1106(Folder:C1567(fk resources folder:K87:11).platformPath)
	This:C1470.appResize:=$resourcePath+"Win\\scale.bat "
	This:C1470.appRotate:=$resourcePath+"Win\\rotateFlip.bat "
	This:C1470.appIdentity:=$resourcePath+"Win\\imgInfo.bat "
	
	This:C1470.pictureManagement:=$pictureManagement
	
	// Returns the command line to rotate a picture
Function getRotateRequest($angle : Integer)->$request : Text
	
	$request:=This:C1470.appRotate+"-source "+This:C1470.getOriginalPath()+" -target \""+Replace string:C233(This:C1470.pictureManagement.rotatePath; "{name}"; String:C10($angle))+"\" -force yes -rotation-angle "+String:C10($angle)
	
	// Returns the command line to resize a picture
Function getResizeRequest($height : Integer; $width : Integer)->$request : Text
	var $name; $size : Text
	
	$name:=String:C10($width)+"x"+String:C10($height)
	$size:=" -max-width "+String:C10($width)+" -max-height "+String:C10($height)+" -keep-ratio no -force yes"
	
	$request:=This:C1470.appResize+"-source "+This:C1470.getOriginalPath()+" -target \""+Replace string:C233(This:C1470.pictureManagement.resizePath; "{name}"; $name)+"\""+$size
	
	// Returns the command line to get the info of a picture
Function getIdentifyRequest->$request : Text
	
	$request:=This:C1470.appIdentity+" "+This:C1470.getOriginalPath()
	
	// Returns the original path surrounded with ""
Function getOriginalPath->$request : Text
	
	$request:="\""+This:C1470.pictureManagement.originalPath+"\" "
	
	
	