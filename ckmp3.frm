VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Hollow Egg Mp3"
   ClientHeight    =   2820
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3945
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2820
   ScaleWidth      =   3945
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame2 
      Caption         =   "Length"
      Height          =   855
      Left            =   120
      TabIndex        =   4
      Top             =   1080
      Width           =   3735
      Begin VB.TextBox Text2 
         Height          =   285
         Left            =   360
         TabIndex        =   6
         Text            =   "4"
         Top             =   360
         Width           =   375
      End
      Begin VB.TextBox Text3 
         Height          =   285
         Left            =   1920
         MaxLength       =   2
         TabIndex        =   5
         Text            =   "33"
         Top             =   360
         Width           =   375
      End
      Begin VB.Label Label2 
         Caption         =   "Minutes"
         Height          =   255
         Left            =   840
         TabIndex        =   8
         Top             =   480
         Width           =   735
      End
      Begin VB.Label Label3 
         Caption         =   "Seconds"
         Height          =   255
         Left            =   2400
         TabIndex        =   7
         Top             =   480
         Width           =   855
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Output mp3"
      Height          =   855
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   3735
      Begin VB.TextBox Text1 
         Height          =   285
         Left            =   360
         TabIndex        =   3
         Text            =   "Hollow_Way_ -_ (Mix).mp3"
         Top             =   360
         Width           =   3015
      End
   End
   Begin VB.CommandButton Command2 
      Cancel          =   -1  'True
      Caption         =   "Exit"
      Height          =   495
      Left            =   2520
      TabIndex        =   1
      Top             =   2160
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Make Hollow Egg"
      Default         =   -1  'True
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   2160
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Open "smp3.data" For Input As #1
    Open Text1 For Output As #2
    Form1.Caption = Left(Form1.Caption, 14) & " - making..."
    Do While Not EOF(1)
        Input #1, a
        Print #2, Chr(a);
    Loop
    c = (Val(Text2) * 60) + (Val(Text3 - 1))
    d = (((Rnd) * 55) + 16000) * c
    For e = 1 To d
        Print #2, Chr(0);
    Next e
    Close
    Form1.Caption = Left(Form1.Caption, 14) & " - idle"
End Sub

Private Sub Command2_Click()
    End
End Sub

Private Sub Form_Load()
    Randomize
    Form1.Caption = Form1.Caption & " - idle"
End Sub
