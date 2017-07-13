VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "脉搏数字传感器采样演示"
   ClientHeight    =   7155
   ClientLeft      =   2025
   ClientTop       =   1950
   ClientWidth     =   10230
   Icon            =   "sense.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7155
   ScaleWidth      =   10230
   StartUpPosition =   2  '屏幕中心
   Begin VB.CommandButton Command1 
      Caption         =   "开始"
      BeginProperty Font 
         Name            =   "楷体_GB2312"
         Size            =   14.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   7560
      TabIndex        =   28
      Top             =   6360
      Width           =   855
   End
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   14.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   405
      Left            =   8280
      TabIndex        =   23
      Top             =   1320
      Width           =   1695
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   9240
      Top             =   6840
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command5 
      Caption         =   "停止"
      BeginProperty Font 
         Name            =   "楷体_GB2312"
         Size            =   14.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   8400
      TabIndex        =   0
      Top             =   6360
      Width           =   855
   End
   Begin VB.CommandButton Command4 
      Caption         =   "退出"
      BeginProperty Font 
         Name            =   "楷体_GB2312"
         Size            =   14.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   9240
      TabIndex        =   1
      Top             =   6360
      Width           =   855
   End
   Begin VB.Frame Frame4 
      Caption         =   "传感器序列号"
      Height          =   735
      Left            =   7680
      TabIndex        =   21
      Top             =   5160
      Width           =   2295
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   120
         TabIndex        =   22
         Top             =   240
         Width           =   2055
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "基线"
      Height          =   1935
      Left            =   6600
      TabIndex        =   20
      Top             =   5040
      Width           =   855
      Begin VB.CommandButton Command3 
         BackColor       =   &H00E0E0E0&
         Height          =   615
         Left            =   120
         Picture         =   "sense.frx":058A
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   1200
         Width           =   615
      End
      Begin VB.CommandButton Command2 
         BackColor       =   &H00E0E0E0&
         Height          =   615
         Left            =   120
         Picture         =   "sense.frx":09CC
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   600
         Width           =   615
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   240
         TabIndex        =   27
         Top             =   240
         Width           =   375
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "放大倍率设置"
      Height          =   1095
      Left            =   120
      TabIndex        =   11
      Top             =   5880
      Width           =   6255
      Begin VB.OptionButton Option15 
         Caption         =   "10x"
         Height          =   495
         Left            =   5520
         TabIndex        =   26
         Top             =   480
         Width           =   615
      End
      Begin VB.OptionButton Option14 
         Caption         =   "9x"
         Height          =   495
         Left            =   4920
         TabIndex        =   25
         Top             =   480
         Width           =   495
      End
      Begin VB.OptionButton Option13 
         Caption         =   "8x"
         Height          =   555
         Left            =   4320
         TabIndex        =   24
         Top             =   480
         Width           =   495
      End
      Begin VB.OptionButton Option12 
         Caption         =   "7x"
         Height          =   495
         Left            =   3720
         TabIndex        =   19
         Top             =   480
         Width           =   495
      End
      Begin VB.OptionButton Option11 
         Caption         =   "6x"
         Height          =   495
         Left            =   3120
         TabIndex        =   18
         Top             =   480
         Width           =   495
      End
      Begin VB.OptionButton Option10 
         Caption         =   "5x"
         Height          =   495
         Left            =   2520
         TabIndex        =   17
         Top             =   480
         Width           =   495
      End
      Begin VB.OptionButton Option9 
         Caption         =   "4x"
         Height          =   495
         Left            =   1920
         TabIndex        =   16
         Top             =   480
         Value           =   -1  'True
         Width           =   495
      End
      Begin VB.OptionButton Option8 
         Caption         =   "3x"
         Height          =   495
         Left            =   1320
         TabIndex        =   15
         Top             =   480
         Width           =   495
      End
      Begin VB.OptionButton Option7 
         Caption         =   "2x"
         Height          =   495
         Left            =   720
         TabIndex        =   14
         Top             =   480
         Width           =   495
      End
      Begin VB.OptionButton Option6 
         Caption         =   "1x"
         Height          =   495
         Left            =   120
         TabIndex        =   13
         Top             =   480
         Width           =   495
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "采样速率设置"
      Height          =   735
      Left            =   120
      TabIndex        =   6
      Top             =   5040
      Width           =   6255
      Begin VB.OptionButton Option5 
         Caption         =   "1000Hz"
         Height          =   255
         Left            =   4080
         TabIndex        =   12
         Top             =   360
         Width           =   855
      End
      Begin VB.OptionButton Option4 
         Caption         =   "500hz"
         Height          =   255
         Left            =   3120
         TabIndex        =   10
         Top             =   360
         Width           =   855
      End
      Begin VB.OptionButton Option3 
         Caption         =   "400Hz"
         Height          =   300
         Left            =   2160
         TabIndex        =   9
         Top             =   360
         Width           =   975
      End
      Begin VB.OptionButton Option2 
         Caption         =   "300Hz"
         Height          =   300
         Left            =   1200
         TabIndex        =   8
         Top             =   360
         Width           =   975
      End
      Begin VB.OptionButton Option1 
         Caption         =   "200Hz"
         Height          =   300
         Left            =   240
         TabIndex        =   7
         Top             =   360
         Value           =   -1  'True
         Width           =   975
      End
   End
   Begin MSCommLib.MSComm MSComm1 
      Left            =   8400
      Top             =   6600
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
      RTSEnable       =   -1  'True
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00C00000&
      ForeColor       =   &H0000FFFF&
      Height          =   2655
      Left            =   120
      ScaleHeight     =   2595
      ScaleWidth      =   9915
      TabIndex        =   4
      Top             =   2040
      Width           =   9975
      Begin VB.Line Line2 
         BorderColor     =   &H000000C0&
         X1              =   0
         X2              =   9960
         Y1              =   105
         Y2              =   105
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000C0&
         X1              =   0
         X2              =   9960
         Y1              =   2440
         Y2              =   2440
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H00FFFFFF&
         BorderColor     =   &H00C00000&
         FillColor       =   &H00C00000&
         Height          =   2655
         Left            =   0
         Top             =   0
         Width           =   195
      End
   End
   Begin VB.Label Label14 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "  请选择传感器通讯端口              "
      BeginProperty Font 
         Name            =   "楷体_GB2312"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   735
      Left            =   8280
      TabIndex        =   29
      Top             =   240
      Width           =   1695
   End
   Begin VB.Label Label1 
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "楷体_GB2312"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000040C0&
      Height          =   1695
      Left            =   120
      TabIndex        =   5
      Top             =   120
      Width           =   8055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim X, Y, m, n, sw, z, FileName, baseline, COM_NO


Dim Instring As Variant
Dim stylebook As Byte

Dim stylebooks(2048) As Byte

Private Sub SetDS_OperatingMode(Command, Parameter)
Dim i As Long
Dim j As Long
   
   MSComm1.Output = " 3"
   For j = 1 To 500 Step 1
   For i = 1 To 50000 Step 1
       Next i
       Next j
   MSComm1.Output = Command
   MSComm1.Output = Parameter
   For j = 1 To 500 Step 1
   For i = 1 To 50000 Step 1
       Next i
       Next j
   MSComm1.Output = " 2"
   
   MSComm1.InBufferCount = 0
   MSComm1.OutBufferCount = 0
   
End Sub


Private Sub Combo1_Click()

   If MSComm1.PortOpen = True Then
        MSComm1.PortOpen = False
    End If

Select Case Combo1.ListIndex
    Case 0
        COM_NO = 1
    Case 1
        COM_NO = 2
    Case 2
        COM_NO = 3
    Case 3
        COM_NO = 4
    Case 4
        COM_NO = 5
    Case 5
        COM_NO = 6
    Case 6
        COM_NO = 7
    Case 7
        COM_NO = 8
    Case 8
        COM_NO = 9
    Case 9
        COM_NO = 10
    Case 10
        COM_NO = 11
    Case 11
        COM_NO = 12
    Case 12
        COM_NO = 13
    Case 13
        COM_NO = 14
    Case 14
        COM_NO = 15
    Case 15
        COM_NO = 16
End Select


MSComm1.CommPort = COM_NO

On Error GoTo Errorhandling
MSComm1.PortOpen = True
   
   For j = 1 To 500 Step 1
    For i = 1 To 50000 Step 1
       Next i
       Next j
    MSComm1.Output = " 4" + Chr(0)
    For j = 1 To 500 Step 1
    For i = 1 To 50000 Step 1
       Next i
       Next j
    MSComm1.Output = " 5" + Chr(0)
    For j = 1 To 500 Step 1
    For i = 1 To 50000 Step 1
       Next i
       Next j
    MSComm1.Output = " 7" + Chr(0)
Exit Sub

Errorhandling:

    MsgBox "端口选择错误 ！" + Chr(13) + Chr(13) + _
        "      系统不存在此端口号，请检查后重选  ", vbExclamation, "警告"

End Sub

Private Sub Combo2_Change()

End Sub

Private Sub Command1_Click()

i = 0

   MSComm1.Output = " 2"
  
10   Do
       DoEvents
     Loop Until MSComm1.InBufferCount >= 1
     
     Instring = MSComm1.Input
     stylebook = Instring(0)
     
     stylebooks(i) = stylebook      '写入数组
     i = i + 1
     
    Y = 2440 - 9 * stylebook
    X = 9
    Shape1.Left = m + 50
    Picture1.Line (m, n)-(X + m, Y)
    
    If m > 10000 Then
        m = -300
        i = 0
    End If
    
    m = X + m
    n = Y

GoTo 10
   
End Sub

Private Sub Command2_Click()
baseline = baseline + 1
    If baseline >= 6 Then baseline = 0

Select Case baseline
    Case 1
        Call SetDS_OperatingMode(" 5", Chr(1))
    Case 2
        Call SetDS_OperatingMode(" 5", Chr(2))
    Case 3
        Call SetDS_OperatingMode(" 5", Chr(3))
    Case 4
        Call SetDS_OperatingMode(" 5", Chr(4))
    Case 5
        Call SetDS_OperatingMode(" 5", Chr(5))
    Case 0
        Call SetDS_OperatingMode(" 5", Chr(0))
End Select
    Label7.Caption = baseline
End Sub

Private Sub Command3_Click()
baseline = baseline - 1
    If baseline <= -1 Then baseline = 5

Select Case baseline
    Case 1
        Call SetDS_OperatingMode(" 5", Chr(1))
    Case 2
        Call SetDS_OperatingMode(" 5", Chr(2))
    Case 3
        Call SetDS_OperatingMode(" 5", Chr(3))
    Case 0
        Call SetDS_OperatingMode(" 5", Chr(4))
    Case 0
        Call SetDS_OperatingMode(" 5", Chr(5))
    Case 0
        Call SetDS_OperatingMode(" 5", Chr(0))
End Select
        Label7.Caption = baseline
End Sub

Private Sub Command4_Click()

   If MSComm1.PortOpen = True Then
        MSComm1.PortOpen = False
   End If
    
    End
    
End Sub

Private Sub Command5_Click()
   
   MSComm1.Output = " 3"
   
   
Open FileName For Binary As #1

    For i = 1 To 1146
    Put #1, , stylebooks(i)
    Next i
    
Close #1

   FileName = FileName + 1


End Sub

Private Sub Form_Load()

Dim i As Long
Dim j As Long

    FileName = 1
    COM_NO = 1
    
    For i = 1 To 16 Step 1
        Combo1.AddItem "COM" + Format(i)
    Next i
    
    Combo1.Text = ""
    MSComm1.CommPort = 1
    
    MSComm1.Settings = "9600,N,8,1"
    MSComm1.InBufferSize = 1024
    MSComm1.OutBufferSize = 32
    
    MSComm1.InputLen = 1
    MSComm1.SThreshold = 1
    MSComm1.RThreshold = 1
    MSComm1.InputMode = comInputModeBinary
    

      
    Label1.Caption = "采样测试提示：" + _
                  Chr(13) + "    1、请将传感器对准桡动脉搏动最强处，扎紧腕带。" + _
                  Chr(13) + "    2、将手臂平置于台上，与心脏平齐。" + _
                  Chr(13) + "    3、测试中不要动作，不要说话，心情放松，呼吸平稳。" + _
                  Chr(13) + "    4、测试中，可以随时用鼠标调整参数（速率、倍率、基线）" + _
                  Chr(13) + "    5、在停止采样状态下，点击《传感器序列号》窗口显示序列号"
                  
baseline = 0
sw = 0
z = 0
m = -300
n = 1600
    Label7.Caption = baseline

End Sub



Private Sub Option1_Click()
    Call SetDS_OperatingMode(" 7", Chr(0))
End Sub

Private Sub Option10_Click()
    Call SetDS_OperatingMode(" 4", Chr(4))
End Sub

Private Sub Option11_Click()
    Call SetDS_OperatingMode(" 4", Chr(5))
End Sub

Private Sub Option12_Click()
    Call SetDS_OperatingMode(" 4", Chr(6))
End Sub


Private Sub Option13_Click()
    Call SetDS_OperatingMode(" 4", Chr(7))

End Sub

Private Sub Option14_Click()
    Call SetDS_OperatingMode(" 4", Chr(8))

End Sub

Private Sub Option15_Click()
    Call SetDS_OperatingMode(" 4", Chr(9))

End Sub

Private Sub Option2_Click()
    Call SetDS_OperatingMode(" 7", Chr(1))
End Sub

Private Sub Option3_Click()
    Call SetDS_OperatingMode(" 7", Chr(2))
End Sub

Private Sub Option4_Click()
    Call SetDS_OperatingMode(" 7", Chr(3))
End Sub

Private Sub Option5_Click()
    Call SetDS_OperatingMode(" 7", Chr(4))
End Sub

Private Sub Option6_Click()
    Call SetDS_OperatingMode(" 4", Chr(0))
End Sub

Private Sub Option7_Click()
    Call SetDS_OperatingMode(" 4", Chr(1))
End Sub

Private Sub Option8_Click()
    Call SetDS_OperatingMode(" 4", Chr(2))
End Sub

Private Sub Option9_Click()
    Call SetDS_OperatingMode(" 4", Chr(3))
End Sub


Private Sub Text1_Click()

    MSComm1.InBufferCount = 0
    MSComm1.Output = " 1"
    Text1.Text = ""
    
    Do
       DoEvents
     Loop Until MSComm1.InBufferCount >= 6
     
     Instring = MSComm1.Input
     Instring = MSComm1.Input
     
     Instring = MSComm1.Input
     stylebook = Instring(0)
     Text1.Text = Text1.Text + Chr(stylebook + 48)
     Instring = MSComm1.Input
     stylebook = Instring(0)
     Text1.Text = Text1.Text + Chr(stylebook + 48)
     Instring = MSComm1.Input
     stylebook = Instring(0)
     Text1.Text = Text1.Text + Chr(stylebook + 48)
     Instring = MSComm1.Input
     stylebook = Instring(0)
     Text1.Text = Text1.Text + Chr(stylebook + 48)
      
End Sub
