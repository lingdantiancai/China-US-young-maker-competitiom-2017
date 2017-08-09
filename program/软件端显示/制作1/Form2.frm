VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form2"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  '窗口缺省
   Begin VB.TextBox Text8 
      Height          =   615
      Left            =   10440
      TabIndex        =   18
      Text            =   "Text8"
      Top             =   8040
      Width           =   2535
   End
   Begin VB.CommandButton Command3 
      Caption         =   "诊断"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   26.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   5520
      TabIndex        =   16
      Top             =   7080
      Width           =   2295
   End
   Begin VB.TextBox Text7 
      Height          =   615
      Left            =   10320
      TabIndex        =   15
      Text            =   "Text7"
      Top             =   6720
      Width           =   3855
   End
   Begin VB.TextBox Text6 
      Height          =   615
      Left            =   10320
      TabIndex        =   14
      Text            =   "Text6"
      Top             =   5400
      Width           =   3855
   End
   Begin VB.TextBox Text5 
      Height          =   735
      Left            =   10320
      TabIndex        =   13
      Text            =   "Text5"
      Top             =   4080
      Width           =   3855
   End
   Begin VB.TextBox Text4 
      Height          =   495
      Left            =   10320
      TabIndex        =   12
      Text            =   "Text4"
      Top             =   2880
      Width           =   3855
   End
   Begin VB.TextBox Text3 
      Height          =   495
      Left            =   10320
      TabIndex        =   11
      Text            =   "Text3"
      Top             =   1920
      Width           =   3855
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   10320
      TabIndex        =   10
      Text            =   "Text2"
      Top             =   1080
      Width           =   3855
   End
   Begin VB.TextBox Text1 
      Height          =   5295
      Left            =   1080
      TabIndex        =   9
      Text            =   "Text1"
      Top             =   1560
      Width           =   6495
   End
   Begin MSCommLib.MSComm MSComm1 
      Left            =   960
      Top             =   8400
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      CommPort        =   5
      DTREnable       =   -1  'True
   End
   Begin VB.CommandButton Command2 
      Caption         =   "存储"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   26.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   3000
      TabIndex        =   8
      Top             =   7080
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "退出"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   26.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   600
      TabIndex        =   7
      Top             =   7080
      Width           =   2175
   End
   Begin VB.Label Label5 
      Caption         =   "结果"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   26.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   9000
      TabIndex        =   17
      Top             =   8040
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "姓名"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   26.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   8760
      TabIndex        =   6
      Top             =   960
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "年龄"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   26.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   8760
      TabIndex        =   5
      Top             =   1920
      Width           =   1095
   End
   Begin VB.Label Label3 
      Caption         =   "性别"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   26.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   8760
      TabIndex        =   4
      Top             =   2880
      Width           =   1095
   End
   Begin VB.Label Label4 
      Caption         =   "脉象波形显示"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   26.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2640
      TabIndex        =   3
      Top             =   600
      Width           =   3855
   End
   Begin VB.Label Label3 
      Caption         =   "症状"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   26.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   0
      Left            =   8760
      TabIndex        =   2
      Top             =   4080
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "舌相"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   26.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   0
      Left            =   8640
      TabIndex        =   1
      Top             =   6720
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "面相"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   26.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   0
      Left            =   8640
      TabIndex        =   0
      Top             =   5400
      Width           =   1095
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
End

End Sub

Private Sub Form_Load()
Width = Screen.Width / 1.4 ' 设置窗体的宽度。
    Height = Screen.Height / 1.1 ' 设置窗体的高度。
    Left = (Screen.Width - Width) / 2   ' 在水平方向上居中显示。
    Top = (Screen.Height - Height) / 2   ' 在垂直方向上居中显示。
End Sub

Private Sub MSComm1_OnComm()

If MSComm1.CommEvent = comEvReceive Then
Text1.Text = AscB(MSComm1.Input)
             End If
MSComm1.InBufferCount = 0
End Sub

