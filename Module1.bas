Attribute VB_Name = "Module1"
Option Explicit

Public decnum As Integer
Public hexnum As String
Public octnum As Integer
Public binnum As String
Public i As Long
Public maxpower As Integer
Public currenttime As String

Function decconvert(decnumber As Integer)
    hexnum = Hex(decnum)
    octnum = Oct(decnum)
    binnum = binconvert(decnum)
    Exit Function
End Function

Function consolelog(l As String)
    Form2.console1.Text = Form2.console1.Text & currenttime & ":  " & l & " " & Chr$(13) & Chr$(10)
    Exit Function
End Function

Function Eout(o)
    'Out("port", "value")
End Function

Function binconvert(x)
    If x < 0 Then Bin = Bin + "1" Else Bin = Bin + "0"

      For i = maxpower To 0 Step -1
         If x And (2 ^ i) Then   ' Use the logical "AND" operator.
            Bin = Bin + "1"
         Else
            Bin = Bin + "0"
         End If
      Next
      Text2.Text = Bin
End Function

