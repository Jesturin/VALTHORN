// TestDlg.cpp : implementation file
//

#include "stdafx.h"
#include "Test.h"
#include "TestDlg.h"

// Take enigma_ide.h and enigma_ide.lib/enigma_ide64.lib from Enigma Protector installation folder EnigmaSDK\VC subfolder
#include "enigma_ide.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// CTestDlg dialog

CTestDlg::CTestDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CTestDlg::IDD, pParent)
{
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CTestDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Control(pDX, IDC_LIST_STRINGS, lbStrings);
}

BEGIN_MESSAGE_MAP(CTestDlg, CDialog)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	//}}AFX_MSG_MAP
	ON_BN_CLICKED(ID_GETSTRINGS, &CTestDlg::OnBnClickedGetstrings)
END_MESSAGE_MAP()


// CTestDlg message handlers

BOOL CTestDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon

	if (EP_CheckupIsProtected())
	{
		SetDlgItemText(IDC_STATIC_STATUS, L"Protected");
	}
	else
	{
		SetDlgItemText(IDC_STATIC_STATUS, L"NOT PROTECTED!");
	}	

	return TRUE;  // return TRUE  unless you set the focus to a control
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CTestDlg::OnPaint()
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting

		SendMessage(WM_ICONERASEBKGND, reinterpret_cast<WPARAM>(dc.GetSafeHdc()), 0);

		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

// The system calls this function to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CTestDlg::OnQueryDragIcon()
{
	return static_cast<HCURSOR>(m_hIcon);
}


CString GetWideProtectedStringByID(int AID)
{
	CString res;

	int len = EP_ProtectedStringByID(AID, NULL, 0);
	if (len > 0)
	{
		wchar_t* buf = new wchar_t[len >> 1];
		memset(buf, 0, len);
		if (EP_ProtectedStringByID(AID, (const char*)buf, len) > 0)
		{
			res = CString(buf, len >> 1);
		}
		delete[] buf;		
	}
	return res;
}

CString GetWideProtectedStringByKey(char* AKey)
{
	CString res;

	int len = EP_ProtectedStringByKey(AKey, NULL, 0);
	if (len > 0)
	{
		wchar_t* buf = new wchar_t[len >> 1];
		memset(buf, 0, len);
		if (EP_ProtectedStringByKey(AKey, (const char*)buf, len) > 0)
		{
			res = CString(buf, len >> 1);
		}
		delete[] buf;		
	}
	return res;
}

CString GetAnsiProtectedStringByID(int AID)
{
	CString res;

	int len = EP_ProtectedStringByID(AID, NULL, 0);
	if (len > 0)
	{
		char* buf = new char[len];
		memset(buf, 0, len);
		if (EP_ProtectedStringByID(AID, (const char*)buf, len) > 0)
		{
			res = CString(buf, len);
		}
		delete[] buf;		
	}
	return res;
}

CString GetAnsiProtectedStringByKey(char* AKey)
{
	CString res;

	int len = EP_ProtectedStringByKey(AKey, NULL, 0);
	if (len > 0)
	{
		char* buf = new char[len];
		memset(buf, 0, len);
		if (EP_ProtectedStringByKey(AKey, (const char*)buf, len) > 0)
		{
			res = CString(buf, len);
		}
		delete[] buf;		
	}
	return res;
}

void CTestDlg::AddMessage(CString AMessage)
{
	if (!AMessage.IsEmpty())
	{
		lbStrings.AddString(L"- value: " + AMessage);
	}
	else
	{
		lbStrings.AddString(L"- string is not found!");
	}
}

void CTestDlg::OnBnClickedGetstrings()
{
	//
	lbStrings.AddString(L"Get ansi string by ID = 1...");
	AddMessage(GetAnsiProtectedStringByID(1));

	lbStrings.AddString(L"Get ansi string by Key = pGmGqVZS...");
	AddMessage(GetAnsiProtectedStringByKey("pGmGqVZS"));	

	lbStrings.AddString(L"Get wide string by ID = 3...");
	AddMessage(GetWideProtectedStringByID(3));

	lbStrings.AddString(L"Get wide string by Key = pjhGG21J...");
	AddMessage(GetWideProtectedStringByKey("pjhGG21J"));	

}
