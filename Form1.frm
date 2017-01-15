VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   6045
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9390
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MouseIcon       =   "Form1.frx":0000
   MousePointer    =   99  'Custom
   ScaleHeight     =   6045
   ScaleWidth      =   9390
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      Caption         =   "Advanced"
      Height          =   375
      Left            =   0
      MaskColor       =   &H000000FF&
      MousePointer    =   2  'Cross
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   0
      Width           =   1095
   End
   Begin VB.CheckBox Check9 
      BackColor       =   &H00000000&
      Caption         =   "Disco"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   8280
      TabIndex        =   10
      Top             =   480
      Width           =   1095
   End
   Begin VB.CheckBox Check8 
      BackColor       =   &H00000000&
      Caption         =   "All On"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   8280
      TabIndex        =   9
      Top             =   120
      Width           =   1095
   End
   Begin VB.CheckBox Check7 
      BackColor       =   &H00800000&
      Caption         =   "Check1"
      Height          =   255
      Left            =   4680
      TabIndex        =   8
      Top             =   2520
      Width           =   255
   End
   Begin VB.CheckBox Check6 
      BackColor       =   &H00800000&
      Caption         =   "Check1"
      Height          =   255
      Left            =   4680
      TabIndex        =   7
      Top             =   3240
      Width           =   255
   End
   Begin VB.CheckBox Check5 
      BackColor       =   &H00800000&
      Caption         =   "Check1"
      Height          =   255
      Left            =   4680
      TabIndex        =   6
      Top             =   3960
      Width           =   255
   End
   Begin VB.CheckBox Check4 
      BackColor       =   &H00000000&
      Caption         =   "Check1"
      Height          =   255
      Left            =   8760
      TabIndex        =   5
      Top             =   4560
      Width           =   255
   End
   Begin VB.CheckBox Check3 
      BackColor       =   &H00000000&
      Caption         =   "Check1"
      Height          =   255
      Left            =   8760
      TabIndex        =   4
      Top             =   2040
      Width           =   255
   End
   Begin VB.CheckBox Check2 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      Caption         =   "Check1"
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   4680
      Width           =   255
   End
   Begin VB.PictureBox Picture1 
      BorderStyle     =   0  'None
      Height          =   5055
      Left            =   0
      Picture         =   "Form1.frx":0442
      ScaleHeight     =   5055
      ScaleWidth      =   9375
      TabIndex        =   0
      Top             =   1080
      Width           =   9375
      Begin VB.Timer Timer1 
         Interval        =   1
         Left            =   8880
         Top             =   4560
      End
      Begin VB.CheckBox Check1 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00000000&
         Caption         =   "Check1"
         Height          =   255
         Left            =   240
         MaskColor       =   &H000000FF&
         TabIndex        =   2
         Top             =   960
         Width           =   255
      End
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "MONSTER DRIFT R/C"
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   24
         Charset         =   0
         Weight          =   900
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1095
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   9375
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim rearleft As Boolean         'REAR LEFT
Dim rln As String
Dim rearright As Boolean        'REAR RIGHT
Dim rrn As String
Dim frontleft As Boolean        'FRONT LEFT
Dim fln As String
Dim frontright As Boolean       'FRONT RIGHT
Dim frn As String
Dim centerleft As Boolean       'CENTER CENTER
Dim cln As String
Dim centercenter As Boolean     'CENTER LEFT
Dim ccn As String
Dim centerright As Boolean     'CENTER RIGHT
Dim crn As String
Dim alllight As Boolean         'ALL ON
Dim disco As Boolean            'DISCO

Private Sub Check1_Click()
If rearleft = True Then
    rearleft = False
    decnum = decnum - 1
    consolelog ("Rear Left light off")
Else
    rearleft = True
    decnum = decnum + 1
    consolelog ("Rear Left light on")
End If
End Sub

Private Sub Check2_Click()
If rearright = True Then
    rearright = False
    decnum = decnum - 2
    consolelog ("Rear Right light off")
Else
    rearright = True
    decnum = decnum + 2
    consolelog ("Rear Right light on")
End If
End Sub

Private Sub Check3_Click()
If frontleft = True Then
    frontleft = False
    decnum = decnum - 4
    consolelog ("Front Left light off")
Else
    frontleft = True
    decnum = decnum + 4
    consolelog ("Front Left light on")
End If
End Sub

Private Sub Check4_Click()
If frontright = True Then
    frontright = False
    decnum = decnum - 8
    consolelog ("Front Right light off")
Else
    frontright = True
    decnum = decnum + 8
    consolelog ("Front Right light on")
End If
End Sub

Private Sub Check5_Click()
If centerright = True Then
    centerright = False
    decnum = decnum - 16
    consolelog ("Center Right light off")
Else
    centerright = True
    decnum = decnum + 16
    consolelog ("Center Right light on")
End If
End Sub

Private Sub Check6_Click()
If centercenter = True Then
    centercenter = False
    decnum = decnum - 32
    consolelog ("Center Center light off")
Else
    centercenter = True
    decnum = decnum + 32
    consolelog ("Center Center light on")
End If
End Sub

Private Sub Check7_Click()
If centerleft = True Then
    centerleft = False
    decnum = decnum - 64
    consolelog ("Center Left light off")
Else
    centerleft = True
    decnum = decnum + 64
    consolelog ("Center Left light on")
End If
End Sub

Private Sub Check8_Click()
If alllight = True Then
    alllight = False
    consolelog ("All lights off")
    Check1.Value = 0
    Check2.Value = 0
    Check3.Value = 0
    Check4.Value = 0
    Check5.Value = 0
    Check6.Value = 0
    Check7.Value = 0
    Check8.Value = 0
Else
    alllight = True
    consolelog ("all lights on")
    Check1.Value = 1
    Check2.Value = 1
    Check3.Value = 1
    Check4.Value = 1
    Check5.Value = 1
    Check6.Value = 1
    Check7.Value = 1
    Check8.Value = 1
End If
End Sub

Private Sub Check9_Click()
If disco = True Then
    disco = False
    consolelog ("Disco lights off")
Else
    disco = True
    consolelog ("Disco lights on")
End If
End Sub

Private Sub Command1_Click()
    Form2.Visible = True
End Sub

Private Sub Timer1_Timer()
currenttime = Time
End Sub
