;XButton1 double click fix
XButton1::	
	If (A_TimeSincePriorHotkey < 150) ;If (A_ThisHotkey = A_PriorHotkey and A_TimeSincePriorHotkey < 350)
		Return
	Send, {XButton1 Down}
	KeyWait, XButton1
	Send, {XButton1 Up}
Return