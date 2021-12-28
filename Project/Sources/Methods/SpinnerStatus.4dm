//%attributes = {}
// display or hide the button and spinner according to their name
#DECLARE($type : Text)


OBJECT SET VISIBLE:C603(*; $type+"Spinner"; Bool:C1537(PictureInfo.spinner[$type]))
OBJECT SET VISIBLE:C603(*; $type+"Displaying"; Not:C34(Bool:C1537(PictureInfo.spinner[$type])))