[Setup]
#define AppVersion "3.0.10"
#define AppBuild "1.02"
#define BookletVersion "2.56"
AppName=Silas
AppVerName=Silas Version {#AppVersion} build {#AppBuild}
DefaultDirName={commonpf}\Silas
DefaultGroupName=Silas
LicenseFile=.\HowToInstall.rtf
OutputDir=.\Output
OutputBaseFilename=Silas-v{#AppVersion}-{#AppBuild}-Setup
SetupIconFile=.\Silas1.ico
Compression=lzma
SolidCompression=true
DisableStartupPrompt=false
ShowLanguageDialog=yes
DisableFinishedPage=yes

[Languages]
Name: english; MessagesFile: compiler:Default.isl
Name: brazilianportuguese; MessagesFile: compiler:Languages\BrazilianPortuguese.isl
Name: catalan; MessagesFile: compiler:Languages\Catalan.isl
Name: czech; MessagesFile: compiler:Languages\Czech.isl
Name: danish; MessagesFile: compiler:Languages\Danish.isl
Name: dutch; MessagesFile: compiler:Languages\Dutch.isl
Name: finnish; MessagesFile: compiler:Languages\Finnish.isl
Name: french; MessagesFile: compiler:Languages\French.isl
Name: german; MessagesFile: compiler:Languages\German.isl
Name: hungarian; MessagesFile: compiler:Languages\Hungarian.isl
Name: italian; MessagesFile: compiler:Languages\Italian.isl
Name: norwegian; MessagesFile: compiler:Languages\Norwegian.isl
Name: polish; MessagesFile: compiler:Languages\Polish.isl
Name: portuguese; MessagesFile: compiler:Languages\Portuguese.isl
Name: russian; MessagesFile: compiler:Languages\Russian.isl
; Name: slovak; MessagesFile: compiler:Languages\Slovak.isl
Name: slovenian; MessagesFile: compiler:Languages\Slovenian.isl

[Messages]
;These messages override default.isl and the [language].isl files so when we internationalize we'll have to become more sophisticated.
SelectDirLabel3=Setup will install the files for [name] Scripture template into the following folder. (This should NOT be your Paratext settings folder.)
SelectTasksLabel2=Select the additional tasks you would like Setup to perform while installing [name], then click Next. (Leave these boxes checked if you're not sure what to do here.)
ReadyLabel2a=IMPORTANT: You *must* click on the "Install" button *in that doc* to finish installing Silas properly, even if you are upgrading from a previous version. Click Install (below) now to continue with the installation, or click Back if you want to review or change any settings.
ReadyLabel1=Setup is now ready to begin installing [name] on your computer. After the files are copied, "Install Silas Template.doc" will open for you in Word.

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Languages:
;Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}
;uncomment this to allow selection or not of the quicklaunchicons; you also need to add a Tasks: statement below under [Icons] (see desktopicons there)

[Files]
Source: .\Install Silas.doc; DestDir: {app}; Flags: ignoreversion
Source: .\Silas.dot; DestDir: {app}; Flags: ignoreversion
Source: .\usfm_sb.sty; DestDir: {app}; Flags: ignoreversion
Source: .\USFM_draft.STY; DestDir: {app}; Flags: ignoreversion
Source: .\2.1_Styles.txt; DestDir: {app}; Flags: ignoreversion
Source: .\2.05_Styles.txt; DestDir: {app}; Flags: ignoreversion
Source: .\2.35-to-3.0.10_Styles.txt; DestDir: {app}; Flags: ignoreversion
Source: .\Original_Styles.txt; DestDir: {app}; Flags: ignoreversion
Source: .\Recent_Styles.txt; DestDir: {app}; Flags: ignoreversion
Source: .\SCR_V2_Styles.txt; DestDir: {app}; Flags: ignoreversion
Source: .\PNG_Styles.txt; DestDir: {app}; Flags: ignoreversion
Source: .\Custom_Styles.txt; DestDir: {app}; Flags: ignoreversion
Source: .\Replaced_Styles.txt; DestDir: {app}; Flags: ignoreversion
Source: .\TE_Styles.txt; DestDir: {app}; Flags: ignoreversion
Source: .\WordSend_Styles.txt; DestDir: {app}; Flags: ignoreversion
Source: .\Checking Table.doc; DestDir: {app}; Flags: ignoreversion
Source: .\Revision History.txt; DestDir: {app}; Flags: ignoreversion
Source: .\MIT license.txt; DestDir: {app}; Flags: ignoreversion
Source: .\Adding pictures to Scripture files in Word.doc; DestDir: {app}; Flags: ignoreversion
Source: .\Using Silas.doc; DestDir: {app}; Flags: ignoreversion
Source: .\FAQ Silas.doc; DestDir: {app}; Flags: ignoreversion
Source: .\Problem report, Silas.txt; DestDir: {app}; Flags: ignoreversion
Source: .\Quick Trial Booklet.doc; DestDir: {app}\Booklet_Macros; Flags: ignoreversion
Source: .\Trial A4 (A5) booklet to get settings right for Booklet Printing Macro.doc; DestDir: {app}\Booklet_Macros; Flags: ignoreversion
Source: .\Word Booklet Macros{#BookletVersion}.doc; DestDir: {app}\Booklet_Macros; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: {group}\Frequently Asked Questions about Silas Scripture Template; Filename: {app}\FAQ Silas.doc; WorkingDir: {app}
Name: {group}\Adding Pictures to Scripture Booklets; Filename: {app}\Adding pictures to Scripture files in Word.doc; WorkingDir: {app}
Name: {group}\How to use Silas Scripture Template; Filename: {app}\Using Silas.doc; WorkingDir: {app}
Name: {group}\Install Silas; Filename: {app}\Install Silas.doc; WorkingDir: {app}
Name: {group}\Revision History; Filename: {app}\Revision History.txt; WorkingDir: {app}
Name: {group}\MIT license; Filename: {app}\MIT license.txt; WorkingDir: {app}
Name: {group}\Report a problem with Silas; Filename: {app}\Problem report, Silas.txt; WorkingDir: {app}
Name: {group}\Booklet_Macros\Quick Trial Booklet; Filename: {app}\Booklet_Macros\Quick Trial Booklet.doc; WorkingDir: {app}\Booklet_Macros
Name: {group}\Booklet_Macros\Trial A4 (A5) booklet to get settings right for Booklet Printing Macro; Filename: {app}\Booklet_Macros\Trial A4 (A5) booklet to get settings right for Booklet Printing Macro.doc; WorkingDir: {app}\Booklet_Macros
Name: {group}\Booklet_Macros\Install Word Booklet Macros; Filename: {app}\Booklet_Macros\Word Booklet Macros{#BookletVersion}.doc; WorkingDir: {app}\Booklet_Macros
Name: {group}\{cm:UninstallProgram,Silas}; Filename: {uninstallexe}
Name: {userdesktop}\Adding Pictures to Scripture Booklets; Filename: {app}\Adding pictures to Scripture files in Word.doc; WorkingDir: {app}; Tasks: desktopicon; Languages:
Name: {userdesktop}\Silas Scripture Template Instructions; Filename: {app}\Using Silas.doc; WorkingDir: {app}; Tasks: desktopicon; Languages:
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\Adding Pictures to Scripture Files with Silas; Filename: {app}\Adding pictures to Scripture files in Word.doc; Tasks: desktopicon; WorkingDir: {app}
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\Silas Scripture Template Instructions; Filename: {app}\Using Silas.doc; WorkingDir: {app}
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\Frequently Asked Questions about Silas Scripture Template; Filename: {app}\FAQ Silas.doc; WorkingDir: {app}

[Run]
Filename: {app}\Install Silas.doc; Description: "{cm:LaunchProgram, ""Install Silas.doc"" -- you must not uncheck this box!}"; Flags: shellexec
