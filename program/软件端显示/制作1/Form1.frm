VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   BackColor       =   &H8000000D&
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Form1"
   ClientHeight    =   9090
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14925
   FillColor       =   &H0000FFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9090
   ScaleWidth      =   14925
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  '����������
   Begin VB.CommandButton Command1 
      Caption         =   "��ʼ����"
      BeginProperty Font 
         Name            =   "����"
         Size            =   26.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   4560
      TabIndex        =   0
      Top             =   4680
      Width           =   4575
   End
   Begin VB.Label Label1 
      Caption         =   "��ӭ��������С����"
      BeginProperty Font 
         Name            =   "����"
         Size            =   42
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   2520
      TabIndex        =   1
      Top             =   1920
      Width           =   8175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Form1
Form2.Show
End Sub



Private Sub Text6_Change()

End Sub

Private Sub Text7_Change()

End Sub

Private Sub Form_Load()
Width = Screen.Width / 1.5 ' ���ô���Ŀ�ȡ�
    Height = Screen.Height / 1.5 ' ���ô���ĸ߶ȡ�
    Left = (Screen.Width - Width) / 2   ' ��ˮƽ�����Ͼ�����ʾ��
    Top = (Screen.Height - Height) / 2   ' �ڴ�ֱ�����Ͼ�����ʾ��
End Sub
