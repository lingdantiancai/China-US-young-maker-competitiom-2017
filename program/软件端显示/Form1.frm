VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   10935
   ScaleWidth      =   20250
   StartUpPosition =   3  '窗口缺省
   Begin VB.TextBox Text6 
      Height          =   735
      Left            =   9480
      TabIndex        =   12
      Text            =   "Text6"
      Top             =   5280
      Width           =   4335
   End
   Begin VB.TextBox Text5 
      Height          =   735
      Left            =   9480
      TabIndex        =   11
      Text            =   "Text5"
      Top             =   4200
      Width           =   4455
   End
   Begin VB.TextBox Text4 
      Height          =   735
      Left            =   9480
      TabIndex        =   8
      Text            =   "Text4"
      Top             =   3240
      Width           =   4455
   End
   Begin VB.TextBox Text3 
      Height          =   495
      Left            =   9480
      TabIndex        =   7
      Text            =   "Text3"
      Top             =   2520
      Width           =   4455
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   9480
      TabIndex        =   6
      Text            =   "Text2"
      Top             =   1920
      Width           =   4455
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   9480
      TabIndex        =   5
      Text            =   "Text1"
      Top             =   1200
      Width           =   4455
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   4335
      Left            =   840
      TabIndex        =   0
      Top             =   840
      Width           =   4935
      ExtentX         =   8705
      ExtentY         =   7646
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   ""
   End
   Begin VB.Label Label6 
      Caption         =   "脉象"
      Height          =   615
      Left            =   7200
      TabIndex        =   10
      Top             =   5280
      Width           =   1935
   End
   Begin VB.Label Label5 
      Caption         =   "舌相面相"
      Height          =   615
      Left            =   7320
      TabIndex        =   9
      Top             =   4320
      Width           =   1575
   End
   Begin VB.Label Label4 
      Caption         =   "自述"
      Height          =   495
      Left            =   7440
      TabIndex        =   4
      Top             =   3360
      Width           =   1575
   End
   Begin VB.Label Label3 
      Caption         =   "性别"
      Height          =   495
      Left            =   7440
      TabIndex        =   3
      Top             =   2520
      Width           =   1935
   End
   Begin VB.Label Label2 
      Caption         =   "年龄"
      Height          =   495
      Left            =   7440
      TabIndex        =   2
      Top             =   1920
      Width           =   1935
   End
   Begin VB.Label Label1 
      Caption         =   "姓名"
      Height          =   495
      Left            =   7440
      TabIndex        =   1
      Top             =   1200
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
webSina.navigate "http://baidu.com"
End Sub

Private Sub Text6_Change()

End Sub
