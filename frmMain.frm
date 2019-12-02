VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmMain 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Maintenance Tunnels of Dooooooooom!!!"
   ClientHeight    =   6300
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9615
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   420
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   641
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.ProgressBar pbrHealth 
      Height          =   150
      Left            =   900
      TabIndex        =   4
      Top             =   5550
      Width           =   3000
      _ExtentX        =   5292
      _ExtentY        =   265
      _Version        =   393216
      Appearance      =   0
      Scrolling       =   1
   End
   Begin VB.CommandButton cmdRun 
      Caption         =   "&Run"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1425
      TabIndex        =   1
      Top             =   4950
      Width           =   900
   End
   Begin VB.CommandButton cmdAttack 
      Caption         =   "&Attack"
      CausesValidation=   0   'False
      Default         =   -1  'True
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2475
      TabIndex        =   0
      Top             =   4950
      Width           =   900
   End
   Begin MSComctlLib.ProgressBar pbrMonster 
      Height          =   150
      Left            =   900
      TabIndex        =   3
      Top             =   4725
      Visible         =   0   'False
      Width           =   3000
      _ExtentX        =   5292
      _ExtentY        =   265
      _Version        =   393216
      Appearance      =   0
      Scrolling       =   1
   End
   Begin VB.Label lblScore 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   315
      Left            =   7125
      TabIndex        =   17
      Top             =   5250
      Width           =   1800
   End
   Begin VB.Label lblScoreCaption 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Score:"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   315
      Left            =   6300
      TabIndex        =   16
      Top             =   5250
      Width           =   825
   End
   Begin VB.Label lblInfo 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   240
      Index           =   1
      Left            =   4950
      TabIndex        =   15
      Top             =   4950
      Width           =   4500
   End
   Begin VB.Label lblLevelCaption 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Level"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   2250
      TabIndex        =   14
      Top             =   5700
      Width           =   675
   End
   Begin VB.Label lblExpCaption 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Experience"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   3075
      TabIndex        =   13
      Top             =   5700
      Width           =   825
   End
   Begin VB.Label lblLevel 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   2250
      TabIndex        =   12
      Top             =   5925
      Width           =   675
   End
   Begin VB.Label lblExp 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0/1000"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   3075
      TabIndex        =   11
      Top             =   5925
      Width           =   825
   End
   Begin VB.Label lblAgility 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   1575
      TabIndex        =   10
      Top             =   5925
      Width           =   675
   End
   Begin VB.Label lblAttack 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   900
      TabIndex        =   9
      Top             =   5925
      Width           =   675
   End
   Begin VB.Label lblAgilityCaption 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Agility"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   1575
      TabIndex        =   8
      Top             =   5700
      Width           =   675
   End
   Begin VB.Label lblAttackCaption 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Attack"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   900
      TabIndex        =   7
      Top             =   5700
      Width           =   675
   End
   Begin VB.Label lblInfo 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Press F1 for Help"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   240
      Index           =   0
      Left            =   4950
      TabIndex        =   6
      Top             =   4725
      Width           =   4500
   End
   Begin VB.Label lblHealth 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Player Health"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   900
      TabIndex        =   5
      Top             =   5325
      Width           =   3000
   End
   Begin VB.Shape shpBorder 
      BorderColor     =   &H00C00000&
      BorderWidth     =   5
      FillColor       =   &H00FF00FF&
      Height          =   4515
      Left            =   150
      Shape           =   4  'Rounded Rectangle
      Top             =   120
      Width           =   4515
   End
   Begin VB.Image imgMonster 
      Appearance      =   0  'Flat
      Height          =   2100
      Left            =   1350
      Top             =   2550
      Visible         =   0   'False
      Width           =   2100
   End
   Begin VB.Image imgExit3D 
      Appearance      =   0  'Flat
      Height          =   90
      Index           =   3
      Left            =   2355
      Top             =   2580
      Width           =   90
   End
   Begin VB.Image imgExit3D 
      Appearance      =   0  'Flat
      Height          =   150
      Index           =   2
      Left            =   2325
      Top             =   2775
      Width           =   150
   End
   Begin VB.Image imgExit3D 
      Appearance      =   0  'Flat
      Height          =   450
      Index           =   1
      Left            =   2175
      Top             =   3075
      Width           =   450
   End
   Begin VB.Image imgExit3D 
      Appearance      =   0  'Flat
      Height          =   900
      Index           =   0
      Left            =   1950
      Top             =   3675
      Width           =   900
   End
   Begin VB.Image imgPlayer 
      Appearance      =   0  'Flat
      Height          =   210
      Left            =   4965
      Top             =   165
      Width           =   210
   End
   Begin VB.Image img2DExit 
      Appearance      =   0  'Flat
      Height          =   210
      Left            =   9240
      Top             =   4440
      Width           =   210
   End
   Begin VB.Label lblDebug 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Debug Label"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   915
      Left            =   1650
      TabIndex        =   2
      Top             =   225
      Visible         =   0   'False
      Width           =   1500
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   817
      X1              =   600
      X2              =   600
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   819
      X1              =   630
      X2              =   630
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   839
      X1              =   615
      X2              =   630
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   838
      X1              =   600
      X2              =   615
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   818
      X1              =   615
      X2              =   615
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   837
      X1              =   585
      X2              =   600
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   816
      X1              =   585
      X2              =   585
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   836
      X1              =   570
      X2              =   585
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   835
      X1              =   555
      X2              =   570
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   814
      X1              =   555
      X2              =   555
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   815
      X1              =   570
      X2              =   570
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   834
      X1              =   540
      X2              =   555
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   813
      X1              =   540
      X2              =   540
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   833
      X1              =   525
      X2              =   540
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   832
      X1              =   510
      X2              =   525
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   811
      X1              =   510
      X2              =   510
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   812
      X1              =   525
      X2              =   525
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   805
      X1              =   420
      X2              =   420
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   831
      X1              =   495
      X2              =   510
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   810
      X1              =   495
      X2              =   495
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   830
      X1              =   480
      X2              =   495
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   829
      X1              =   465
      X2              =   480
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   808
      X1              =   465
      X2              =   465
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   809
      X1              =   480
      X2              =   480
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   828
      X1              =   450
      X2              =   465
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   807
      X1              =   450
      X2              =   450
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   827
      X1              =   435
      X2              =   450
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   826
      X1              =   420
      X2              =   435
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   806
      X1              =   435
      X2              =   435
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   825
      X1              =   405
      X2              =   420
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   804
      X1              =   405
      X2              =   405
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   824
      X1              =   390
      X2              =   405
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   823
      X1              =   375
      X2              =   390
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   802
      X1              =   375
      X2              =   375
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   803
      X1              =   390
      X2              =   390
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   822
      X1              =   360
      X2              =   375
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   801
      X1              =   360
      X2              =   360
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   821
      X1              =   345
      X2              =   360
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   820
      X1              =   330
      X2              =   345
      Y1              =   310
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   799
      X1              =   330
      X2              =   330
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   800
      X1              =   345
      X2              =   345
      Y1              =   295
      Y2              =   310
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   776
      X1              =   600
      X2              =   600
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   778
      X1              =   630
      X2              =   630
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   798
      X1              =   615
      X2              =   630
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   797
      X1              =   600
      X2              =   615
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   777
      X1              =   615
      X2              =   615
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   796
      X1              =   585
      X2              =   600
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   775
      X1              =   585
      X2              =   585
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   795
      X1              =   570
      X2              =   585
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   794
      X1              =   555
      X2              =   570
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   773
      X1              =   555
      X2              =   555
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   774
      X1              =   570
      X2              =   570
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   793
      X1              =   540
      X2              =   555
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   772
      X1              =   540
      X2              =   540
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   792
      X1              =   525
      X2              =   540
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   791
      X1              =   510
      X2              =   525
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   770
      X1              =   510
      X2              =   510
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   771
      X1              =   525
      X2              =   525
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   764
      X1              =   420
      X2              =   420
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   790
      X1              =   495
      X2              =   510
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   769
      X1              =   495
      X2              =   495
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   789
      X1              =   480
      X2              =   495
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   788
      X1              =   465
      X2              =   480
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   767
      X1              =   465
      X2              =   465
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   768
      X1              =   480
      X2              =   480
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   787
      X1              =   450
      X2              =   465
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   766
      X1              =   450
      X2              =   450
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   786
      X1              =   435
      X2              =   450
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   785
      X1              =   420
      X2              =   435
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   765
      X1              =   435
      X2              =   435
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   784
      X1              =   405
      X2              =   420
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   763
      X1              =   405
      X2              =   405
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   783
      X1              =   390
      X2              =   405
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   782
      X1              =   375
      X2              =   390
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   761
      X1              =   375
      X2              =   375
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   762
      X1              =   390
      X2              =   390
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   781
      X1              =   360
      X2              =   375
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   760
      X1              =   360
      X2              =   360
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   780
      X1              =   345
      X2              =   360
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   779
      X1              =   330
      X2              =   345
      Y1              =   295
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   758
      X1              =   330
      X2              =   330
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   759
      X1              =   345
      X2              =   345
      Y1              =   280
      Y2              =   295
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   735
      X1              =   600
      X2              =   600
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   737
      X1              =   630
      X2              =   630
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   757
      X1              =   615
      X2              =   630
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   756
      X1              =   600
      X2              =   615
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   736
      X1              =   615
      X2              =   615
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   755
      X1              =   585
      X2              =   600
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   734
      X1              =   585
      X2              =   585
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   754
      X1              =   570
      X2              =   585
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   753
      X1              =   555
      X2              =   570
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   732
      X1              =   555
      X2              =   555
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   733
      X1              =   570
      X2              =   570
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   752
      X1              =   540
      X2              =   555
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   731
      X1              =   540
      X2              =   540
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   751
      X1              =   525
      X2              =   540
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   750
      X1              =   510
      X2              =   525
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   729
      X1              =   510
      X2              =   510
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   730
      X1              =   525
      X2              =   525
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   723
      X1              =   420
      X2              =   420
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   749
      X1              =   495
      X2              =   510
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   728
      X1              =   495
      X2              =   495
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   748
      X1              =   480
      X2              =   495
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   747
      X1              =   465
      X2              =   480
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   726
      X1              =   465
      X2              =   465
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   727
      X1              =   480
      X2              =   480
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   746
      X1              =   450
      X2              =   465
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   725
      X1              =   450
      X2              =   450
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   745
      X1              =   435
      X2              =   450
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   744
      X1              =   420
      X2              =   435
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   724
      X1              =   435
      X2              =   435
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   743
      X1              =   405
      X2              =   420
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   722
      X1              =   405
      X2              =   405
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   742
      X1              =   390
      X2              =   405
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   741
      X1              =   375
      X2              =   390
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   720
      X1              =   375
      X2              =   375
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   721
      X1              =   390
      X2              =   390
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   740
      X1              =   360
      X2              =   375
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   719
      X1              =   360
      X2              =   360
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   739
      X1              =   345
      X2              =   360
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   738
      X1              =   330
      X2              =   345
      Y1              =   280
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   717
      X1              =   330
      X2              =   330
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   718
      X1              =   345
      X2              =   345
      Y1              =   265
      Y2              =   280
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   694
      X1              =   600
      X2              =   600
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   696
      X1              =   630
      X2              =   630
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   716
      X1              =   615
      X2              =   630
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   715
      X1              =   600
      X2              =   615
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   695
      X1              =   615
      X2              =   615
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   714
      X1              =   585
      X2              =   600
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   693
      X1              =   585
      X2              =   585
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   713
      X1              =   570
      X2              =   585
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   712
      X1              =   555
      X2              =   570
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   691
      X1              =   555
      X2              =   555
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   692
      X1              =   570
      X2              =   570
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   711
      X1              =   540
      X2              =   555
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   690
      X1              =   540
      X2              =   540
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   710
      X1              =   525
      X2              =   540
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   709
      X1              =   510
      X2              =   525
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   688
      X1              =   510
      X2              =   510
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   689
      X1              =   525
      X2              =   525
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   682
      X1              =   420
      X2              =   420
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   708
      X1              =   495
      X2              =   510
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   687
      X1              =   495
      X2              =   495
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   707
      X1              =   480
      X2              =   495
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   706
      X1              =   465
      X2              =   480
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   685
      X1              =   465
      X2              =   465
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   686
      X1              =   480
      X2              =   480
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   705
      X1              =   450
      X2              =   465
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   684
      X1              =   450
      X2              =   450
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   704
      X1              =   435
      X2              =   450
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   703
      X1              =   420
      X2              =   435
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   683
      X1              =   435
      X2              =   435
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   702
      X1              =   405
      X2              =   420
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   681
      X1              =   405
      X2              =   405
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   701
      X1              =   390
      X2              =   405
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   700
      X1              =   375
      X2              =   390
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   679
      X1              =   375
      X2              =   375
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   680
      X1              =   390
      X2              =   390
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   699
      X1              =   360
      X2              =   375
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   678
      X1              =   360
      X2              =   360
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   698
      X1              =   345
      X2              =   360
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   697
      X1              =   330
      X2              =   345
      Y1              =   265
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   676
      X1              =   330
      X2              =   330
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   677
      X1              =   345
      X2              =   345
      Y1              =   250
      Y2              =   265
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   653
      X1              =   600
      X2              =   600
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   655
      X1              =   630
      X2              =   630
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   675
      X1              =   615
      X2              =   630
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   674
      X1              =   600
      X2              =   615
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   654
      X1              =   615
      X2              =   615
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   673
      X1              =   585
      X2              =   600
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   652
      X1              =   585
      X2              =   585
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   672
      X1              =   570
      X2              =   585
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   671
      X1              =   555
      X2              =   570
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   650
      X1              =   555
      X2              =   555
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   651
      X1              =   570
      X2              =   570
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   670
      X1              =   540
      X2              =   555
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   649
      X1              =   540
      X2              =   540
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   669
      X1              =   525
      X2              =   540
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   668
      X1              =   510
      X2              =   525
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   647
      X1              =   510
      X2              =   510
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   648
      X1              =   525
      X2              =   525
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   641
      X1              =   420
      X2              =   420
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   667
      X1              =   495
      X2              =   510
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   646
      X1              =   495
      X2              =   495
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   666
      X1              =   480
      X2              =   495
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   665
      X1              =   465
      X2              =   480
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   644
      X1              =   465
      X2              =   465
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   645
      X1              =   480
      X2              =   480
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   664
      X1              =   450
      X2              =   465
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   643
      X1              =   450
      X2              =   450
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   663
      X1              =   435
      X2              =   450
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   662
      X1              =   420
      X2              =   435
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   642
      X1              =   435
      X2              =   435
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   661
      X1              =   405
      X2              =   420
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   640
      X1              =   405
      X2              =   405
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   660
      X1              =   390
      X2              =   405
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   659
      X1              =   375
      X2              =   390
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   638
      X1              =   375
      X2              =   375
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   639
      X1              =   390
      X2              =   390
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   658
      X1              =   360
      X2              =   375
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   637
      X1              =   360
      X2              =   360
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   657
      X1              =   345
      X2              =   360
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   656
      X1              =   330
      X2              =   345
      Y1              =   250
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   635
      X1              =   330
      X2              =   330
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   636
      X1              =   345
      X2              =   345
      Y1              =   235
      Y2              =   250
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   612
      X1              =   600
      X2              =   600
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   614
      X1              =   630
      X2              =   630
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   634
      X1              =   615
      X2              =   630
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   633
      X1              =   600
      X2              =   615
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   613
      X1              =   615
      X2              =   615
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   632
      X1              =   585
      X2              =   600
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   611
      X1              =   585
      X2              =   585
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   631
      X1              =   570
      X2              =   585
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   630
      X1              =   555
      X2              =   570
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   609
      X1              =   555
      X2              =   555
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   610
      X1              =   570
      X2              =   570
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   629
      X1              =   540
      X2              =   555
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   608
      X1              =   540
      X2              =   540
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   628
      X1              =   525
      X2              =   540
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   627
      X1              =   510
      X2              =   525
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   606
      X1              =   510
      X2              =   510
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   607
      X1              =   525
      X2              =   525
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   600
      X1              =   420
      X2              =   420
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   626
      X1              =   495
      X2              =   510
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   605
      X1              =   495
      X2              =   495
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   625
      X1              =   480
      X2              =   495
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   624
      X1              =   465
      X2              =   480
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   603
      X1              =   465
      X2              =   465
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   604
      X1              =   480
      X2              =   480
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   623
      X1              =   450
      X2              =   465
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   602
      X1              =   450
      X2              =   450
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   622
      X1              =   435
      X2              =   450
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   621
      X1              =   420
      X2              =   435
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   601
      X1              =   435
      X2              =   435
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   620
      X1              =   405
      X2              =   420
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   599
      X1              =   405
      X2              =   405
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   619
      X1              =   390
      X2              =   405
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   618
      X1              =   375
      X2              =   390
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   597
      X1              =   375
      X2              =   375
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   598
      X1              =   390
      X2              =   390
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   617
      X1              =   360
      X2              =   375
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   596
      X1              =   360
      X2              =   360
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   616
      X1              =   345
      X2              =   360
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   615
      X1              =   330
      X2              =   345
      Y1              =   235
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   594
      X1              =   330
      X2              =   330
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   595
      X1              =   345
      X2              =   345
      Y1              =   220
      Y2              =   235
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   571
      X1              =   600
      X2              =   600
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   573
      X1              =   630
      X2              =   630
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   593
      X1              =   615
      X2              =   630
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   592
      X1              =   600
      X2              =   615
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   572
      X1              =   615
      X2              =   615
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   591
      X1              =   585
      X2              =   600
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   570
      X1              =   585
      X2              =   585
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   590
      X1              =   570
      X2              =   585
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   589
      X1              =   555
      X2              =   570
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   568
      X1              =   555
      X2              =   555
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   569
      X1              =   570
      X2              =   570
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   588
      X1              =   540
      X2              =   555
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   567
      X1              =   540
      X2              =   540
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   587
      X1              =   525
      X2              =   540
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   586
      X1              =   510
      X2              =   525
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   565
      X1              =   510
      X2              =   510
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   566
      X1              =   525
      X2              =   525
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   559
      X1              =   420
      X2              =   420
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   585
      X1              =   495
      X2              =   510
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   564
      X1              =   495
      X2              =   495
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   584
      X1              =   480
      X2              =   495
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   583
      X1              =   465
      X2              =   480
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   562
      X1              =   465
      X2              =   465
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   563
      X1              =   480
      X2              =   480
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   582
      X1              =   450
      X2              =   465
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   561
      X1              =   450
      X2              =   450
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   581
      X1              =   435
      X2              =   450
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   580
      X1              =   420
      X2              =   435
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   560
      X1              =   435
      X2              =   435
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   579
      X1              =   405
      X2              =   420
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   558
      X1              =   405
      X2              =   405
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   578
      X1              =   390
      X2              =   405
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   577
      X1              =   375
      X2              =   390
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   556
      X1              =   375
      X2              =   375
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   557
      X1              =   390
      X2              =   390
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   576
      X1              =   360
      X2              =   375
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   555
      X1              =   360
      X2              =   360
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   575
      X1              =   345
      X2              =   360
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   574
      X1              =   330
      X2              =   345
      Y1              =   220
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   553
      X1              =   330
      X2              =   330
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   554
      X1              =   345
      X2              =   345
      Y1              =   205
      Y2              =   220
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   530
      X1              =   600
      X2              =   600
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   532
      X1              =   630
      X2              =   630
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   552
      X1              =   615
      X2              =   630
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   551
      X1              =   600
      X2              =   615
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   531
      X1              =   615
      X2              =   615
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   550
      X1              =   585
      X2              =   600
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   529
      X1              =   585
      X2              =   585
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   549
      X1              =   570
      X2              =   585
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   548
      X1              =   555
      X2              =   570
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   527
      X1              =   555
      X2              =   555
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   528
      X1              =   570
      X2              =   570
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   547
      X1              =   540
      X2              =   555
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   526
      X1              =   540
      X2              =   540
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   546
      X1              =   525
      X2              =   540
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   545
      X1              =   510
      X2              =   525
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   524
      X1              =   510
      X2              =   510
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   525
      X1              =   525
      X2              =   525
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   518
      X1              =   420
      X2              =   420
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   544
      X1              =   495
      X2              =   510
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   523
      X1              =   495
      X2              =   495
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   543
      X1              =   480
      X2              =   495
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   542
      X1              =   465
      X2              =   480
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   521
      X1              =   465
      X2              =   465
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   522
      X1              =   480
      X2              =   480
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   541
      X1              =   450
      X2              =   465
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   520
      X1              =   450
      X2              =   450
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   540
      X1              =   435
      X2              =   450
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   539
      X1              =   420
      X2              =   435
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   519
      X1              =   435
      X2              =   435
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   538
      X1              =   405
      X2              =   420
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   517
      X1              =   405
      X2              =   405
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   537
      X1              =   390
      X2              =   405
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   536
      X1              =   375
      X2              =   390
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   515
      X1              =   375
      X2              =   375
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   516
      X1              =   390
      X2              =   390
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   535
      X1              =   360
      X2              =   375
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   514
      X1              =   360
      X2              =   360
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   534
      X1              =   345
      X2              =   360
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   533
      X1              =   330
      X2              =   345
      Y1              =   205
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   512
      X1              =   330
      X2              =   330
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   513
      X1              =   345
      X2              =   345
      Y1              =   190
      Y2              =   205
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   489
      X1              =   600
      X2              =   600
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   491
      X1              =   630
      X2              =   630
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   511
      X1              =   615
      X2              =   630
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   510
      X1              =   600
      X2              =   615
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   490
      X1              =   615
      X2              =   615
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   509
      X1              =   585
      X2              =   600
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   488
      X1              =   585
      X2              =   585
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   508
      X1              =   570
      X2              =   585
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   507
      X1              =   555
      X2              =   570
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   486
      X1              =   555
      X2              =   555
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   487
      X1              =   570
      X2              =   570
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   506
      X1              =   540
      X2              =   555
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   485
      X1              =   540
      X2              =   540
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   505
      X1              =   525
      X2              =   540
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   504
      X1              =   510
      X2              =   525
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   483
      X1              =   510
      X2              =   510
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   484
      X1              =   525
      X2              =   525
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   477
      X1              =   420
      X2              =   420
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   503
      X1              =   495
      X2              =   510
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   482
      X1              =   495
      X2              =   495
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   502
      X1              =   480
      X2              =   495
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   501
      X1              =   465
      X2              =   480
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   480
      X1              =   465
      X2              =   465
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   481
      X1              =   480
      X2              =   480
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   500
      X1              =   450
      X2              =   465
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   479
      X1              =   450
      X2              =   450
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   499
      X1              =   435
      X2              =   450
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   498
      X1              =   420
      X2              =   435
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   478
      X1              =   435
      X2              =   435
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   497
      X1              =   405
      X2              =   420
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   476
      X1              =   405
      X2              =   405
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   496
      X1              =   390
      X2              =   405
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   495
      X1              =   375
      X2              =   390
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   474
      X1              =   375
      X2              =   375
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   475
      X1              =   390
      X2              =   390
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   494
      X1              =   360
      X2              =   375
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   473
      X1              =   360
      X2              =   360
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   493
      X1              =   345
      X2              =   360
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   492
      X1              =   330
      X2              =   345
      Y1              =   190
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   471
      X1              =   330
      X2              =   330
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   472
      X1              =   345
      X2              =   345
      Y1              =   175
      Y2              =   190
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   448
      X1              =   600
      X2              =   600
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   450
      X1              =   630
      X2              =   630
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   470
      X1              =   615
      X2              =   630
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   469
      X1              =   600
      X2              =   615
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   449
      X1              =   615
      X2              =   615
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   468
      X1              =   585
      X2              =   600
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   447
      X1              =   585
      X2              =   585
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   467
      X1              =   570
      X2              =   585
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   466
      X1              =   555
      X2              =   570
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   445
      X1              =   555
      X2              =   555
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   446
      X1              =   570
      X2              =   570
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   465
      X1              =   540
      X2              =   555
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   444
      X1              =   540
      X2              =   540
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   464
      X1              =   525
      X2              =   540
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   463
      X1              =   510
      X2              =   525
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   442
      X1              =   510
      X2              =   510
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   443
      X1              =   525
      X2              =   525
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   436
      X1              =   420
      X2              =   420
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   462
      X1              =   495
      X2              =   510
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   441
      X1              =   495
      X2              =   495
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   461
      X1              =   480
      X2              =   495
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   460
      X1              =   465
      X2              =   480
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   439
      X1              =   465
      X2              =   465
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   440
      X1              =   480
      X2              =   480
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   459
      X1              =   450
      X2              =   465
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   438
      X1              =   450
      X2              =   450
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   458
      X1              =   435
      X2              =   450
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   457
      X1              =   420
      X2              =   435
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   437
      X1              =   435
      X2              =   435
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   456
      X1              =   405
      X2              =   420
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   435
      X1              =   405
      X2              =   405
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   455
      X1              =   390
      X2              =   405
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   454
      X1              =   375
      X2              =   390
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   433
      X1              =   375
      X2              =   375
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   434
      X1              =   390
      X2              =   390
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   453
      X1              =   360
      X2              =   375
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   432
      X1              =   360
      X2              =   360
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   452
      X1              =   345
      X2              =   360
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   451
      X1              =   330
      X2              =   345
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   430
      X1              =   330
      X2              =   330
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   431
      X1              =   345
      X2              =   345
      Y1              =   160
      Y2              =   175
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   407
      X1              =   600
      X2              =   600
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   409
      X1              =   630
      X2              =   630
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   429
      X1              =   615
      X2              =   630
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   428
      X1              =   600
      X2              =   615
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   408
      X1              =   615
      X2              =   615
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   427
      X1              =   585
      X2              =   600
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   406
      X1              =   585
      X2              =   585
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   426
      X1              =   570
      X2              =   585
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   425
      X1              =   555
      X2              =   570
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   404
      X1              =   555
      X2              =   555
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   405
      X1              =   570
      X2              =   570
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   424
      X1              =   540
      X2              =   555
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   403
      X1              =   540
      X2              =   540
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   423
      X1              =   525
      X2              =   540
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   422
      X1              =   510
      X2              =   525
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   401
      X1              =   510
      X2              =   510
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   402
      X1              =   525
      X2              =   525
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   395
      X1              =   420
      X2              =   420
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   421
      X1              =   495
      X2              =   510
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   400
      X1              =   495
      X2              =   495
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   420
      X1              =   480
      X2              =   495
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   419
      X1              =   465
      X2              =   480
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   398
      X1              =   465
      X2              =   465
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   399
      X1              =   480
      X2              =   480
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   418
      X1              =   450
      X2              =   465
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   397
      X1              =   450
      X2              =   450
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   417
      X1              =   435
      X2              =   450
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   416
      X1              =   420
      X2              =   435
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   396
      X1              =   435
      X2              =   435
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   415
      X1              =   405
      X2              =   420
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   394
      X1              =   405
      X2              =   405
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   414
      X1              =   390
      X2              =   405
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   413
      X1              =   375
      X2              =   390
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   392
      X1              =   375
      X2              =   375
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   393
      X1              =   390
      X2              =   390
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   412
      X1              =   360
      X2              =   375
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   391
      X1              =   360
      X2              =   360
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   411
      X1              =   345
      X2              =   360
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   410
      X1              =   330
      X2              =   345
      Y1              =   160
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   389
      X1              =   330
      X2              =   330
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   390
      X1              =   345
      X2              =   345
      Y1              =   145
      Y2              =   160
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   366
      X1              =   600
      X2              =   600
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   368
      X1              =   630
      X2              =   630
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   388
      X1              =   615
      X2              =   630
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   387
      X1              =   600
      X2              =   615
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   367
      X1              =   615
      X2              =   615
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   386
      X1              =   585
      X2              =   600
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   365
      X1              =   585
      X2              =   585
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   385
      X1              =   570
      X2              =   585
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   384
      X1              =   555
      X2              =   570
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   363
      X1              =   555
      X2              =   555
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   364
      X1              =   570
      X2              =   570
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   383
      X1              =   540
      X2              =   555
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   362
      X1              =   540
      X2              =   540
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   382
      X1              =   525
      X2              =   540
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   381
      X1              =   510
      X2              =   525
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   360
      X1              =   510
      X2              =   510
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   361
      X1              =   525
      X2              =   525
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   354
      X1              =   420
      X2              =   420
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   380
      X1              =   495
      X2              =   510
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   359
      X1              =   495
      X2              =   495
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   379
      X1              =   480
      X2              =   495
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   378
      X1              =   465
      X2              =   480
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   357
      X1              =   465
      X2              =   465
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   358
      X1              =   480
      X2              =   480
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   377
      X1              =   450
      X2              =   465
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   356
      X1              =   450
      X2              =   450
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   376
      X1              =   435
      X2              =   450
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   375
      X1              =   420
      X2              =   435
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   355
      X1              =   435
      X2              =   435
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   374
      X1              =   405
      X2              =   420
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   353
      X1              =   405
      X2              =   405
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   373
      X1              =   390
      X2              =   405
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   372
      X1              =   375
      X2              =   390
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   351
      X1              =   375
      X2              =   375
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   352
      X1              =   390
      X2              =   390
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   371
      X1              =   360
      X2              =   375
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   350
      X1              =   360
      X2              =   360
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   370
      X1              =   345
      X2              =   360
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   369
      X1              =   330
      X2              =   345
      Y1              =   145
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   348
      X1              =   330
      X2              =   330
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   349
      X1              =   345
      X2              =   345
      Y1              =   130
      Y2              =   145
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   325
      X1              =   600
      X2              =   600
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   327
      X1              =   630
      X2              =   630
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   347
      X1              =   615
      X2              =   630
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   346
      X1              =   600
      X2              =   615
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   326
      X1              =   615
      X2              =   615
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   345
      X1              =   585
      X2              =   600
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   324
      X1              =   585
      X2              =   585
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   344
      X1              =   570
      X2              =   585
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   343
      X1              =   555
      X2              =   570
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   322
      X1              =   555
      X2              =   555
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   323
      X1              =   570
      X2              =   570
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   342
      X1              =   540
      X2              =   555
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   321
      X1              =   540
      X2              =   540
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   341
      X1              =   525
      X2              =   540
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   340
      X1              =   510
      X2              =   525
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   319
      X1              =   510
      X2              =   510
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   320
      X1              =   525
      X2              =   525
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   313
      X1              =   420
      X2              =   420
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   339
      X1              =   495
      X2              =   510
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   318
      X1              =   495
      X2              =   495
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   338
      X1              =   480
      X2              =   495
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   337
      X1              =   465
      X2              =   480
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   316
      X1              =   465
      X2              =   465
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   317
      X1              =   480
      X2              =   480
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   336
      X1              =   450
      X2              =   465
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   315
      X1              =   450
      X2              =   450
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   335
      X1              =   435
      X2              =   450
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   334
      X1              =   420
      X2              =   435
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   314
      X1              =   435
      X2              =   435
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   333
      X1              =   405
      X2              =   420
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   312
      X1              =   405
      X2              =   405
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   332
      X1              =   390
      X2              =   405
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   331
      X1              =   375
      X2              =   390
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   310
      X1              =   375
      X2              =   375
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   311
      X1              =   390
      X2              =   390
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   330
      X1              =   360
      X2              =   375
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   309
      X1              =   360
      X2              =   360
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   329
      X1              =   345
      X2              =   360
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   328
      X1              =   330
      X2              =   345
      Y1              =   130
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   307
      X1              =   330
      X2              =   330
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   308
      X1              =   345
      X2              =   345
      Y1              =   115
      Y2              =   130
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   284
      X1              =   600
      X2              =   600
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   286
      X1              =   630
      X2              =   630
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   306
      X1              =   615
      X2              =   630
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   305
      X1              =   600
      X2              =   615
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   285
      X1              =   615
      X2              =   615
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   304
      X1              =   585
      X2              =   600
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   283
      X1              =   585
      X2              =   585
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   303
      X1              =   570
      X2              =   585
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   302
      X1              =   555
      X2              =   570
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   281
      X1              =   555
      X2              =   555
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   282
      X1              =   570
      X2              =   570
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   301
      X1              =   540
      X2              =   555
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   280
      X1              =   540
      X2              =   540
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   300
      X1              =   525
      X2              =   540
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   299
      X1              =   510
      X2              =   525
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   278
      X1              =   510
      X2              =   510
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   279
      X1              =   525
      X2              =   525
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   272
      X1              =   420
      X2              =   420
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   298
      X1              =   495
      X2              =   510
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   277
      X1              =   495
      X2              =   495
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   297
      X1              =   480
      X2              =   495
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   296
      X1              =   465
      X2              =   480
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   275
      X1              =   465
      X2              =   465
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   276
      X1              =   480
      X2              =   480
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   295
      X1              =   450
      X2              =   465
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   274
      X1              =   450
      X2              =   450
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   294
      X1              =   435
      X2              =   450
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   293
      X1              =   420
      X2              =   435
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   273
      X1              =   435
      X2              =   435
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   292
      X1              =   405
      X2              =   420
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   271
      X1              =   405
      X2              =   405
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   291
      X1              =   390
      X2              =   405
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   290
      X1              =   375
      X2              =   390
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   269
      X1              =   375
      X2              =   375
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   270
      X1              =   390
      X2              =   390
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   289
      X1              =   360
      X2              =   375
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   268
      X1              =   360
      X2              =   360
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   288
      X1              =   345
      X2              =   360
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   287
      X1              =   330
      X2              =   345
      Y1              =   115
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   266
      X1              =   330
      X2              =   330
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   267
      X1              =   345
      X2              =   345
      Y1              =   100
      Y2              =   115
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   243
      X1              =   600
      X2              =   600
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   245
      X1              =   630
      X2              =   630
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   265
      X1              =   615
      X2              =   630
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   264
      X1              =   600
      X2              =   615
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   244
      X1              =   615
      X2              =   615
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   263
      X1              =   585
      X2              =   600
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   242
      X1              =   585
      X2              =   585
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   262
      X1              =   570
      X2              =   585
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   261
      X1              =   555
      X2              =   570
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   240
      X1              =   555
      X2              =   555
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   241
      X1              =   570
      X2              =   570
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   260
      X1              =   540
      X2              =   555
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   239
      X1              =   540
      X2              =   540
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   259
      X1              =   525
      X2              =   540
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   258
      X1              =   510
      X2              =   525
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   237
      X1              =   510
      X2              =   510
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   238
      X1              =   525
      X2              =   525
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   231
      X1              =   420
      X2              =   420
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   257
      X1              =   495
      X2              =   510
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   236
      X1              =   495
      X2              =   495
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   256
      X1              =   480
      X2              =   495
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   255
      X1              =   465
      X2              =   480
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   234
      X1              =   465
      X2              =   465
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   235
      X1              =   480
      X2              =   480
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   254
      X1              =   450
      X2              =   465
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   233
      X1              =   450
      X2              =   450
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   253
      X1              =   435
      X2              =   450
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   252
      X1              =   420
      X2              =   435
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   232
      X1              =   435
      X2              =   435
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   251
      X1              =   405
      X2              =   420
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   230
      X1              =   405
      X2              =   405
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   250
      X1              =   390
      X2              =   405
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   249
      X1              =   375
      X2              =   390
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   228
      X1              =   375
      X2              =   375
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   229
      X1              =   390
      X2              =   390
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   248
      X1              =   360
      X2              =   375
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   227
      X1              =   360
      X2              =   360
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   247
      X1              =   345
      X2              =   360
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   246
      X1              =   330
      X2              =   345
      Y1              =   100
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   225
      X1              =   330
      X2              =   330
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   226
      X1              =   345
      X2              =   345
      Y1              =   85
      Y2              =   100
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   202
      X1              =   600
      X2              =   600
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   204
      X1              =   630
      X2              =   630
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   224
      X1              =   615
      X2              =   630
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   223
      X1              =   600
      X2              =   615
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   203
      X1              =   615
      X2              =   615
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   222
      X1              =   585
      X2              =   600
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   201
      X1              =   585
      X2              =   585
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   221
      X1              =   570
      X2              =   585
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   220
      X1              =   555
      X2              =   570
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   199
      X1              =   555
      X2              =   555
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   200
      X1              =   570
      X2              =   570
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   219
      X1              =   540
      X2              =   555
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   198
      X1              =   540
      X2              =   540
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   218
      X1              =   525
      X2              =   540
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   217
      X1              =   510
      X2              =   525
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   196
      X1              =   510
      X2              =   510
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   197
      X1              =   525
      X2              =   525
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   190
      X1              =   420
      X2              =   420
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   216
      X1              =   495
      X2              =   510
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   195
      X1              =   495
      X2              =   495
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   215
      X1              =   480
      X2              =   495
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   214
      X1              =   465
      X2              =   480
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   193
      X1              =   465
      X2              =   465
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   194
      X1              =   480
      X2              =   480
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   213
      X1              =   450
      X2              =   465
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   192
      X1              =   450
      X2              =   450
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   212
      X1              =   435
      X2              =   450
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   211
      X1              =   420
      X2              =   435
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   191
      X1              =   435
      X2              =   435
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   210
      X1              =   405
      X2              =   420
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   189
      X1              =   405
      X2              =   405
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   209
      X1              =   390
      X2              =   405
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   208
      X1              =   375
      X2              =   390
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   187
      X1              =   375
      X2              =   375
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   188
      X1              =   390
      X2              =   390
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   207
      X1              =   360
      X2              =   375
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   186
      X1              =   360
      X2              =   360
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   206
      X1              =   345
      X2              =   360
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   205
      X1              =   330
      X2              =   345
      Y1              =   85
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   184
      X1              =   330
      X2              =   330
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   185
      X1              =   345
      X2              =   345
      Y1              =   70
      Y2              =   85
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   161
      X1              =   600
      X2              =   600
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   163
      X1              =   630
      X2              =   630
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   183
      X1              =   615
      X2              =   630
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   182
      X1              =   600
      X2              =   615
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   162
      X1              =   615
      X2              =   615
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   181
      X1              =   585
      X2              =   600
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   160
      X1              =   585
      X2              =   585
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   180
      X1              =   570
      X2              =   585
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   179
      X1              =   555
      X2              =   570
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   158
      X1              =   555
      X2              =   555
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   159
      X1              =   570
      X2              =   570
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   178
      X1              =   540
      X2              =   555
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   157
      X1              =   540
      X2              =   540
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   177
      X1              =   525
      X2              =   540
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   176
      X1              =   510
      X2              =   525
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   155
      X1              =   510
      X2              =   510
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   156
      X1              =   525
      X2              =   525
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   149
      X1              =   420
      X2              =   420
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   175
      X1              =   495
      X2              =   510
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   154
      X1              =   495
      X2              =   495
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   174
      X1              =   480
      X2              =   495
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   173
      X1              =   465
      X2              =   480
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   152
      X1              =   465
      X2              =   465
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   153
      X1              =   480
      X2              =   480
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   172
      X1              =   450
      X2              =   465
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   151
      X1              =   450
      X2              =   450
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   171
      X1              =   435
      X2              =   450
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   170
      X1              =   420
      X2              =   435
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   150
      X1              =   435
      X2              =   435
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   169
      X1              =   405
      X2              =   420
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   148
      X1              =   405
      X2              =   405
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   168
      X1              =   390
      X2              =   405
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   167
      X1              =   375
      X2              =   390
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   146
      X1              =   375
      X2              =   375
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   147
      X1              =   390
      X2              =   390
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   166
      X1              =   360
      X2              =   375
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   145
      X1              =   360
      X2              =   360
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   165
      X1              =   345
      X2              =   360
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   164
      X1              =   330
      X2              =   345
      Y1              =   70
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   143
      X1              =   330
      X2              =   330
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   144
      X1              =   345
      X2              =   345
      Y1              =   55
      Y2              =   70
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   120
      X1              =   600
      X2              =   600
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   122
      X1              =   630
      X2              =   630
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   142
      X1              =   615
      X2              =   630
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   141
      X1              =   600
      X2              =   615
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   121
      X1              =   615
      X2              =   615
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   140
      X1              =   585
      X2              =   600
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   119
      X1              =   585
      X2              =   585
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   139
      X1              =   570
      X2              =   585
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   138
      X1              =   555
      X2              =   570
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   117
      X1              =   555
      X2              =   555
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   118
      X1              =   570
      X2              =   570
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   137
      X1              =   540
      X2              =   555
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   116
      X1              =   540
      X2              =   540
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   136
      X1              =   525
      X2              =   540
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   135
      X1              =   510
      X2              =   525
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   114
      X1              =   510
      X2              =   510
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   115
      X1              =   525
      X2              =   525
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   108
      X1              =   420
      X2              =   420
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   134
      X1              =   495
      X2              =   510
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   113
      X1              =   495
      X2              =   495
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   133
      X1              =   480
      X2              =   495
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   132
      X1              =   465
      X2              =   480
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   111
      X1              =   465
      X2              =   465
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   112
      X1              =   480
      X2              =   480
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   131
      X1              =   450
      X2              =   465
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   110
      X1              =   450
      X2              =   450
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   130
      X1              =   435
      X2              =   450
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   129
      X1              =   420
      X2              =   435
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   109
      X1              =   435
      X2              =   435
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   128
      X1              =   405
      X2              =   420
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   107
      X1              =   405
      X2              =   405
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   127
      X1              =   390
      X2              =   405
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   126
      X1              =   375
      X2              =   390
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   105
      X1              =   375
      X2              =   375
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   106
      X1              =   390
      X2              =   390
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   125
      X1              =   360
      X2              =   375
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   104
      X1              =   360
      X2              =   360
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   124
      X1              =   345
      X2              =   360
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   123
      X1              =   330
      X2              =   345
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   102
      X1              =   330
      X2              =   330
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   103
      X1              =   345
      X2              =   345
      Y1              =   40
      Y2              =   55
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   79
      X1              =   600
      X2              =   600
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   81
      X1              =   630
      X2              =   630
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   101
      X1              =   615
      X2              =   630
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   100
      X1              =   600
      X2              =   615
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   80
      X1              =   615
      X2              =   615
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   99
      X1              =   585
      X2              =   600
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   78
      X1              =   585
      X2              =   585
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   98
      X1              =   570
      X2              =   585
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   97
      X1              =   555
      X2              =   570
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   76
      X1              =   555
      X2              =   555
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   77
      X1              =   570
      X2              =   570
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   96
      X1              =   540
      X2              =   555
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   75
      X1              =   540
      X2              =   540
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   95
      X1              =   525
      X2              =   540
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   94
      X1              =   510
      X2              =   525
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   73
      X1              =   510
      X2              =   510
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   74
      X1              =   525
      X2              =   525
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   67
      X1              =   420
      X2              =   420
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   93
      X1              =   495
      X2              =   510
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   72
      X1              =   495
      X2              =   495
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   92
      X1              =   480
      X2              =   495
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   91
      X1              =   465
      X2              =   480
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   70
      X1              =   465
      X2              =   465
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   71
      X1              =   480
      X2              =   480
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   90
      X1              =   450
      X2              =   465
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   69
      X1              =   450
      X2              =   450
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   89
      X1              =   435
      X2              =   450
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   88
      X1              =   420
      X2              =   435
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   68
      X1              =   435
      X2              =   435
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   87
      X1              =   405
      X2              =   420
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   66
      X1              =   405
      X2              =   405
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   86
      X1              =   390
      X2              =   405
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   85
      X1              =   375
      X2              =   390
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   64
      X1              =   375
      X2              =   375
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   65
      X1              =   390
      X2              =   390
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   84
      X1              =   360
      X2              =   375
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   63
      X1              =   360
      X2              =   360
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   83
      X1              =   345
      X2              =   360
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   82
      X1              =   330
      X2              =   345
      Y1              =   40
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   61
      X1              =   330
      X2              =   330
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   62
      X1              =   345
      X2              =   345
      Y1              =   25
      Y2              =   40
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   38
      X1              =   600
      X2              =   600
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   40
      X1              =   630
      X2              =   630
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   60
      X1              =   615
      X2              =   630
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   19
      X1              =   615
      X2              =   630
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   59
      X1              =   600
      X2              =   615
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   18
      X1              =   600
      X2              =   615
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   39
      X1              =   615
      X2              =   615
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   58
      X1              =   585
      X2              =   600
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   17
      X1              =   585
      X2              =   600
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   37
      X1              =   585
      X2              =   585
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   57
      X1              =   570
      X2              =   585
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   16
      X1              =   570
      X2              =   585
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   56
      X1              =   555
      X2              =   570
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   35
      X1              =   555
      X2              =   555
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   15
      X1              =   555
      X2              =   570
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   36
      X1              =   570
      X2              =   570
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   55
      X1              =   540
      X2              =   555
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   14
      X1              =   540
      X2              =   555
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   34
      X1              =   540
      X2              =   540
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   54
      X1              =   525
      X2              =   540
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   13
      X1              =   525
      X2              =   540
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   53
      X1              =   510
      X2              =   525
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   32
      X1              =   510
      X2              =   510
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   12
      X1              =   510
      X2              =   525
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   33
      X1              =   525
      X2              =   525
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   26
      X1              =   420
      X2              =   420
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   52
      X1              =   495
      X2              =   510
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   11
      X1              =   495
      X2              =   510
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   31
      X1              =   495
      X2              =   495
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   51
      X1              =   480
      X2              =   495
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   10
      X1              =   480
      X2              =   495
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   50
      X1              =   465
      X2              =   480
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   29
      X1              =   465
      X2              =   465
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   9
      X1              =   465
      X2              =   480
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   30
      X1              =   480
      X2              =   480
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   49
      X1              =   450
      X2              =   465
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   8
      X1              =   450
      X2              =   465
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   28
      X1              =   450
      X2              =   450
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   48
      X1              =   435
      X2              =   450
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   7
      X1              =   435
      X2              =   450
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   47
      X1              =   420
      X2              =   435
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   6
      X1              =   420
      X2              =   435
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   27
      X1              =   435
      X2              =   435
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   46
      X1              =   405
      X2              =   420
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   5
      X1              =   405
      X2              =   420
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   25
      X1              =   405
      X2              =   405
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   45
      X1              =   390
      X2              =   405
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   4
      X1              =   390
      X2              =   405
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   44
      X1              =   375
      X2              =   390
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   23
      X1              =   375
      X2              =   375
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   3
      X1              =   375
      X2              =   390
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   24
      X1              =   390
      X2              =   390
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   43
      X1              =   360
      X2              =   375
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   2
      X1              =   360
      X2              =   375
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   22
      X1              =   360
      X2              =   360
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   42
      X1              =   345
      X2              =   360
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   1
      X1              =   345
      X2              =   360
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   41
      X1              =   330
      X2              =   345
      Y1              =   25
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   20
      X1              =   330
      X2              =   330
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   0
      X1              =   330
      X2              =   345
      Y1              =   10
      Y2              =   10
   End
   Begin VB.Line linMaze 
      BorderColor     =   &H0000FF00&
      Index           =   21
      X1              =   345
      X2              =   345
      Y1              =   10
      Y2              =   25
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   70
      X1              =   300
      X2              =   310
      Y1              =   173
      Y2              =   174
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   69
      X1              =   280
      X2              =   300
      Y1              =   172
      Y2              =   173
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   68
      X1              =   260
      X2              =   280
      Y1              =   171
      Y2              =   172
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   67
      X1              =   250
      X2              =   260
      Y1              =   170
      Y2              =   171
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   70
      X1              =   310
      X2              =   300
      Y1              =   146
      Y2              =   147
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   69
      X1              =   300
      X2              =   280
      Y1              =   147
      Y2              =   148
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   68
      X1              =   280
      X2              =   260
      Y1              =   148
      Y2              =   149
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   67
      X1              =   250
      X2              =   260
      Y1              =   150
      Y2              =   149
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   41
      X1              =   20
      X2              =   10
      Y1              =   147
      Y2              =   146
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   42
      X1              =   20
      X2              =   40
      Y1              =   147
      Y2              =   148
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   43
      X1              =   60
      X2              =   40
      Y1              =   149
      Y2              =   148
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   44
      X1              =   70
      X2              =   60
      Y1              =   150
      Y2              =   149
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   41
      X1              =   20
      X2              =   10
      Y1              =   173
      Y2              =   174
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   42
      X1              =   40
      X2              =   20
      Y1              =   172
      Y2              =   173
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   43
      X1              =   60
      X2              =   40
      Y1              =   171
      Y2              =   172
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   44
      X1              =   70
      X2              =   60
      Y1              =   170
      Y2              =   171
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   76
      X1              =   70
      X2              =   60
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   45
      X1              =   20
      X2              =   10
      Y1              =   180
      Y2              =   181
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   46
      X1              =   40
      X2              =   20
      Y1              =   177
      Y2              =   180
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   47
      X1              =   60
      X2              =   40
      Y1              =   174
      Y2              =   177
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   48
      X1              =   80
      X2              =   60
      Y1              =   171
      Y2              =   174
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   49
      X1              =   90
      X2              =   80
      Y1              =   170
      Y2              =   171
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   66
      X1              =   300
      X2              =   310
      Y1              =   180
      Y2              =   181
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   65
      X1              =   280
      X2              =   300
      Y1              =   177
      Y2              =   180
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   64
      X1              =   260
      X2              =   280
      Y1              =   174
      Y2              =   177
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   63
      X1              =   240
      X2              =   260
      Y1              =   171
      Y2              =   174
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   62
      X1              =   230
      X2              =   240
      Y1              =   170
      Y2              =   171
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   45
      X1              =   10
      X2              =   20
      Y1              =   142
      Y2              =   143
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   46
      X1              =   40
      X2              =   20
      Y1              =   145
      Y2              =   143
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   47
      X1              =   60
      X2              =   40
      Y1              =   147
      Y2              =   145
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   48
      X1              =   80
      X2              =   60
      Y1              =   149
      Y2              =   147
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   49
      X1              =   90
      X2              =   80
      Y1              =   150
      Y2              =   149
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   66
      X1              =   300
      X2              =   310
      Y1              =   143
      Y2              =   142
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   65
      X1              =   280
      X2              =   300
      Y1              =   145
      Y2              =   143
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   64
      X1              =   260
      X2              =   280
      Y1              =   147
      Y2              =   145
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   63
      X1              =   240
      X2              =   260
      Y1              =   149
      Y2              =   147
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   62
      X1              =   230
      X2              =   240
      Y1              =   150
      Y2              =   149
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   3
      X1              =   80
      X2              =   240
      Y1              =   240
      Y2              =   240
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   3
      X1              =   80
      X2              =   240
      Y1              =   80
      Y2              =   80
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   4
      X1              =   240
      X2              =   310
      Y1              =   80
      Y2              =   80
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   4
      X1              =   240
      X2              =   310
      Y1              =   240
      Y2              =   240
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   2
      X1              =   80
      X2              =   10
      Y1              =   240
      Y2              =   240
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   2
      X1              =   80
      X2              =   10
      Y1              =   80
      Y2              =   80
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   0
      X1              =   22
      X2              =   80
      Y1              =   22
      Y2              =   80
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   1
      X1              =   298
      X2              =   240
      Y1              =   22
      Y2              =   80
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   1
      X1              =   240
      X2              =   298
      Y1              =   240
      Y2              =   298
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   0
      X1              =   22
      X2              =   80
      Y1              =   298
      Y2              =   240
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   16
      X1              =   10
      X2              =   40
      Y1              =   130
      Y2              =   136
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   25
      X1              =   280
      X2              =   310
      Y1              =   136
      Y2              =   130
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   24
      X1              =   260
      X2              =   280
      Y1              =   140
      Y2              =   136
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   17
      X1              =   40
      X2              =   60
      Y1              =   136
      Y2              =   140
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   50
      X1              =   60
      X2              =   80
      Y1              =   140
      Y2              =   144
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   51
      X1              =   80
      X2              =   100
      Y1              =   144
      Y2              =   148
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   52
      X1              =   110
      X2              =   100
      Y1              =   150
      Y2              =   148
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   61
      X1              =   240
      X2              =   260
      Y1              =   144
      Y2              =   140
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   60
      X1              =   220
      X2              =   240
      Y1              =   148
      Y2              =   144
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   59
      X1              =   210
      X2              =   220
      Y1              =   150
      Y2              =   148
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   16
      X1              =   10
      X2              =   40
      Y1              =   190
      Y2              =   184
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   25
      X1              =   280
      X2              =   310
      Y1              =   184
      Y2              =   190
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   24
      X1              =   260
      X2              =   280
      Y1              =   180
      Y2              =   184
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   17
      X1              =   60
      X2              =   40
      Y1              =   180
      Y2              =   184
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   50
      X1              =   60
      X2              =   80
      Y1              =   180
      Y2              =   176
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   51
      X1              =   80
      X2              =   100
      Y1              =   176
      Y2              =   172
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   52
      X1              =   110
      X2              =   100
      Y1              =   170
      Y2              =   172
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   61
      X1              =   240
      X2              =   260
      Y1              =   176
      Y2              =   180
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   60
      X1              =   220
      X2              =   240
      Y1              =   172
      Y2              =   176
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   59
      X1              =   210
      X2              =   220
      Y1              =   170
      Y2              =   172
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   5
      X1              =   40
      X2              =   10
      Y1              =   120
      Y2              =   110
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   8
      X1              =   310
      X2              =   280
      Y1              =   110
      Y2              =   120
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   5
      X1              =   40
      X2              =   10
      Y1              =   200
      Y2              =   210
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   8
      X1              =   280
      X2              =   310
      Y1              =   200
      Y2              =   210
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   71
      X1              =   20
      X2              =   10
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   71
      X1              =   20
      X2              =   10
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   99
      X1              =   310
      X2              =   300
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   99
      X1              =   310
      X2              =   300
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   98
      X1              =   300
      X2              =   290
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   98
      X1              =   300
      X2              =   290
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   72
      X1              =   30
      X2              =   20
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   72
      X1              =   30
      X2              =   20
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   15
      X1              =   280
      X2              =   310
      Y1              =   200
      Y2              =   200
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   15
      X1              =   280
      X2              =   310
      Y1              =   120
      Y2              =   120
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   9
      X1              =   10
      X2              =   40
      Y1              =   200
      Y2              =   200
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   9
      X1              =   10
      X2              =   40
      Y1              =   120
      Y2              =   120
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   26
      X1              =   20
      X2              =   10
      Y1              =   140
      Y2              =   140
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   26
      X1              =   20
      X2              =   10
      Y1              =   180
      Y2              =   180
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   40
      X1              =   310
      X2              =   300
      Y1              =   180
      Y2              =   180
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   40
      X1              =   310
      X2              =   300
      Y1              =   140
      Y2              =   140
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   13
      X1              =   300
      X2              =   300
      Y1              =   140
      Y2              =   180
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   39
      X1              =   300
      X2              =   280
      Y1              =   180
      Y2              =   180
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   39
      X1              =   300
      X2              =   280
      Y1              =   140
      Y2              =   140
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   27
      X1              =   40
      X2              =   20
      Y1              =   180
      Y2              =   180
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   27
      X1              =   40
      X2              =   20
      Y1              =   140
      Y2              =   140
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   5
      X1              =   280
      X2              =   280
      Y1              =   120
      Y2              =   200
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   2
      X1              =   40
      X2              =   40
      Y1              =   120
      Y2              =   200
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   6
      X1              =   20
      X2              =   20
      Y1              =   140
      Y2              =   180
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   97
      X1              =   290
      X2              =   280
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   97
      X1              =   290
      X2              =   280
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   73
      X1              =   40
      X2              =   30
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   73
      X1              =   40
      X2              =   30
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   27
      X1              =   290
      X2              =   290
      Y1              =   150
      Y2              =   170
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   14
      X1              =   30
      X2              =   30
      Y1              =   150
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   53
      X1              =   120
      X2              =   100
      Y1              =   147
      Y2              =   140
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   58
      X1              =   200
      X2              =   220
      Y1              =   147
      Y2              =   140
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   54
      X1              =   120
      X2              =   130
      Y1              =   173
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   54
      X1              =   130
      X2              =   120
      Y1              =   150
      Y2              =   147
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   18
      X1              =   40
      X2              =   80
      Y1              =   120
      Y2              =   133
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   53
      X1              =   100
      X2              =   120
      Y1              =   180
      Y2              =   173
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   57
      X1              =   200
      X2              =   190
      Y1              =   147
      Y2              =   150
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   58
      X1              =   200
      X2              =   220
      Y1              =   173
      Y2              =   180
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   57
      X1              =   190
      X2              =   200
      Y1              =   170
      Y2              =   173
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   96
      X1              =   270
      X2              =   280
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   96
      X1              =   270
      X2              =   280
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   74
      X1              =   50
      X2              =   40
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   74
      X1              =   50
      X2              =   40
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   95
      X1              =   260
      X2              =   270
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   95
      X1              =   260
      X2              =   270
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   75
      X1              =   60
      X2              =   50
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   75
      X1              =   60
      X2              =   50
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   26
      X1              =   270
      X2              =   270
      Y1              =   150
      Y2              =   170
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   15
      X1              =   50
      X2              =   50
      Y1              =   150
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   76
      X1              =   70
      X2              =   60
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   94
      X1              =   250
      X2              =   260
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   94
      X1              =   250
      X2              =   260
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   93
      X1              =   250
      X2              =   240
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   93
      X1              =   240
      X2              =   250
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   77
      X1              =   70
      X2              =   80
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   77
      X1              =   70
      X2              =   80
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   16
      X1              =   70
      X2              =   70
      Y1              =   150
      Y2              =   170
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   78
      X1              =   90
      X2              =   80
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   78
      X1              =   90
      X2              =   80
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   25
      X1              =   250
      X2              =   250
      Y1              =   150
      Y2              =   170
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   92
      X1              =   230
      X2              =   240
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   92
      X1              =   230
      X2              =   240
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   24
      X1              =   230
      X2              =   230
      Y1              =   150
      Y2              =   170
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   17
      X1              =   90
      X2              =   90
      Y1              =   150
      Y2              =   170
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   79
      X1              =   100
      X2              =   90
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   79
      X1              =   100
      X2              =   90
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   91
      X1              =   220
      X2              =   230
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   91
      X1              =   220
      X2              =   230
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   80
      X1              =   100
      X2              =   110
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   80
      X1              =   100
      X2              =   110
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   90
      X1              =   210
      X2              =   220
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   90
      X1              =   210
      X2              =   220
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   81
      X1              =   110
      X2              =   120
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   81
      X1              =   110
      X2              =   120
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   18
      X1              =   110
      X2              =   110
      Y1              =   150
      Y2              =   170
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   82
      X1              =   130
      X2              =   120
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   89
      X1              =   200
      X2              =   210
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   89
      X1              =   210
      X2              =   200
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   82
      X1              =   130
      X2              =   120
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   23
      X1              =   210
      X2              =   210
      Y1              =   150
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   88
      X1              =   190
      X2              =   200
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   88
      X1              =   190
      X2              =   200
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   38
      X1              =   260
      X2              =   280
      Y1              =   140
      Y2              =   140
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   38
      X1              =   260
      X2              =   280
      Y1              =   180
      Y2              =   180
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   28
      X1              =   40
      X2              =   60
      Y1              =   180
      Y2              =   180
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   28
      X1              =   60
      X2              =   40
      Y1              =   140
      Y2              =   140
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   7
      X1              =   60
      X2              =   60
      Y1              =   140
      Y2              =   180
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   12
      X1              =   260
      X2              =   260
      Y1              =   140
      Y2              =   180
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   37
      X1              =   260
      X2              =   240
      Y1              =   180
      Y2              =   180
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   37
      X1              =   260
      X2              =   240
      Y1              =   140
      Y2              =   140
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   29
      X1              =   80
      X2              =   60
      Y1              =   140
      Y2              =   140
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   29
      X1              =   80
      X2              =   60
      Y1              =   180
      Y2              =   180
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   30
      X1              =   100
      X2              =   80
      Y1              =   180
      Y2              =   180
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   30
      X1              =   100
      X2              =   80
      Y1              =   140
      Y2              =   140
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   36
      X1              =   220
      X2              =   240
      Y1              =   140
      Y2              =   140
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   36
      X1              =   240
      X2              =   220
      Y1              =   180
      Y2              =   180
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   22
      X1              =   190
      X2              =   190
      Y1              =   150
      Y2              =   170
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   19
      X1              =   130
      X2              =   130
      Y1              =   150
      Y2              =   170
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   18
      X1              =   40
      X2              =   80
      Y1              =   200
      Y2              =   187
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   23
      X1              =   240
      X2              =   280
      Y1              =   187
      Y2              =   200
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   23
      X1              =   240
      X2              =   280
      Y1              =   133
      Y2              =   120
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   83
      X1              =   130
      X2              =   142
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   83
      X1              =   130
      X2              =   140
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   87
      X1              =   180
      X2              =   190
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   87
      X1              =   180
      X2              =   190
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   11
      X1              =   220
      X2              =   220
      Y1              =   140
      Y2              =   180
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   8
      X1              =   100
      X2              =   100
      Y1              =   140
      Y2              =   180
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   19
      X1              =   80
      X2              =   100
      Y1              =   133
      Y2              =   140
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   19
      X1              =   100
      X2              =   80
      Y1              =   180
      Y2              =   187
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   22
      X1              =   220
      X2              =   240
      Y1              =   180
      Y2              =   187
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   22
      X1              =   220
      X2              =   240
      Y1              =   140
      Y2              =   133
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   35
      X1              =   200
      X2              =   220
      Y1              =   180
      Y2              =   180
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   35
      X1              =   200
      X2              =   220
      Y1              =   140
      Y2              =   140
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   31
      X1              =   100
      X2              =   120
      Y1              =   180
      Y2              =   180
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   31
      X1              =   120
      X2              =   100
      Y1              =   140
      Y2              =   140
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   10
      X1              =   40
      X2              =   80
      Y1              =   200
      Y2              =   200
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   14
      X1              =   240
      X2              =   280
      Y1              =   120
      Y2              =   120
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   14
      X1              =   240
      X2              =   280
      Y1              =   200
      Y2              =   200
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   21
      X1              =   170
      X2              =   170
      Y1              =   150
      Y2              =   170
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   20
      X1              =   150
      X2              =   150
      Y1              =   150
      Y2              =   170
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   55
      X1              =   140
      X2              =   150
      Y1              =   180
      Y2              =   170
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   56
      X1              =   180
      X2              =   170
      Y1              =   180
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   55
      X1              =   140
      X2              =   150
      Y1              =   140
      Y2              =   150
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   56
      X1              =   180
      X2              =   170
      Y1              =   140
      Y2              =   150
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   84
      X1              =   140
      X2              =   150
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   84
      X1              =   150
      X2              =   140
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   86
      X1              =   170
      X2              =   180
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   86
      X1              =   170
      X2              =   180
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   33
      X1              =   140
      X2              =   180
      Y1              =   140
      Y2              =   140
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   33
      X1              =   140
      X2              =   180
      Y1              =   180
      Y2              =   180
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   12
      X1              =   120
      X2              =   200
      Y1              =   120
      Y2              =   120
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   12
      X1              =   120
      X2              =   200
      Y1              =   200
      Y2              =   200
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   32
      X1              =   140
      X2              =   120
      Y1              =   140
      Y2              =   140
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   32
      X1              =   140
      X2              =   120
      Y1              =   180
      Y2              =   180
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   34
      X1              =   180
      X2              =   200
      Y1              =   180
      Y2              =   180
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   34
      X1              =   180
      X2              =   200
      Y1              =   140
      Y2              =   140
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   13
      X1              =   200
      X2              =   240
      Y1              =   200
      Y2              =   200
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   13
      X1              =   200
      X2              =   240
      Y1              =   120
      Y2              =   120
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   11
      X1              =   120
      X2              =   80
      Y1              =   120
      Y2              =   120
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   11
      X1              =   120
      X2              =   80
      Y1              =   200
      Y2              =   200
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   10
      X1              =   180
      X2              =   180
      Y1              =   140
      Y2              =   180
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   9
      X1              =   140
      X2              =   140
      Y1              =   140
      Y2              =   180
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   21
      X1              =   200
      X2              =   180
      Y1              =   200
      Y2              =   180
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   21
      X1              =   200
      X2              =   180
      Y1              =   120
      Y2              =   140
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   20
      X1              =   120
      X2              =   140
      Y1              =   120
      Y2              =   140
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   20
      X1              =   120
      X2              =   140
      Y1              =   200
      Y2              =   180
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   1
      X1              =   240
      X2              =   240
      Y1              =   80
      Y2              =   240
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   4
      X1              =   200
      X2              =   200
      Y1              =   120
      Y2              =   200
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   0
      X1              =   80
      X2              =   80
      Y1              =   80
      Y2              =   240
   End
   Begin VB.Line linPost 
      BorderColor     =   &H0000FF00&
      Index           =   3
      X1              =   120
      X2              =   120
      Y1              =   120
      Y2              =   200
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   7
      X1              =   200
      X2              =   240
      Y1              =   200
      Y2              =   240
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   6
      X1              =   120
      X2              =   80
      Y1              =   200
      Y2              =   240
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   7
      X1              =   200
      X2              =   240
      Y1              =   120
      Y2              =   80
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   6
      X1              =   120
      X2              =   80
      Y1              =   120
      Y2              =   80
   End
   Begin VB.Line linWallDown 
      BorderColor     =   &H0000FF00&
      Index           =   85
      X1              =   150
      X2              =   170
      Y1              =   170
      Y2              =   170
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   85
      X1              =   170
      X2              =   150
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line linWallUp 
      BorderColor     =   &H0000FF00&
      Index           =   10
      X1              =   40
      X2              =   80
      Y1              =   120
      Y2              =   120
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'Direction constants
Const conUp = 0, conRight = 1, conDown = 2, conLeft = 3

'Level Up Constants
Const ExpToLvlUp = 1000

Dim Cheat1 As Integer, Cheat2 As Integer

'Whether a wall exists
Dim Wall(0 To 839) As Boolean

'Game Variables
Dim varLost As Boolean
Dim varScore As Long
'Maze Play Variables
Dim varX As Integer, varY As Integer    'Location
Dim varExitX As Integer, varExitY As Integer    'Exit Location
Dim varDir As Integer   'Player direction
Dim varLevel As Integer 'Dungeon Level
'Character Variables
Dim varHealth As Integer, varMaxHealth As Integer   'Player health/max health
Dim varPlayerLevel As Integer, varExp As Integer 'Player level/experience
Dim varAttack As Integer, varAgility As Integer 'Player attack/agility
'Monster Variables
Dim monAttack As Integer, monAgility As Integer
Dim monHealth As Integer
'Info Window Variables
Dim OldInfo As String

Private Sub cmdAttack_Click()
If varAttack + Int(Rnd * 21) - 10 > monAgility Then
    Call DispInfo("You hit the monster!")
    monHealth = monHealth - Int(Rnd * varAttack) - 1
Else
    Call DispInfo("You missed the monster!")
End If
If monHealth < 0 Then monHealth = 0
pbrMonster.Value = monHealth
Call debuginfo
If monHealth = 0 Then
    Call KillMonster
Else
    Call MonsterAttack
End If
End Sub

Private Sub cmdRun_Click()
If varAgility + Int(Rnd * 21) - 5 > monAgility Then
    Call EscapeMonster
    Exit Sub
Else
    Call DispInfo("You monster blocks your escape!")
End If
Call MonsterAttack
End Sub

'User interface
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'Control Keys
Select Case KeyCode
Case vbKeyEscape    'End the program
    If MsgBox("Are you sure you wish to quit the game?", vbYesNo, "Quit Game") = vbYes Then
        End
    End If
Case vbKeyF1        'Show a help screen
    Call ShowHelp
Case vbKeyF2        'Start a New Game
    If MsgBox("Are you sure you wish to start a new game?", vbYesNo, "New Game") = vbYes Then
        Call NewGame
    End If
End Select
'Game Keys
If Not (varLost) Then
    Select Case KeyCode
    Case vbKeyRight     'Turn Right
        Call TurnRight
    Case vbKeyLeft      'Turn Left
        Call TurnLeft
    Case vbKeyUp        'Go Forwards
        Call GoForward
    Case vbKeyDown      'Go Backwards
        Call GoBack
    Case vbKeySpace
        Call CheckExit
    End Select
    
    'Take a guess
    If (Shift = vbShiftMask Or vbCtrlMask) Then
        Select Case KeyCode
        Case vbKeyBack
            Cheat1 = Cheat1 + 1
            If Cheat1 >= 2 Then
                Call SetWall(varX, varY, varDir, Not (GetWall(varX, varY, varDir)))
                Call Draw2D
                Call Draw3D
                Cheat1 = 0
            End If
        Case 220
            Cheat2 = Cheat2 + 1
            If Cheat2 >= 2 Then
                lblDebug.Visible = Not (lblDebug.Visible)
                Call debuginfo
                Cheat2 = 0
            End If
        Case Else
            Cheat1 = 0
            Cheat2 = 0
        End Select
    End If
End If
End Sub

'Initialize Program
Private Sub Form_Load()
'Initialize Random Number Generator
Randomize
'Start a new game
Call NewGame
End Sub

'Create the maze
Private Sub MakeMaze()
'Put up all the maze walls
Dim Z As Integer
For Z = LBound(Wall) To UBound(Wall)
    Wall(Z) = True
Next Z

'Use maze algorithm to take down necessary walls.
'I found the description and usage of
'the 'Depth-First Search' algorithm on mazeworks.com .
'It has been quite customized by me to do what I want,
'but it's generally the same idea.
Dim Total As Integer, Visited As Integer
Dim canUp As Boolean, canRight As Boolean, canDown As Boolean, canLeft As Boolean
Dim Choices() As Integer
Dim Cell(0 To 19, 0 To 19) As Boolean
Dim X() As Integer
Dim Y() As Integer
ReDim X(0 To 0), Y(0 To 0)
Total = 20 * 20
Visited = 1
Do While Visited < Total
    canUp = False
    canRight = False
    canDown = False
    canLeft = False
    If CheckRange(X(0), Y(0) - 1) Then
        If GetWall(X(0), Y(0) - 1, conUp) And GetWall(X(0), Y(0) - 1, conRight) And GetWall(X(0), Y(0) - 1, conDown) And GetWall(X(0), Y(0) - 1, conLeft) Then
            canUp = True
        End If
    End If
    If CheckRange(X(0) + 1, Y(0)) Then
        If GetWall(X(0) + 1, Y(0), conUp) And GetWall(X(0) + 1, Y(0), conRight) And GetWall(X(0) + 1, Y(0), conDown) And GetWall(X(0) + 1, Y(0), conLeft) Then
            canRight = True
        End If
    End If
    If CheckRange(X(0), Y(0) + 1) Then
        If GetWall(X(0), Y(0) + 1, conUp) And GetWall(X(0), Y(0) + 1, conRight) And GetWall(X(0), Y(0) + 1, conDown) And GetWall(X(0), Y(0) + 1, conLeft) Then
            canDown = True
        End If
    End If
    If CheckRange(X(0) - 1, Y(0)) Then
        If GetWall(X(0) - 1, Y(0), conUp) And GetWall(X(0) - 1, Y(0), conRight) And GetWall(X(0) - 1, Y(0), conDown) And GetWall(X(0) - 1, Y(0), conLeft) Then
            canLeft = True
        End If
    End If
    If Not (canUp Or canRight Or canDown Or canLeft) Then
        X(0) = X(UBound(X))
        Y(0) = Y(UBound(Y))
        ReDim Preserve X(0 To UBound(X) - 1), Y(0 To UBound(Y) - 1)
    Else
        ReDim Preserve X(0 To UBound(X) + 1), Y(0 To UBound(Y) + 1)
        ReDim Choices(0 To 0)
        If canUp Then
            ReDim Preserve Choices(0 To UBound(Choices) + 1)
            Choices(UBound(Choices)) = conUp
        End If
        If canRight Then
            ReDim Preserve Choices(0 To UBound(Choices) + 1)
            Choices(UBound(Choices)) = conRight
        End If
        If canDown Then
            ReDim Preserve Choices(0 To UBound(Choices) + 1)
            Choices(UBound(Choices)) = conDown
        End If
        If canLeft Then
            ReDim Preserve Choices(0 To UBound(Choices) + 1)
            Choices(UBound(Choices)) = conLeft
        End If
        Select Case Choices(Int(Rnd * UBound(Choices)) + 1)
        Case conUp
            SetWall X(0), Y(0), conUp, False
            X(UBound(X)) = X(0)
            Y(UBound(Y)) = Y(0)
            Y(0) = Y(0) - 1
        Case conRight
            SetWall X(0), Y(0), conRight, False
            X(UBound(X)) = X(0)
            Y(UBound(Y)) = Y(0)
            X(0) = X(0) + 1
        Case conDown
            SetWall X(0), Y(0), conDown, False
            X(UBound(X)) = X(0)
            Y(UBound(Y)) = Y(0)
            Y(0) = Y(0) + 1
        Case conLeft
            SetWall X(0), Y(0), conLeft, False
            X(UBound(X)) = X(0)
            Y(UBound(Y)) = Y(0)
            X(0) = X(0) - 1
        End Select
        Visited = Visited + 1
    End If
Loop
End Sub

'----------------------------------------------------------
'--                Room to Wall Interface                --
'----------------------------------------------------------

'Set value of wall visibility
Private Sub SetWall(ByVal X As Integer, ByVal Y As Integer, ByVal Dir As Integer, ByVal Data As Boolean)
ErrCheck X, Y, Dir, "SetWall"
Wall(GetCoord(X, Y, Dir)) = Data
End Sub

'Get value of wall visibilty
Private Function GetWall(ByVal X As Integer, ByVal Y As Integer, ByVal Dir As Integer) As Boolean
ErrCheck X, Y, Dir, "GetWall"
GetWall = Wall(GetCoord(X, Y, Dir))
End Function

'Check to see if Coords and dir of a room is valid
Private Function ErrCheck(ByVal X As Integer, ByVal Y As Integer, ByVal Dir As Integer, ByVal Proc As String)
If X < 0 Or X > 19 Or Y < 0 Or Y > 19 Then
    Err.Raise 1, , Proc & ": Coordinates out of range"
ElseIf Dir <> conUp And Dir <> conRight And Dir <> conDown And Dir <> conLeft Then
    Err.Raise 1, , Proc & ": Improper direction"
End If
End Function

'Get the coords of a wall from the coords of a room
Private Function GetCoord(ByVal X As Integer, ByVal Y As Integer, ByVal Dir As Integer) As Integer
Select Case Dir
Case conUp
    GetCoord = (41 * Y) + X
Case conRight
    GetCoord = (41 * Y) + X + 21
Case conDown
    GetCoord = (41 * Y) + X + 41
Case conLeft
    GetCoord = (41 * Y) + X + 20
End Select
End Function

'----------------------------------------------------------
'--                 Maze Drawing Code                    --
'----------------------------------------------------------

'Draw the 2D view of the maze
Private Sub Draw2D()
Dim X As Integer
For X = 1 To 839
    linMaze(X).Visible = Wall(X)
Next X
End Sub

'Draw the 3D View of the Maze
Private Sub Draw3D()
Dim X As Integer
Dim Wall3D() As Boolean

'Get the lines possible in line of sight
ReDim Wall3D(linWallUp.LBound To linWallUp.UBound) As Boolean
Call GetView(Wall3D)

'Clear all lines of 3D View
For X = LBound(Wall3D) To UBound(Wall3D)
    linWallUp(X).Visible = False
    linWallDown(X).Visible = False
Next X

For X = linPost.LBound To linPost.UBound
    linPost(X).Visible = False
Next X

For X = imgExit3D.LBound To imgExit3D.UBound
    imgExit3D(X).Visible = False
Next X


'Massive collection of nested if statements drawing walls
'If a wall is seen draw it, and continue without drawing possible walls behind it
'If a wall is not seen, look to see if there are walls behind it
'Also, if there's a chance it can be seen, a request to draw a post is called
Call Draw3DExit(0)
Call DrawPost(0, Wall3D)
Call DrawPost(1, Wall3D)
If Wall3D(0) Then
    linWallUp(0).Visible = True
    linWallDown(0).Visible = True
Else
    If Wall3D(2) Then
        linWallUp(2).Visible = True
        linWallDown(2).Visible = True
    Else
        Call DrawPost(2, Wall3D)
        If Wall3D(5) Then
            linWallUp(5).Visible = True
            linWallDown(5).Visible = True
        Else
            If Wall3D(9) Then
                linWallUp(9).Visible = True
                linWallDown(9).Visible = True
            Else
                If Wall3D(16) Then
                    linWallUp(16).Visible = True
                    linWallDown(16).Visible = True
                Else
                    Call DrawPost(6, Wall3D)
                    If Wall3D(27) Then
                        linWallUp(27).Visible = True
                        linWallDown(27).Visible = True
                    Else
                        If Wall3D(46) Then
                            linWallUp(46).Visible = True
                            linWallDown(46).Visible = True
                        Else
                            If Wall3D(42) Then
                                linWallUp(42).Visible = True
                                linWallDown(42).Visible = True
                            Else
                                Call DrawPost(14, Wall3D)
                                If Wall3D(72) Then
                                    linWallUp(72).Visible = True
                                    linWallDown(72).Visible = True
                                End If
                                If Wall3D(73) Then
                                    linWallUp(73).Visible = True
                                    linWallDown(73).Visible = True
                                End If
                            End If
                        End If
                    End If
                    If Wall3D(45) Then
                        linWallUp(45).Visible = True
                        linWallDown(45).Visible = True
                    Else
                        If Wall3D(26) Then
                            linWallUp(26).Visible = True
                            linWallDown(26).Visible = True
                        Else
                            If Wall3D(41) Then
                                linWallUp(41).Visible = True
                                linWallDown(41).Visible = True
                            Else
                                If Wall3D(71) Then
                                    linWallUp(71).Visible = True
                                    linWallDown(71).Visible = True
                                End If
                            End If
                        End If
                    End If
                End If
            End If
        End If
        If Wall3D(10) Then
            linWallUp(10).Visible = True
            linWallDown(10).Visible = True
        Else
            If Wall3D(18) Then
                linWallUp(18).Visible = True
                linWallDown(18).Visible = True
            Else
                Call DrawPost(7, Wall3D)
                If Wall3D(17) Then
                    linWallUp(17).Visible = True
                    linWallDown(17).Visible = True
                Else
                    If Wall3D(28) Then
                        linWallUp(28).Visible = True
                        linWallDown(28).Visible = True
                    Else
                        If Wall3D(47) Then
                            linWallUp(47).Visible = True
                            linWallDown(47).Visible = True
                        Else
                            If Wall3D(43) Then
                                linWallUp(43).Visible = True
                                linWallDown(43).Visible = True
                            Else
                                Call DrawPost(15, Wall3D)
                                If Wall3D(74) Then
                                    linWallUp(74).Visible = True
                                    linWallDown(74).Visible = True
                                End If
                                If Wall3D(75) Then
                                    linWallUp(75).Visible = True
                                    linWallDown(75).Visible = True
                                End If
                            End If
                        End If
                    End If
                End If
                If Wall3D(29) Then
                    linWallUp(29).Visible = True
                    linWallDown(29).Visible = True
                Else
                    If Wall3D(50) Then
                        linWallUp(50).Visible = True
                        linWallDown(50).Visible = True
                    Else
                        If Wall3D(48) Then
                            linWallUp(48).Visible = True
                            linWallDown(48).Visible = True
                        Else
                            Call DrawPost(16, Wall3D)
                            If Wall3D(44) Then
                                linWallUp(44).Visible = True
                                linWallDown(44).Visible = True
                            Else
                                If Wall3D(76) Then
                                    linWallUp(76).Visible = True
                                    linWallDown(76).Visible = True
                                End If
                            End If
                            If Wall3D(77) Then
                                linWallUp(77).Visible = True
                                linWallDown(77).Visible = True
                            End If
                        End If
                    End If
                End If
            End If
        End If
    End If
End If
If Wall3D(1) Then
    linWallUp(1).Visible = True
    linWallDown(1).Visible = True
Else
    If Wall3D(4) Then
        linWallUp(4).Visible = True
        linWallDown(4).Visible = True
    Else
        Call DrawPost(5, Wall3D)
        If Wall3D(14) Then
            linWallUp(14).Visible = True
            linWallDown(14).Visible = True
        Else
            If Wall3D(23) Then
                linWallUp(23).Visible = True
                linWallDown(23).Visible = True
            Else
                Call DrawPost(12, Wall3D)
                If Wall3D(37) Then
                    linWallUp(37).Visible = True
                    linWallDown(37).Visible = True
                Else
                    If Wall3D(61) Then
                        linWallUp(61).Visible = True
                        linWallDown(61).Visible = True
                    Else
                        If Wall3D(63) Then
                            linWallUp(63).Visible = True
                            linWallDown(63).Visible = True
                        Else
                            Call DrawPost(25, Wall3D)
                            If Wall3D(67) Then
                                linWallUp(67).Visible = True
                                linWallDown(67).Visible = True
                            Else
                                If Wall3D(94) Then
                                    linWallUp(94).Visible = True
                                    linWallDown(94).Visible = True
                                End If
                            End If
                            If Wall3D(93) Then
                                linWallUp(93).Visible = True
                                linWallDown(93).Visible = True
                            End If
                        End If
                    End If
                End If
                If Wall3D(24) Then
                    linWallUp(24).Visible = True
                    linWallDown(24).Visible = True
                Else
                    If Wall3D(38) Then
                        linWallUp(38).Visible = True
                        linWallDown(38).Visible = True
                    Else
                        If Wall3D(64) Then
                            linWallUp(64).Visible = True
                            linWallDown(64).Visible = True
                        Else
                            If Wall3D(68) Then
                                linWallUp(68).Visible = True
                                linWallDown(68).Visible = True
                            Else
                                Call DrawPost(26, Wall3D)
                                If Wall3D(95) Then
                                    linWallUp(95).Visible = True
                                    linWallDown(95).Visible = True
                                End If
                                If Wall3D(96) Then
                                    linWallUp(96).Visible = True
                                    linWallDown(96).Visible = True
                                End If
                            End If
                        End If
                    End If
                End If
            End If
        End If
        If Wall3D(8) Then
            linWallUp(8).Visible = True
            linWallDown(8).Visible = True
        Else
            If Wall3D(15) Then
                linWallUp(15).Visible = True
                linWallDown(15).Visible = True
            Else
                If Wall3D(25) Then
                    linWallUp(25).Visible = True
                    linWallDown(25).Visible = True
                Else
                    Call DrawPost(13, Wall3D)
                    If Wall3D(39) Then
                        linWallUp(39).Visible = True
                        linWallDown(39).Visible = True
                    Else
                        If Wall3D(65) Then
                            linWallUp(65).Visible = True
                            linWallDown(65).Visible = True
                        Else
                            If Wall3D(69) Then
                                linWallUp(69).Visible = True
                                linWallDown(69).Visible = True
                            Else
                                Call DrawPost(27, Wall3D)
                                If Wall3D(97) Then
                                    linWallUp(97).Visible = True
                                    linWallDown(97).Visible = True
                                End If
                                If Wall3D(98) Then
                                    linWallUp(98).Visible = True
                                    linWallDown(98).Visible = True
                                End If
                            End If
                        End If
                    End If
                    If Wall3D(66) Then
                        linWallUp(66).Visible = True
                        linWallDown(66).Visible = True
                    Else
                        If Wall3D(40) Then
                            linWallUp(40).Visible = True
                            linWallDown(40).Visible = True
                        Else
                            If Wall3D(70) Then
                                linWallUp(70).Visible = True
                                linWallDown(70).Visible = True
                            Else
                                If Wall3D(99) Then
                                    linWallUp(99).Visible = True
                                    linWallDown(99).Visible = True
                                End If
                            End If
                        End If
                    End If
                End If
            End If
        End If
    End If
End If
If Wall3D(3) Then
    linWallUp(3).Visible = True
    linWallDown(3).Visible = True
Else
    Call Draw3DExit(1)
    Call DrawPost(3, Wall3D)
    Call DrawPost(4, Wall3D)
    If Wall3D(6) Then
        linWallUp(6).Visible = True
        linWallDown(6).Visible = True
    Else
        If Wall3D(11) Then
            linWallUp(11).Visible = True
            linWallDown(11).Visible = True
        Else
            Call DrawPost(8, Wall3D)
            If Wall3D(19) Then
                linWallUp(19).Visible = True
                linWallDown(19).Visible = True
            Else
                If Wall3D(30) Then
                    linWallUp(30).Visible = True
                    linWallDown(30).Visible = True
                Else
                    If Wall3D(51) Then
                        linWallUp(51).Visible = True
                        linWallDown(51).Visible = True
                    Else
                        Call DrawPost(17, Wall3D)
                        If Wall3D(49) Then
                            linWallUp(49).Visible = True
                            linWallDown(49).Visible = True
                        Else
                            If Wall3D(78) Then
                                linWallUp(78).Visible = True
                                linWallDown(78).Visible = True
                            End If
                        End If
                        If Wall3D(79) Then
                            linWallUp(79).Visible = True
                            linWallDown(79).Visible = True
                        End If
                    End If
                End If
            End If
            If Wall3D(31) Then
                linWallUp(31).Visible = True
                linWallDown(31).Visible = True
            Else
                If Wall3D(53) Then
                    linWallUp(53).Visible = True
                    linWallDown(53).Visible = True
                Else
                    Call DrawPost(18, Wall3D)
                    If Wall3D(52) Then
                        linWallUp(52).Visible = True
                        linWallDown(52).Visible = True
                    Else
                        If Wall3D(80) Then
                            linWallUp(80).Visible = True
                            linWallDown(80).Visible = True
                        End If
                    End If
                    If Wall3D(81) Then
                        linWallUp(81).Visible = True
                        linWallDown(81).Visible = True
                    End If
                End If
            End If
        End If
    End If
    If Wall3D(7) Then
        linWallUp(7).Visible = True
        linWallDown(7).Visible = True
    Else
        If Wall3D(13) Then
            linWallUp(13).Visible = True
            linWallDown(13).Visible = True
        Else
            Call DrawPost(11, Wall3D)
            If Wall3D(35) Then
                linWallUp(35).Visible = True
                linWallDown(35).Visible = True
            Else
                If Wall3D(58) Then
                    linWallUp(58).Visible = True
                    linWallDown(58).Visible = True
                Else
                    Call DrawPost(23, Wall3D)
                    If Wall3D(89) Then
                        linWallUp(89).Visible = True
                        linWallDown(89).Visible = True
                    End If
                    If Wall3D(59) Then
                        linWallUp(59).Visible = True
                        linWallDown(59).Visible = True
                    Else
                        If Wall3D(90) Then
                            linWallUp(90).Visible = True
                            linWallDown(90).Visible = True
                        End If
                    End If
                End If
            End If
            If Wall3D(22) Then
                linWallUp(22).Visible = True
                linWallDown(22).Visible = True
            Else
                If Wall3D(36) Then
                    linWallUp(36).Visible = True
                    linWallDown(36).Visible = True
                Else
                    If Wall3D(60) Then
                        linWallUp(60).Visible = True
                        linWallDown(60).Visible = True
                    Else
                        Call DrawPost(24, Wall3D)
                        If Wall3D(91) Then
                            linWallUp(91).Visible = True
                            linWallDown(91).Visible = True
                        End If
                        If Wall3D(62) Then
                            linWallUp(62).Visible = True
                            linWallDown(62).Visible = True
                        Else
                            If Wall3D(92) Then
                                linWallUp(92).Visible = True
                                linWallDown(92).Visible = True
                            End If
                        End If
                    End If
                End If
            End If
        End If
    End If
    If Wall3D(12) Then
        linWallUp(12).Visible = True
        linWallDown(12).Visible = True
    Else
        Call Draw3DExit(2)
        Call DrawPost(9, Wall3D)
        Call DrawPost(10, Wall3D)
        If Wall3D(20) Then
            linWallUp(20).Visible = True
            linWallDown(20).Visible = True
        Else
            If Wall3D(32) Then
                linWallUp(32).Visible = True
                linWallDown(32).Visible = True
            Else
                If Wall3D(54) Then
                    linWallUp(54).Visible = True
                    linWallDown(54).Visible = True
                Else
                    If Wall3D(82) Then
                        linWallUp(82).Visible = True
                        linWallDown(82).Visible = True
                    End If
                End If
                If Wall3D(83) Then
                    linWallUp(83).Visible = True
                    linWallDown(83).Visible = True
                End If
            End If
        End If
        If Wall3D(21) Then
            linWallUp(21).Visible = True
            linWallDown(21).Visible = True
        Else
            If Wall3D(34) Then
                linWallUp(34).Visible = True
                linWallDown(34).Visible = True
            Else
                Call DrawPost(22, Wall3D)
                If Wall3D(87) Then
                    linWallUp(87).Visible = True
                    linWallDown(87).Visible = True
                End If
                If Wall3D(57) Then
                    linWallUp(57).Visible = True
                    linWallDown(57).Visible = True
                Else
                    If Wall3D(88) Then
                        linWallUp(88).Visible = True
                        linWallDown(88).Visible = True
                    End If
                End If
            End If
        End If
        If Wall3D(33) Then
            linWallUp(33).Visible = True
            linWallDown(33).Visible = True
        Else
            Call Draw3DExit(3)
            Call DrawPost(20, Wall3D)
            Call DrawPost(21, Wall3D)
            If Wall3D(55) Then
                linWallUp(55).Visible = True
                linWallDown(55).Visible = True
            Else
                If Wall3D(84) Then
                    linWallUp(84).Visible = True
                    linWallDown(84).Visible = True
                End If
            End If
            If Wall3D(56) Then
                linWallUp(56).Visible = True
                linWallDown(56).Visible = True
            Else
                If Wall3D(86) Then
                    linWallUp(86).Visible = True
                    linWallDown(86).Visible = True
                End If
            End If
            If Wall3D(85) Then
                linWallUp(85).Visible = True
                linWallDown(85).Visible = True
            End If
        End If
    End If
End If
        
'Refresh the borders
shpBorder.Refresh
End Sub

'Draw a post (Is called when a post might be seen)
Private Sub DrawPost(ByVal X As Integer, ByRef Wall3D() As Boolean)
'Posts (corners of walls) will only not exist when there are two sections
'of wall running straight, with no wall in between. In all other situations,
'draw the post
Select Case X
Case 0
    If Wall3D(0) And Wall3D(6) And Not (Wall3D(3)) Then
    ElseIf Wall3D(2) And Wall3D(3) And Not (Wall3D(0)) Then
    Else
        linPost(X).Visible = True
    End If
Case 1
    If Wall3D(1) And Wall3D(7) And Not (Wall3D(3)) Then
    ElseIf Wall3D(3) And Wall3D(4) And Not (Wall3D(1)) Then
    Else
        linPost(X).Visible = True
    End If
Case 2
    If Wall3D(5) And Wall3D(18) And Not (Wall3D(10)) Then
    ElseIf Wall3D(9) And Wall3D(10) And Not (Wall3D(5)) Then
    Else
        linPost(X).Visible = True
    End If
Case 3
    If Wall3D(6) And Wall3D(20) And Not (Wall3D(12)) Then
    ElseIf Wall3D(11) And Wall3D(12) And Not (Wall3D(6)) Then
    Else
        linPost(X).Visible = True
    End If
Case 4
    If Wall3D(7) And Wall3D(21) And Not (Wall3D(12)) Then
    ElseIf Wall3D(12) And Wall3D(13) And Not (Wall3D(7)) Then
    Else
        linPost(X).Visible = True
    End If
Case 5
    If Wall3D(8) And Wall3D(23) And Not (Wall3D(14)) Then
    ElseIf Wall3D(14) And Wall3D(15) And Not (Wall3D(8)) Then
    Else
        linPost(X).Visible = True
    End If
Case 6
    If Wall3D(45) And Wall3D(46) And Not (Wall3D(27)) Then
    ElseIf Wall3D(26) And Wall3D(27) And Not (Wall3D(45)) Then
    Else
        linPost(X).Visible = True
    End If
Case 7
    If Wall3D(17) And Wall3D(50) And Not (Wall3D(29)) Then
    ElseIf Wall3D(28) And Wall3D(29) And Not (Wall3D(17)) Then
    Else
        linPost(X).Visible = True
    End If
Case 8
    If Wall3D(19) And Wall3D(53) And Not (Wall3D(31)) Then
    ElseIf Wall3D(30) And Wall3D(31) And Not (Wall3D(19)) Then
    Else
        linPost(X).Visible = True
    End If
Case 9
    If Wall3D(20) And Wall3D(55) And Not (Wall3D(33)) Then
    ElseIf Wall3D(32) And Wall3D(33) And Not (Wall3D(20)) Then
    Else
        linPost(X).Visible = True
    End If
Case 10
    If Wall3D(21) And Wall3D(56) And Not (Wall3D(33)) Then
    ElseIf Wall3D(33) And Wall3D(34) And Not (Wall3D(21)) Then
    Else
        linPost(X).Visible = True
    End If
Case 11
    If Wall3D(22) And Wall3D(58) And Not (Wall3D(35)) Then
    ElseIf Wall3D(35) And Wall3D(36) And Not (Wall3D(22)) Then
    Else
        linPost(X).Visible = True
    End If
Case 12
    If Wall3D(24) And Wall3D(61) And Not (Wall3D(37)) Then
    ElseIf Wall3D(37) And Wall3D(38) And Not (Wall3D(24)) Then
    Else
        linPost(X).Visible = True
    End If
Case 13
    If Wall3D(65) And Wall3D(66) And Not (Wall3D(39)) Then
    ElseIf Wall3D(39) And Wall3D(40) And Not (Wall3D(66)) Then
    Else
        linPost(X).Visible = True
    End If
Case 14
    If Wall3D(72) And Wall3D(73) Then
    Else
        linPost(X).Visible = True
    End If
Case 15
    If Wall3D(74) And Wall3D(75) Then
    Else
        linPost(X).Visible = True
    End If
Case 16
    If Wall3D(76) And Wall3D(77) And Not (Wall3D(44)) Then
    Else
        linPost(X).Visible = True
    End If
Case 17
    If Wall3D(78) And Wall3D(79) And Not (Wall3D(49)) Then
    Else
        linPost(X).Visible = True
    End If
Case 18
    If Wall3D(80) And Wall3D(81) And Not (Wall3D(52)) Then
    Else
        linPost(X).Visible = True
    End If
Case 19
    If Wall3D(82) And Wall3D(83) And Not (Wall3D(54)) Then
    Else
        linPost(X).Visible = True
    End If
Case 20
    If Wall3D(84) And Wall3D(85) And Not (Wall3D(55)) Then
    Else
        linPost(X).Visible = True
    End If
Case 21
    If Wall3D(85) And Wall3D(86) And Not (Wall3D(56)) Then
    Else
        linPost(X).Visible = True
    End If
Case 22
    If Wall3D(87) And Wall3D(88) And Not (Wall3D(57)) Then
    Else
        linPost(X).Visible = True
    End If
Case 23
    If Wall3D(89) And Wall3D(90) And Not (Wall3D(59)) Then
    Else
        linPost(X).Visible = True
    End If
Case 24
    If Wall3D(91) And Wall3D(92) And Not (Wall3D(62)) Then
    Else
        linPost(X).Visible = True
    End If
Case 25
    If Wall3D(93) And Wall3D(94) And Not (Wall3D(67)) Then
    Else
        linPost(X).Visible = True
    End If
Case 26
    If Wall3D(95) And Wall3D(96) Then
    Else
        linPost(X).Visible = True
    End If
Case 27
    If Wall3D(97) And Wall3D(98) Then
    Else
        linPost(X).Visible = True
    End If
End Select
End Sub


'Get all the walls in the player's line of sight
Private Sub GetView(ByRef Wall() As Boolean)
'Make all walls on by default
Dim Z As Integer
For Z = 0 To 99
    Wall(Z) = True
Next Z

'General Technique:
'Set the X, Y coords of room.
'Load the information from the walls of that room into
'the appropriate 3D view temporary variables.

Dim X As Integer, Y As Integer
Select Case varDir
Case conUp  'Use this if player is facing up
    X = varX
    Y = varY
    If CheckRange(X, Y) Then
        Wall(0) = GetWall(X, Y, conLeft)
        Wall(1) = GetWall(X, Y, conRight)
        Wall(3) = GetWall(X, Y, conUp)
    End If
    X = varX
    Y = varY - 1
    If CheckRange(X, Y) Then
        Wall(6) = GetWall(X, Y, conLeft)
        Wall(7) = GetWall(X, Y, conRight)
        Wall(12) = GetWall(X, Y, conUp)
    End If
    X = varX
    Y = varY - 2
    If CheckRange(X, Y) Then
        Wall(20) = GetWall(X, Y, conLeft)
        Wall(21) = GetWall(X, Y, conRight)
        Wall(33) = GetWall(X, Y, conUp)
    End If
    X = varX
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(55) = GetWall(X, Y, conLeft)
        Wall(56) = GetWall(X, Y, conRight)
        Wall(85) = GetWall(X, Y, conUp)
    End If
    X = varX - 1
    Y = varY - 1
    If CheckRange(X, Y) Then
        Wall(2) = GetWall(X, Y, conDown)
        Wall(5) = GetWall(X, Y, conLeft)
        Wall(10) = GetWall(X, Y, conUp)
        Wall(11) = GetWall(X, Y, conUp)
    End If
    X = varX - 1
    Y = varY - 2
    If CheckRange(X, Y) Then
        Wall(18) = GetWall(X, Y, conLeft)
        Wall(19) = GetWall(X, Y, conLeft)
        Wall(31) = GetWall(X, Y, conUp)
        Wall(32) = GetWall(X, Y, conUp)
    End If
    X = varX - 1
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(53) = GetWall(X, Y, conLeft)
        Wall(54) = GetWall(X, Y, conLeft)
        Wall(83) = GetWall(X, Y, conUp)
        Wall(84) = GetWall(X, Y, conUp)
    End If
    X = varX + 1
    Y = varY - 1
    If CheckRange(X, Y) Then
        Wall(4) = GetWall(X, Y, conDown)
        Wall(8) = GetWall(X, Y, conRight)
        Wall(13) = GetWall(X, Y, conUp)
        Wall(14) = GetWall(X, Y, conUp)
    End If
    X = varX + 1
    Y = varY - 2
    If CheckRange(X, Y) Then
        Wall(22) = GetWall(X, Y, conRight)
        Wall(23) = GetWall(X, Y, conRight)
        Wall(34) = GetWall(X, Y, conUp)
        Wall(35) = GetWall(X, Y, conUp)
    End If
    X = varX + 1
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(57) = GetWall(X, Y, conRight)
        Wall(58) = GetWall(X, Y, conRight)
        Wall(86) = GetWall(X, Y, conUp)
        Wall(87) = GetWall(X, Y, conUp)
    End If
    X = varX - 2
    Y = varY - 2
    If CheckRange(X, Y) Then
        Wall(9) = GetWall(X, Y, conDown)
        Wall(16) = GetWall(X, Y, conLeft)
        Wall(17) = GetWall(X, Y, conLeft)
        Wall(29) = GetWall(X, Y, conUp)
        Wall(30) = GetWall(X, Y, conUp)
    End If
    X = varX - 2
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(50) = GetWall(X, Y, conLeft)
        Wall(51) = GetWall(X, Y, conLeft)
        Wall(52) = GetWall(X, Y, conLeft)
        Wall(81) = GetWall(X, Y, conUp)
        Wall(82) = GetWall(X, Y, conUp)
    End If
    X = varX + 2
    Y = varY - 2
    If CheckRange(X, Y) Then
        Wall(15) = GetWall(X, Y, conDown)
        Wall(24) = GetWall(X, Y, conRight)
        Wall(25) = GetWall(X, Y, conRight)
        Wall(36) = GetWall(X, Y, conUp)
        Wall(37) = GetWall(X, Y, conUp)
    End If
    X = varX + 2
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(59) = GetWall(X, Y, conRight)
        Wall(60) = GetWall(X, Y, conRight)
        Wall(61) = GetWall(X, Y, conRight)
        Wall(90) = GetWall(X, Y, conUp)
        Wall(91) = GetWall(X, Y, conUp)
    End If
    X = varX - 3
    Y = varY - 2
    If CheckRange(X, Y) Then
        Wall(45) = GetWall(X, Y, conLeft)
        Wall(27) = GetWall(X, Y, conUp)
        Wall(28) = GetWall(X, Y, conUp)
    End If
    X = varX - 3
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(46) = GetWall(X, Y, conLeft)
        Wall(47) = GetWall(X, Y, conLeft)
        Wall(48) = GetWall(X, Y, conLeft)
        Wall(49) = GetWall(X, Y, conLeft)
        Wall(79) = GetWall(X, Y, conUp)
        Wall(80) = GetWall(X, Y, conUp)
    End If
    X = varX + 3
    Y = varY - 2
    If CheckRange(X, Y) Then
        Wall(66) = GetWall(X, Y, conRight)
        Wall(38) = GetWall(X, Y, conUp)
        Wall(39) = GetWall(X, Y, conUp)
    End If
    X = varX + 3
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(62) = GetWall(X, Y, conRight)
        Wall(63) = GetWall(X, Y, conRight)
        Wall(64) = GetWall(X, Y, conRight)
        Wall(65) = GetWall(X, Y, conRight)
        Wall(90) = GetWall(X, Y, conUp)
        Wall(91) = GetWall(X, Y, conUp)
    End If
    X = varX - 4
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(26) = GetWall(X, Y, conDown)
        Wall(41) = GetWall(X, Y, conLeft)
        Wall(42) = GetWall(X, Y, conLeft)
        Wall(43) = GetWall(X, Y, conLeft)
        Wall(44) = GetWall(X, Y, conLeft)
        Wall(77) = GetWall(X, Y, conUp)
        Wall(78) = GetWall(X, Y, conUp)
    End If
    X = varX + 4
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(40) = GetWall(X, Y, conDown)
        Wall(67) = GetWall(X, Y, conRight)
        Wall(68) = GetWall(X, Y, conRight)
        Wall(69) = GetWall(X, Y, conRight)
        Wall(70) = GetWall(X, Y, conRight)
        Wall(92) = GetWall(X, Y, conUp)
        Wall(93) = GetWall(X, Y, conUp)
    End If
    X = varX - 5
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(75) = GetWall(X, Y, conUp)
        Wall(76) = GetWall(X, Y, conUp)
    End If
    X = varX + 5
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(94) = GetWall(X, Y, conUp)
        Wall(95) = GetWall(X, Y, conUp)
    End If
    X = varX - 6
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(73) = GetWall(X, Y, conUp)
        Wall(74) = GetWall(X, Y, conUp)
    End If
    X = varX + 6
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(96) = GetWall(X, Y, conUp)
        Wall(97) = GetWall(X, Y, conUp)
    End If
    X = varX - 7
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(71) = GetWall(X, Y, conUp)
        Wall(72) = GetWall(X, Y, conUp)
    End If
    X = varX + 7
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(98) = GetWall(X, Y, conUp)
        Wall(99) = GetWall(X, Y, conUp)
    End If
Case conRight   'Use this if player is facing right
    X = varX
    Y = varY
    If CheckRange(X, Y) Then
        Wall(0) = GetWall(X, Y, conUp)
        Wall(1) = GetWall(X, Y, conDown)
        Wall(3) = GetWall(X, Y, conRight)
    End If
    X = varX + 1
    Y = varY
    If CheckRange(X, Y) Then
        Wall(6) = GetWall(X, Y, conUp)
        Wall(7) = GetWall(X, Y, conDown)
        Wall(12) = GetWall(X, Y, conRight)
    End If
    X = varX + 2
    Y = varY
    If CheckRange(X, Y) Then
        Wall(20) = GetWall(X, Y, conUp)
        Wall(21) = GetWall(X, Y, conDown)
        Wall(33) = GetWall(X, Y, conRight)
    End If
    X = varX + 3
    Y = varY
    If CheckRange(X, Y) Then
        Wall(55) = GetWall(X, Y, conUp)
        Wall(56) = GetWall(X, Y, conDown)
        Wall(85) = GetWall(X, Y, conRight)
    End If
    X = varX + 1
    Y = varY - 1
    If CheckRange(X, Y) Then
        Wall(2) = GetWall(X, Y, conLeft)
        Wall(5) = GetWall(X, Y, conUp)
        Wall(10) = GetWall(X, Y, conRight)
        Wall(11) = GetWall(X, Y, conRight)
    End If
    X = varX + 2
    Y = varY - 1
    If CheckRange(X, Y) Then
        Wall(18) = GetWall(X, Y, conUp)
        Wall(19) = GetWall(X, Y, conUp)
        Wall(31) = GetWall(X, Y, conRight)
        Wall(32) = GetWall(X, Y, conRight)
    End If
    X = varX + 3
    Y = varY - 1
    If CheckRange(X, Y) Then
        Wall(53) = GetWall(X, Y, conUp)
        Wall(54) = GetWall(X, Y, conUp)
        Wall(83) = GetWall(X, Y, conRight)
        Wall(84) = GetWall(X, Y, conRight)
    End If
    X = varX + 1
    Y = varY + 1
    If CheckRange(X, Y) Then
        Wall(4) = GetWall(X, Y, conLeft)
        Wall(8) = GetWall(X, Y, conDown)
        Wall(13) = GetWall(X, Y, conRight)
        Wall(14) = GetWall(X, Y, conRight)
    End If
    X = varX + 2
    Y = varY + 1
    If CheckRange(X, Y) Then
        Wall(22) = GetWall(X, Y, conDown)
        Wall(23) = GetWall(X, Y, conDown)
        Wall(34) = GetWall(X, Y, conRight)
        Wall(35) = GetWall(X, Y, conRight)
    End If
    X = varX + 3
    Y = varY + 1
    If CheckRange(X, Y) Then
        Wall(57) = GetWall(X, Y, conDown)
        Wall(58) = GetWall(X, Y, conDown)
        Wall(86) = GetWall(X, Y, conRight)
        Wall(87) = GetWall(X, Y, conRight)
    End If
    X = varX + 2
    Y = varY - 2
    If CheckRange(X, Y) Then
        Wall(9) = GetWall(X, Y, conLeft)
        Wall(16) = GetWall(X, Y, conUp)
        Wall(17) = GetWall(X, Y, conUp)
        Wall(29) = GetWall(X, Y, conRight)
        Wall(30) = GetWall(X, Y, conRight)
    End If
    X = varX + 3
    Y = varY - 2
    If CheckRange(X, Y) Then
        Wall(50) = GetWall(X, Y, conUp)
        Wall(51) = GetWall(X, Y, conUp)
        Wall(52) = GetWall(X, Y, conUp)
        Wall(81) = GetWall(X, Y, conRight)
        Wall(82) = GetWall(X, Y, conRight)
    End If
    X = varX + 2
    Y = varY + 2
    If CheckRange(X, Y) Then
        Wall(15) = GetWall(X, Y, conLeft)
        Wall(24) = GetWall(X, Y, conDown)
        Wall(25) = GetWall(X, Y, conDown)
        Wall(36) = GetWall(X, Y, conRight)
        Wall(37) = GetWall(X, Y, conRight)
    End If
    X = varX + 3
    Y = varY + 2
    If CheckRange(X, Y) Then
        Wall(59) = GetWall(X, Y, conDown)
        Wall(60) = GetWall(X, Y, conDown)
        Wall(61) = GetWall(X, Y, conDown)
        Wall(90) = GetWall(X, Y, conRight)
        Wall(91) = GetWall(X, Y, conRight)
    End If
    X = varX + 2
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(45) = GetWall(X, Y, conUp)
        Wall(27) = GetWall(X, Y, conRight)
        Wall(28) = GetWall(X, Y, conRight)
    End If
    X = varX + 3
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(46) = GetWall(X, Y, conUp)
        Wall(47) = GetWall(X, Y, conUp)
        Wall(48) = GetWall(X, Y, conUp)
        Wall(49) = GetWall(X, Y, conUp)
        Wall(79) = GetWall(X, Y, conRight)
        Wall(80) = GetWall(X, Y, conRight)
    End If
    X = varX + 2
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(66) = GetWall(X, Y, conDown)
        Wall(38) = GetWall(X, Y, conRight)
        Wall(39) = GetWall(X, Y, conRight)
    End If
    X = varX + 3
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(62) = GetWall(X, Y, conDown)
        Wall(63) = GetWall(X, Y, conDown)
        Wall(64) = GetWall(X, Y, conDown)
        Wall(65) = GetWall(X, Y, conDown)
        Wall(90) = GetWall(X, Y, conRight)
        Wall(91) = GetWall(X, Y, conRight)
    End If
    X = varX + 3
    Y = varY - 4
    If CheckRange(X, Y) Then
        Wall(26) = GetWall(X, Y, conLeft)
        Wall(41) = GetWall(X, Y, conUp)
        Wall(42) = GetWall(X, Y, conUp)
        Wall(43) = GetWall(X, Y, conUp)
        Wall(44) = GetWall(X, Y, conUp)
        Wall(77) = GetWall(X, Y, conRight)
        Wall(78) = GetWall(X, Y, conRight)
    End If
    X = varX + 3
    Y = varY + 4
    If CheckRange(X, Y) Then
        Wall(40) = GetWall(X, Y, conLeft)
        Wall(67) = GetWall(X, Y, conDown)
        Wall(68) = GetWall(X, Y, conDown)
        Wall(69) = GetWall(X, Y, conDown)
        Wall(70) = GetWall(X, Y, conDown)
        Wall(92) = GetWall(X, Y, conRight)
        Wall(93) = GetWall(X, Y, conRight)
    End If
    X = varX + 3
    Y = varY - 5
    If CheckRange(X, Y) Then
        Wall(75) = GetWall(X, Y, conRight)
        Wall(76) = GetWall(X, Y, conRight)
    End If
    X = varX + 3
    Y = varY + 5
    If CheckRange(X, Y) Then
        Wall(94) = GetWall(X, Y, conRight)
        Wall(95) = GetWall(X, Y, conRight)
    End If
    X = varX + 3
    Y = varY - 6
    If CheckRange(X, Y) Then
        Wall(73) = GetWall(X, Y, conRight)
        Wall(74) = GetWall(X, Y, conRight)
    End If
    X = varX + 3
    Y = varY + 6
    If CheckRange(X, Y) Then
        Wall(96) = GetWall(X, Y, conRight)
        Wall(97) = GetWall(X, Y, conRight)
    End If
    X = varX + 3
    Y = varY - 7
    If CheckRange(X, Y) Then
        Wall(71) = GetWall(X, Y, conRight)
        Wall(72) = GetWall(X, Y, conRight)
    End If
    X = varX + 3
    Y = varY + 7
    If CheckRange(X, Y) Then
        Wall(98) = GetWall(X, Y, conRight)
        Wall(99) = GetWall(X, Y, conRight)
    End If
Case conDown    'Use this if player is facing down
    X = varX
    Y = varY
    If CheckRange(X, Y) Then
        Wall(0) = GetWall(X, Y, conRight)
        Wall(1) = GetWall(X, Y, conLeft)
        Wall(3) = GetWall(X, Y, conDown)
    End If
    X = varX
    Y = varY + 1
    If CheckRange(X, Y) Then
        Wall(6) = GetWall(X, Y, conRight)
        Wall(7) = GetWall(X, Y, conLeft)
        Wall(12) = GetWall(X, Y, conDown)
    End If
    X = varX
    Y = varY + 2
    If CheckRange(X, Y) Then
        Wall(20) = GetWall(X, Y, conRight)
        Wall(21) = GetWall(X, Y, conLeft)
        Wall(33) = GetWall(X, Y, conDown)
    End If
    X = varX
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(55) = GetWall(X, Y, conRight)
        Wall(56) = GetWall(X, Y, conLeft)
        Wall(85) = GetWall(X, Y, conDown)
    End If
    X = varX + 1
    Y = varY + 1
    If CheckRange(X, Y) Then
        Wall(2) = GetWall(X, Y, conUp)
        Wall(5) = GetWall(X, Y, conRight)
        Wall(10) = GetWall(X, Y, conDown)
        Wall(11) = GetWall(X, Y, conDown)
    End If
    X = varX + 1
    Y = varY + 2
    If CheckRange(X, Y) Then
        Wall(18) = GetWall(X, Y, conRight)
        Wall(19) = GetWall(X, Y, conRight)
        Wall(31) = GetWall(X, Y, conDown)
        Wall(32) = GetWall(X, Y, conDown)
    End If
    X = varX + 1
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(53) = GetWall(X, Y, conRight)
        Wall(54) = GetWall(X, Y, conRight)
        Wall(83) = GetWall(X, Y, conDown)
        Wall(84) = GetWall(X, Y, conDown)
    End If
    X = varX - 1
    Y = varY + 1
    If CheckRange(X, Y) Then
        Wall(4) = GetWall(X, Y, conUp)
        Wall(8) = GetWall(X, Y, conLeft)
        Wall(13) = GetWall(X, Y, conDown)
        Wall(14) = GetWall(X, Y, conDown)
    End If
    X = varX - 1
    Y = varY + 2
    If CheckRange(X, Y) Then
        Wall(22) = GetWall(X, Y, conLeft)
        Wall(23) = GetWall(X, Y, conLeft)
        Wall(34) = GetWall(X, Y, conDown)
        Wall(35) = GetWall(X, Y, conDown)
    End If
    X = varX - 1
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(57) = GetWall(X, Y, conLeft)
        Wall(58) = GetWall(X, Y, conLeft)
        Wall(86) = GetWall(X, Y, conDown)
        Wall(87) = GetWall(X, Y, conDown)
    End If
    X = varX + 2
    Y = varY + 2
    If CheckRange(X, Y) Then
        Wall(9) = GetWall(X, Y, conUp)
        Wall(16) = GetWall(X, Y, conRight)
        Wall(17) = GetWall(X, Y, conRight)
        Wall(29) = GetWall(X, Y, conDown)
        Wall(30) = GetWall(X, Y, conDown)
    End If
    X = varX + 2
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(50) = GetWall(X, Y, conRight)
        Wall(51) = GetWall(X, Y, conRight)
        Wall(52) = GetWall(X, Y, conRight)
        Wall(81) = GetWall(X, Y, conDown)
        Wall(82) = GetWall(X, Y, conDown)
    End If
    X = varX - 2
    Y = varY + 2
    If CheckRange(X, Y) Then
        Wall(15) = GetWall(X, Y, conUp)
        Wall(24) = GetWall(X, Y, conLeft)
        Wall(25) = GetWall(X, Y, conLeft)
        Wall(36) = GetWall(X, Y, conDown)
        Wall(37) = GetWall(X, Y, conDown)
    End If
    X = varX - 2
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(59) = GetWall(X, Y, conLeft)
        Wall(60) = GetWall(X, Y, conLeft)
        Wall(61) = GetWall(X, Y, conLeft)
        Wall(90) = GetWall(X, Y, conDown)
        Wall(91) = GetWall(X, Y, conDown)
    End If
    X = varX + 3
    Y = varY + 2
    If CheckRange(X, Y) Then
        Wall(45) = GetWall(X, Y, conRight)
        Wall(27) = GetWall(X, Y, conDown)
        Wall(28) = GetWall(X, Y, conDown)
    End If
    X = varX + 3
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(46) = GetWall(X, Y, conRight)
        Wall(47) = GetWall(X, Y, conRight)
        Wall(48) = GetWall(X, Y, conRight)
        Wall(49) = GetWall(X, Y, conRight)
        Wall(79) = GetWall(X, Y, conDown)
        Wall(80) = GetWall(X, Y, conDown)
    End If
    X = varX - 3
    Y = varY + 2
    If CheckRange(X, Y) Then
        Wall(66) = GetWall(X, Y, conLeft)
        Wall(38) = GetWall(X, Y, conDown)
        Wall(39) = GetWall(X, Y, conDown)
    End If
    X = varX - 3
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(62) = GetWall(X, Y, conLeft)
        Wall(63) = GetWall(X, Y, conLeft)
        Wall(64) = GetWall(X, Y, conLeft)
        Wall(65) = GetWall(X, Y, conLeft)
        Wall(90) = GetWall(X, Y, conDown)
        Wall(91) = GetWall(X, Y, conDown)
    End If
    X = varX + 4
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(26) = GetWall(X, Y, conUp)
        Wall(41) = GetWall(X, Y, conRight)
        Wall(42) = GetWall(X, Y, conRight)
        Wall(43) = GetWall(X, Y, conRight)
        Wall(44) = GetWall(X, Y, conRight)
        Wall(77) = GetWall(X, Y, conDown)
        Wall(78) = GetWall(X, Y, conDown)
    End If
    X = varX - 4
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(40) = GetWall(X, Y, conUp)
        Wall(67) = GetWall(X, Y, conLeft)
        Wall(68) = GetWall(X, Y, conLeft)
        Wall(69) = GetWall(X, Y, conLeft)
        Wall(70) = GetWall(X, Y, conLeft)
        Wall(92) = GetWall(X, Y, conDown)
        Wall(93) = GetWall(X, Y, conDown)
    End If
    X = varX + 5
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(75) = GetWall(X, Y, conDown)
        Wall(76) = GetWall(X, Y, conDown)
    End If
    X = varX - 5
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(94) = GetWall(X, Y, conDown)
        Wall(95) = GetWall(X, Y, conDown)
    End If
    X = varX + 6
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(73) = GetWall(X, Y, conDown)
        Wall(74) = GetWall(X, Y, conDown)
    End If
    X = varX - 6
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(96) = GetWall(X, Y, conDown)
        Wall(97) = GetWall(X, Y, conDown)
    End If
    X = varX + 7
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(71) = GetWall(X, Y, conDown)
        Wall(72) = GetWall(X, Y, conDown)
    End If
    X = varX - 7
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(98) = GetWall(X, Y, conDown)
        Wall(99) = GetWall(X, Y, conDown)
    End If
Case conLeft    'Use this if player is facing left
    X = varX
    Y = varY
    If CheckRange(X, Y) Then
        Wall(0) = GetWall(X, Y, conDown)
        Wall(1) = GetWall(X, Y, conUp)
        Wall(3) = GetWall(X, Y, conLeft)
    End If
    X = varX - 1
    Y = varY
    If CheckRange(X, Y) Then
        Wall(6) = GetWall(X, Y, conDown)
        Wall(7) = GetWall(X, Y, conUp)
        Wall(12) = GetWall(X, Y, conLeft)
    End If
    X = varX - 2
    Y = varY
    If CheckRange(X, Y) Then
        Wall(20) = GetWall(X, Y, conDown)
        Wall(21) = GetWall(X, Y, conUp)
        Wall(33) = GetWall(X, Y, conLeft)
    End If
    X = varX - 3
    Y = varY
    If CheckRange(X, Y) Then
        Wall(55) = GetWall(X, Y, conDown)
        Wall(56) = GetWall(X, Y, conUp)
        Wall(85) = GetWall(X, Y, conLeft)
    End If
    X = varX - 1
    Y = varY + 1
    If CheckRange(X, Y) Then
        Wall(2) = GetWall(X, Y, conRight)
        Wall(5) = GetWall(X, Y, conDown)
        Wall(10) = GetWall(X, Y, conLeft)
        Wall(11) = GetWall(X, Y, conLeft)
    End If
    X = varX - 2
    Y = varY + 1
    If CheckRange(X, Y) Then
        Wall(18) = GetWall(X, Y, conDown)
        Wall(19) = GetWall(X, Y, conDown)
        Wall(31) = GetWall(X, Y, conLeft)
        Wall(32) = GetWall(X, Y, conLeft)
    End If
    X = varX - 3
    Y = varY + 1
    If CheckRange(X, Y) Then
        Wall(53) = GetWall(X, Y, conDown)
        Wall(54) = GetWall(X, Y, conDown)
        Wall(83) = GetWall(X, Y, conLeft)
        Wall(84) = GetWall(X, Y, conLeft)
    End If
    X = varX - 1
    Y = varY - 1
    If CheckRange(X, Y) Then
        Wall(4) = GetWall(X, Y, conRight)
        Wall(8) = GetWall(X, Y, conUp)
        Wall(13) = GetWall(X, Y, conLeft)
        Wall(14) = GetWall(X, Y, conLeft)
    End If
    X = varX - 2
    Y = varY - 1
    If CheckRange(X, Y) Then
        Wall(22) = GetWall(X, Y, conUp)
        Wall(23) = GetWall(X, Y, conUp)
        Wall(34) = GetWall(X, Y, conLeft)
        Wall(35) = GetWall(X, Y, conLeft)
    End If
    X = varX - 3
    Y = varY - 1
    If CheckRange(X, Y) Then
        Wall(57) = GetWall(X, Y, conUp)
        Wall(58) = GetWall(X, Y, conUp)
        Wall(86) = GetWall(X, Y, conLeft)
        Wall(87) = GetWall(X, Y, conLeft)
    End If
    X = varX - 2
    Y = varY + 2
    If CheckRange(X, Y) Then
        Wall(9) = GetWall(X, Y, conRight)
        Wall(16) = GetWall(X, Y, conDown)
        Wall(17) = GetWall(X, Y, conDown)
        Wall(29) = GetWall(X, Y, conLeft)
        Wall(30) = GetWall(X, Y, conLeft)
    End If
    X = varX - 3
    Y = varY + 2
    If CheckRange(X, Y) Then
        Wall(50) = GetWall(X, Y, conDown)
        Wall(51) = GetWall(X, Y, conDown)
        Wall(52) = GetWall(X, Y, conDown)
        Wall(81) = GetWall(X, Y, conLeft)
        Wall(82) = GetWall(X, Y, conLeft)
    End If
    X = varX - 2
    Y = varY - 2
    If CheckRange(X, Y) Then
        Wall(15) = GetWall(X, Y, conRight)
        Wall(24) = GetWall(X, Y, conUp)
        Wall(25) = GetWall(X, Y, conUp)
        Wall(36) = GetWall(X, Y, conLeft)
        Wall(37) = GetWall(X, Y, conLeft)
    End If
    X = varX - 3
    Y = varY - 2
    If CheckRange(X, Y) Then
        Wall(59) = GetWall(X, Y, conUp)
        Wall(60) = GetWall(X, Y, conUp)
        Wall(61) = GetWall(X, Y, conUp)
        Wall(90) = GetWall(X, Y, conLeft)
        Wall(91) = GetWall(X, Y, conLeft)
    End If
    X = varX - 2
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(45) = GetWall(X, Y, conDown)
        Wall(27) = GetWall(X, Y, conLeft)
        Wall(28) = GetWall(X, Y, conLeft)
    End If
    X = varX - 3
    Y = varY + 3
    If CheckRange(X, Y) Then
        Wall(46) = GetWall(X, Y, conDown)
        Wall(47) = GetWall(X, Y, conDown)
        Wall(48) = GetWall(X, Y, conDown)
        Wall(49) = GetWall(X, Y, conDown)
        Wall(79) = GetWall(X, Y, conLeft)
        Wall(80) = GetWall(X, Y, conLeft)
    End If
    X = varX - 2
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(66) = GetWall(X, Y, conUp)
        Wall(38) = GetWall(X, Y, conLeft)
        Wall(39) = GetWall(X, Y, conLeft)
    End If
    X = varX - 3
    Y = varY - 3
    If CheckRange(X, Y) Then
        Wall(62) = GetWall(X, Y, conUp)
        Wall(63) = GetWall(X, Y, conUp)
        Wall(64) = GetWall(X, Y, conUp)
        Wall(65) = GetWall(X, Y, conUp)
        Wall(90) = GetWall(X, Y, conLeft)
        Wall(91) = GetWall(X, Y, conLeft)
    End If
    X = varX - 3
    Y = varY + 4
    If CheckRange(X, Y) Then
        Wall(26) = GetWall(X, Y, conRight)
        Wall(41) = GetWall(X, Y, conDown)
        Wall(42) = GetWall(X, Y, conDown)
        Wall(43) = GetWall(X, Y, conDown)
        Wall(44) = GetWall(X, Y, conDown)
        Wall(77) = GetWall(X, Y, conLeft)
        Wall(78) = GetWall(X, Y, conLeft)
    End If
    X = varX - 3
    Y = varY - 4
    If CheckRange(X, Y) Then
        Wall(40) = GetWall(X, Y, conRight)
        Wall(67) = GetWall(X, Y, conUp)
        Wall(68) = GetWall(X, Y, conUp)
        Wall(69) = GetWall(X, Y, conUp)
        Wall(70) = GetWall(X, Y, conUp)
        Wall(92) = GetWall(X, Y, conLeft)
        Wall(93) = GetWall(X, Y, conLeft)
    End If
    X = varX - 3
    Y = varY + 5
    If CheckRange(X, Y) Then
        Wall(75) = GetWall(X, Y, conLeft)
        Wall(76) = GetWall(X, Y, conLeft)
    End If
    X = varX - 3
    Y = varY - 5
    If CheckRange(X, Y) Then
        Wall(94) = GetWall(X, Y, conLeft)
        Wall(95) = GetWall(X, Y, conLeft)
    End If
    X = varX - 3
    Y = varY + 6
    If CheckRange(X, Y) Then
        Wall(73) = GetWall(X, Y, conLeft)
        Wall(74) = GetWall(X, Y, conLeft)
    End If
    X = varX - 3
    Y = varY - 6
    If CheckRange(X, Y) Then
        Wall(96) = GetWall(X, Y, conLeft)
        Wall(97) = GetWall(X, Y, conLeft)
    End If
    X = varX - 3
    Y = varY + 7
    If CheckRange(X, Y) Then
        Wall(71) = GetWall(X, Y, conLeft)
        Wall(72) = GetWall(X, Y, conLeft)
    End If
    X = varX - 3
    Y = varY - 7
    If CheckRange(X, Y) Then
        Wall(98) = GetWall(X, Y, conLeft)
        Wall(99) = GetWall(X, Y, conLeft)
    End If
End Select
End Sub

'Check to see if the coordinates are on the map
Private Function CheckRange(ByVal X As Integer, ByVal Y As Integer) As Boolean
CheckRange = ((X >= 0 And X <= 19) And (Y >= 0 And Y <= 19))
End Function

'Move the player forwards
Private Sub GoForward()
'Test if the player can move
'Then move the player if true
Select Case varDir
Case conUp
    If Not (GetWall(varX, varY, conUp)) Then
        varY = varY - 1
    End If
Case conRight
    If Not (GetWall(varX, varY, conRight)) Then
        varX = varX + 1
    End If
Case conDown
    If Not (GetWall(varX, varY, conDown)) Then
        varY = varY + 1
    End If
Case conLeft
    If Not (GetWall(varX, varY, conLeft)) Then
        varX = varX - 1
    End If
End Select
Call HaveMoved
End Sub

'Move the player backwards
Private Sub GoBack()
'Test if the player can move
'Then move the player if true
Select Case varDir
Case conUp
    If Not (GetWall(varX, varY, conDown)) Then
        varY = varY + 1
    End If
Case conRight
    If Not (GetWall(varX, varY, conLeft)) Then
        varX = varX - 1
    End If
Case conDown
    If Not (GetWall(varX, varY, conUp)) Then
        varY = varY - 1
    End If
Case conLeft
    If Not (GetWall(varX, varY, conRight)) Then
        varX = varX + 1
    End If
End Select
Call HaveMoved
End Sub

'Turn the player right
Private Sub TurnRight()
'Change the player's direction
Select Case varDir
Case conUp
    varDir = conRight
Case conRight
    varDir = conDown
Case conDown
    varDir = conLeft
Case conLeft
    varDir = conUp
End Select
'Call turning code
Call HaveTurned
End Sub

'Turn the player left
Private Sub TurnLeft()
'Change the player's direction
Select Case varDir
Case conUp
    varDir = conLeft
Case conLeft
    varDir = conDown
Case conDown
    varDir = conRight
Case conRight
    varDir = conUp
End Select
'Call turning code
Call HaveTurned
End Sub

'Draw the player's icon
Private Sub DrawPlayer()
'Load the appropriate picture from file
Select Case varDir
Case conUp
    imgPlayer.Picture = LoadPicture(App.Path & "\up.gif")
Case conRight
    imgPlayer.Picture = LoadPicture(App.Path & "\right.gif")
Case conDown
    imgPlayer.Picture = LoadPicture(App.Path & "\down.gif")
Case conLeft
    imgPlayer.Picture = LoadPicture(App.Path & "\left.gif")
End Select
'Place it
imgPlayer.Left = 331 + (varX * 15)
imgPlayer.Top = 11 + (varY * 15)
End Sub

'Draw the exit
Private Sub Draw2DExit()
'Load the picture from file
img2DExit.Picture = LoadPicture(App.Path & "\exit2D.jpg")
'Place it
img2DExit.Left = 331 + (varExitX * 15)
img2DExit.Top = 11 + (varExitY * 15)
End Sub

Private Sub NextLevel()
'Go to the next level!
varLevel = varLevel + 1
Me.Caption = "Maintenance Tunnels of Doooooom!!! (Level " & varLevel & ")"
'Generate a new maze
Call MakeMaze
'Place the player in a random location
varX = Int(Rnd * 20)
varY = Int(Rnd * 20)
varDir = Int(Rnd * 4)
'Place the exit in a random location
varExitX = Int(Rnd * 20)
varExitY = Int(Rnd * 20)
'Draw the 2D view of the maze
Call Draw2D
'Draw the exit
Call Draw2DExit
'Draw the player's icon
Call DrawPlayer
'Draw the 3D view of the maze
Call Draw3D
End Sub

Private Sub NewGame()
varLevel = 0
Call NextLevel
Call CreateChar
End Sub

Private Sub HaveMoved()
'Draw the 3D view
Call Draw3D
'Draw the player's icon
Call DrawPlayer
If varHealth < varMaxHealth Then
    varHealth = varHealth - Int(-varMaxHealth / 50)
End If
'Show the player's stats
Call ShowStats
'Randomly get attacked by monsters
Call RunCombat
End Sub

Private Sub HaveTurned()
'Draw the 3D view
Call Draw3D
'Draw the player's icon
Call DrawPlayer
End Sub

'Take a guess
Private Sub debuginfo()
If monHealth <> 0 Then
    lblDebug.Caption = "Attack: " & monAttack & vbCrLf & "Agility: " & monAgility & vbCrLf & "Health: " & monHealth
Else
    lblDebug.Caption = "No Monster"
End If
End Sub

'Shows a help screen describing how to play the game
Private Sub ShowHelp()
Dim varHelp As String, varTemp As String
Dim X As Integer
Open App.Path & "\help.txt" For Input As #1
If Not (EOF(1)) Then
    Line Input #1, varHelp
End If
Do Until EOF(1)
    Line Input #1, varTemp
    varHelp = varHelp & vbCrLf & varTemp
Loop
Close #1
MsgBox varHelp, vbQuestion, "Help"
End Sub

'Check to see if the player has reached the exit
Private Sub CheckExit()
If varX = varExitX And varY = varExitY Then
    Call DispInfo("You travel deeper into the tunnels...")
    Call NextLevel
Else
    Call DispInfo("There is no exit here.")
End If
End Sub

'Draw the exits on the floors
Private Sub Draw3DExit(ByVal X As Integer)
imgExit3D(X).Picture = LoadPicture(App.Path & "\exit" & imgExit3D(X).Width & ".jpg")
Select Case varDir
Case conUp
    If varX = varExitX And varY - X = varExitY Then
        imgExit3D(X).Visible = True
    End If
Case conRight
    If varX + X = varExitX And varY = varExitY Then
        imgExit3D(X).Visible = True
    End If
Case conDown
    If varX = varExitX And varY + X = varExitY Then
        imgExit3D(X).Visible = True
    End If
Case conLeft
    If varX - X = varExitX And varY = varExitY Then
        imgExit3D(X).Visible = True
    End If
End Select
End Sub

'Monster combat code
Private Sub RunCombat()
'Generate random encounters
If varLevel < 200 Then
    If Int(Rnd * 1000) + 1 > 50 + varLevel Then
        Exit Sub
    End If
Else
    If Int(Rnd * 1000) + 1 > 250 Then
        Exit Sub
    End If
End If
'Create a monster
Dim X As Integer
monAttack = varLevel
monAgility = varLevel
monHealth = varLevel
For X = 1 To varPlayerLevel - 2
    monAttack = monAttack + Int(Rnd * 3) + 1
    monAttack = monAgility + Int(Rnd * 3) + 1
    monHealth = monHealth + Int(Rnd * 8) + 3
Next X
imgMonster.Picture = LoadPicture(App.Path & "\monster.jpg")
imgMonster.Visible = True
pbrMonster.Visible = True
pbrMonster.Max = monHealth
pbrMonster.Value = monHealth
Call debuginfo
Call DispInfo("You've been attacked!")
cmdAttack.Enabled = True
cmdRun.Enabled = True
Call debuginfo
End Sub

'Create a new player character
Private Sub CreateChar()
varPlayerLevel = 1
varExp = 0
varAttack = 3
varAgility = 3
varMaxHealth = 5
varHealth = 5
Call ShowStats
End Sub

'Next Player level reached
Private Sub LevelUp()
varPlayerLevel = varPlayerLevel + 1
varExp = varExp - 1000   'Reset experience
varAttack = varAttack + Int(Rnd * 3) + 1    'Add more attack ability (1-3)
varAgility = varAgility + Int(Rnd * 3) + 1  'Add more agility ability (1-3)
varMaxHealth = varMaxHealth + Int(Rnd * 8) + 3  'Add more max health (3-10)
If varExp > ExpToLvlUp Then
    Call LevelUp
End If
End Sub

'Get info on 2D exit
Private Sub img2DExit_Click()
Call DispInfo("The Exit")
End Sub

Private Sub imgExit3D_Click(Index As Integer)
Call DispInfo("The Exit")
End Sub

Private Sub imgMonster_Click()
Call DispInfo("A Monster!")
End Sub

'Get info on 2D character
Private Sub imgPlayer_Click()
Call DispInfo("Your Character")
End Sub

'Show the player's statistics
Private Sub ShowStats()
pbrHealth.Max = varMaxHealth
pbrHealth.Value = varHealth
lblAttack.Caption = varAttack
lblAgility.Caption = varAgility
lblLevel.Caption = varPlayerLevel
lblExp.Caption = varExp & "/" & ExpToLvlUp
Call CalcScore
lblScore = varScore
End Sub

'Player has defeated a monster
Private Sub KillMonster()
Call DispInfo("You've defeated the monster!")
varExp = varExp + monAttack + monAgility
pbrMonster.Visible = False
imgMonster.Visible = False
cmdAttack.Enabled = False
cmdRun.Enabled = False
If varExp > ExpToLvlUp Then
    Call LevelUp
End If
Call ShowStats
End Sub

'Monster attacks
Private Sub MonsterAttack()
If monAttack + Int(Rnd * 21) - 10 > varAgility Then
    Call DispInfo("The monster hit you!")
    varHealth = varHealth - Int(Rnd * monAttack) - 1
Else
    Call DispInfo("The monster missed you!")
End If
If varHealth < 0 Then varHealth = 0
pbrHealth.Value = varHealth
If varHealth = 0 Then
    Call KillPlayer
End If
End Sub

'Display text in the info scroller
Private Sub DispInfo(ByVal Info As String)
lblInfo(0) = OldInfo
OldInfo = Info
lblInfo(1) = OldInfo
End Sub

'Clear info box
Private Sub lblInfo_Click(Index As Integer)
lblInfo(0) = ""
lblInfo(1) = ""
End Sub

'Player gets killed
Private Sub KillPlayer()
varLost = True
cmdAttack.Enabled = False
cmdRun.Enabled = False
Call DispInfo("You have died")
Call DispInfo("Press F2 to start a new game")
End Sub

'Player escapes from a monster
Private Sub EscapeMonster()
Call DispInfo("You run for your life!")
pbrMonster.Visible = False
imgMonster.Visible = False
cmdAttack.Enabled = False
cmdRun.Enabled = False
End Sub

'Calculate Score
Private Sub CalcScore()
varScore = (varLevel - 1) * Int(ExpToLvlUp / 100)
varScore = varScore + (varPlayerLevel - 1) * ExpToLvlUp
varScore = varScore + varExp
End Sub
