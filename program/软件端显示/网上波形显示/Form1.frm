VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7185
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6750
   LinkTopic       =   "Form1"
   ScaleHeight     =   7185
   ScaleWidth      =   6750
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture2 
      Height          =   3300
      Left            =   180
      Picture         =   "Form1.frx":0000
      ScaleHeight     =   3240
      ScaleWidth      =   5580
      TabIndex        =   2
      Top             =   3690
      Width           =   5640
   End
   Begin VB.VScrollBar VScroll1 
      Height          =   3300
      LargeChange     =   50
      Left            =   5940
      SmallChange     =   20
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   90
      Width           =   285
   End
   Begin VB.PictureBox Picture1 
      Height          =   3300
      Left            =   180
      ScaleHeight     =   3240
      ScaleWidth      =   5580
      TabIndex        =   0
      Top             =   90
      Width           =   5640
      Begin VB.Timer Timer1 
         Interval        =   1
         Left            =   4995
         Top             =   675
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'����ʾ��
'BY �໽е�����
'http://www.m5home.com

Private Sub Form_Load()
    With Picture1
        .AutoRedraw = True
        .ScaleMode = vbPixels
    End With
    With VScroll1
        .Max = Picture1.ScaleHeight
    End With
End Sub

Private Sub Timer1_Timer()
    ShowValue VScroll1.Value
End Sub

Private Sub ShowValue(ByVal lValue As Long)
    '��ʾ���߲�����
    Static LastP As Long, pX As Long        '��һ��������һ��ɨ����
    
    With Picture1
        Set .Picture = .Image
        
                    'ÿ�λ�ͼʱ,�ӵ�ͼ��ȡһ��ͼ������Ҫ���ĵ������.
        .PaintPicture Picture2.Picture, .ScaleWidth - 2, 0, 2, .ScaleHeight, pX, 0, 2, .ScaleHeight
        pX = pX + 1                             '����Ҫ���ͬ��
        If pX > .ScaleWidth Then pX = 0         '�����˿�Ⱦ�����
        
        .PaintPicture .Picture, 0, 0, .ScaleWidth - 1, .ScaleHeight, 1, 0, .ScaleWidth - 1, .ScaleHeight
        Picture1.Line (.ScaleWidth - 3, LastP)-(.ScaleWidth - 2, lValue), vbBlue
        LastP = lValue
    End With
End Sub

Private Sub VScroll1_Change()
'    Call Timer1_Timer
End Sub

Private Sub VScroll1_Scroll()
'    Call Timer1_Timer
End Sub
