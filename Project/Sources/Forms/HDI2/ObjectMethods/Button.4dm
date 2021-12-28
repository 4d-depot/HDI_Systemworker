
If (Form:C1466.trace)
	TRACE:C157
End if 

If (Select document:C905(1; ".png"; "Select a picture (png)"; Use sheet window:K24:11)#"")
	Form:C1466.picture.originalPath:=Document
End if 