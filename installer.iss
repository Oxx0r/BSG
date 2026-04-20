[Setup]
AppName=Battlestar Galactica
AppVersion={{VERSION}}
AppPublisher=Oxx0r
AppSupportURL=https://github.com/Oxx0r/BSG
DefaultDirName={userdocs}\My Games\Tabletop Simulator\Mods
DefaultGroupName=Battlestar Galactica

; Diese Zeilen aktivieren die Pfadauswahl wieder:
DisableDirPage=no
UsePreviousAppDir=no

; Pfade zu den Dateien im Unterordner "installer"
SetupIconFile=installer\bsg.ico
WizardImageFile=installer\banner.bmp
WizardSmallImageFile=installer\logo_small.bmp
InfoBeforeFile=installer\readme_vorher.txt
InfoAfterFile=installer\danke.txt

UninstallDisplayIcon={app}\bsg.ico
Compression=lzma2
SolidCompression=yes
OutputDir=.
OutputBaseFilename=Battlestar_Galactica_Installer

[InstallDelete]
; Löscht den "Images Raw"-Cache, damit TTS die neuen Texturen sofort erkennt
Type: files; Name: "{userdocs}\My Games\Tabletop Simulator\Mods\Images Raw\*"

[Files]
Source: "Mods\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs
; WICHTIG: Das Icon mit kopieren, damit die Deinstallation ein Icon hat
Source: "installer\bsg.ico"; DestDir: "{app}"; Flags: ignoreversion
