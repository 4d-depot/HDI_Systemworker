//%attributes = {}
var PictureInfo : Object

PictureInfo:=New shared object:C1526
Use (PictureInfo)
	PictureInfo.Identify:=""
	PictureInfo.spinner:=New shared object:C1526
End use 

Form:C1466.picture:=cs:C1710.PicturesManagement.new(Get 4D folder:C485(Current resources folder:K5:16)+"image.png")

If (Is Windows:C1573)
	Form:C1466.commandLine:=cs:C1710.CommandLinesForWindows.new(Form:C1466.picture)
Else 
	Form:C1466.commandLine:=cs:C1710.CommandLinesForMac.new(Form:C1466.picture)
End if 

Form:C1466.trace:=False:C215