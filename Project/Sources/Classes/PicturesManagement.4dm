Class constructor($originalPath : Text)
	var $resourcePath : Text
	
	$resourcePath:=Convert path system to POSIX:C1106(Folder:C1567(fk resources folder:K87:11).platformPath)
	This:C1470.appPath:="sips "
	
	This:C1470.rotatePath:=$resourcePath+"rotate_{name}.png"
	This:C1470.resizePath:=$resourcePath+"resize_{name}.png"
	
	
	If ($originalPath#"")
		This:C1470.originalPath:=$originalPath
	End if 
	
Function set originalPath($path)
	This:C1470._originalPath:=Convert path system to POSIX:C1106($path)
	This:C1470.original:=This:C1470._read(This:C1470._originalPath)
	
Function get originalPath->$path : Text
	
	$path:=This:C1470._originalPath
	
	// Returns the rotate picture 
Function getRotatePicture($name : Integer)->$picture : Picture
	
	$picture:=This:C1470._read(Replace string:C233(This:C1470.rotatePath; "{name}"; String:C10($name)))
	
	// Returns the resize picture 
Function getResizedPicture($name : Text)->$picture : Picture
	
	$picture:=This:C1470._read(Replace string:C233(This:C1470.resizePath; "{name}"; $name))
	
Function _read($path : Text)->$picture : Picture
	
	READ PICTURE FILE:C678(Convert path POSIX to system:C1107($path); $picture)