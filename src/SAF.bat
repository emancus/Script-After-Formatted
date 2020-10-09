::----------------------------------------------------------
::		HidroSaphire Script for Install
::----------------------------------------------------------
@echo off


::----------------------TITLE OF WINDOWS--------------------------------------------------------------------------------------
title HidroSaphrie SAF - (Script After Formatted)


::----------------------LINK VARIABLE INIALIZATION----------------------------------------------------------------------------
:: Variabili per i link
	::Firefox non puo' avere una variabile link perche' ha un "&" nel link che sballa l'output sul prompt
	SET l_tor=https://www.torproject.org/dist/torbrowser/10.0/torbrowser-install-win64-10.0_it.exe
	SET l_player=http://download.videolan.org/pub/videolan/vlc/2.2.8/win64/vlc-2.2.8-win64.exe
	SET l_spotify=https://download.scdn.co/SpotifySetup.exe
	SET l_rar=https://www.winrar.it/prelievo_ok.php?url=prelievo/WinRAR-x64-591it.exe
	SET l_downloader=https://jdownloader.org/dl?v=101
	SET l_torrent=https://download-hr.utorrent.com/track/stable/endpoint/utorrent/os/windows
	SET l_music=https://download.mp3tag.de/mp3tagv303setup.exe
	SET l_spek=https://github.com/alexkay/spek/releases/download/v0.8.2/spek-0.8.2.zip
	SET l_file=http://www.sherrodcomputers.com/downloads/FileRenamerBasic.exe
	SET l_sync=https://github.com/canton7/SyncTrayzor/releases/download/v1.1.24/SyncTrayzorSetup-x64.exe
	SET l_vm=https://download.virtualbox.org/virtualbox/6.1.14/VirtualBox-6.1.14-140239-Win.exe
	SET l_remoto=https://download.teamviewer.com/full
	SET l_steam=https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe
	SET l_epic=https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi
	SET l_capture=https://cdn-fastly.obsproject.com/downloads/OBS-Studio-26.0-Full-Installer-x64.exe
	SET l_atom=https://atom.io/download/windows_x64
	SET l_notepad=https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.9/npp.7.9.Installer.x64.exe
	SET l_rainmeter=https://github.com/rainmeter/rainmeter/releases/download/v4.4.0.3404/Rainmeter-4.4-r3404-beta.exe
	SET l_rocket=https://punklabs.com/downloads/RocketDock-v1.3.5.exe
	SET l_psnow=https://download-psnow.playstation.com/downloads/psnow/pc/latest
	SET l_ds4windows=https://github.com/Jays2Kings/DS4Windows/releases/download/v1.4.52/DS4Windows.zip
	SET l_afterburner=http://download.msi.com/uti_exe/vga/MSIAfterburnerSetup.zip
	SET l_amd=https://www.amd.com/en/support
	SET l_nvidia=https://www.nvidia.it/Download/index.aspx?lang=it
	SET l_kms1=https://katfile.com/v9hm4vpdo7d8/KMS_360_Pro_4644.zip.html
	SET l_kms2=https://rapidgator.net/file/2fb3e86836ea43071a026138725a1fdb/KMS_360_Pro_4644.zip

::----------------------EXE VARIABLE INIALIZATION----------------------------------------------------------------------------
:: Variabili per gli exe
	SET e_firefox="Firefox Installer.exe"
	SET e_tor=torbrowser-install-win64-10.0_it.exe
	SET e_player=vlc-2.2.8-win64.exe
	SET e_spotify=SpotifySetup.exe
	SET e_rar=WinRAR-x64-591it.exe
	SET e_downloader=JDownloaderSetup.exe
	SET e_torrent=uTorrent.exe
	SET e_music=mp3tagv303setup.exe
	SET e_file=FileRenamerBasic.exe
	SET e_sync=SyncTrayzorSetup-x64.exe
	SET e_vm=VirtualBox-6.1.14-140239-Win.exe
	SET e_remoto=TeamViewer_Setup.exe
	SET e_steam=SteamSetup.exe
	SET e_epic=EpicInstaller-10.18.8.msi
	SET e_capture=OBS-Studio-26.0-Full-Installer-x64.exe
	SET e_atom=AtomSetup-x64.exe
	SET e_notepad=npp.7.9.Installer.x64.exe
	SET e_rainmeter=Rainmeter-4.4-r3404-beta.exe
	SET e_rocket=RocketDock-v1.3.5.exe
	SET e_psnow=PlayStationNow-11.2.2.exe

::----------------------VARIABLE INITIALIZATION-------------------------------------------------------------------------------
:: Non è necessario, ma permette di visualizzare le variabili inizializzate a 0 nella debug room
	SET browser=0
	SET tor=0
	SET player=0
	SET rar=0
	SET downloader=0
	SET torrent=0
	SET music=0
	SET file=0
	SET sync=0
	SET vm=0
	SET remoto=0
	SET steam=0
	SET epic=0
	SET capture=0
	SET atom=0
	SET notepad=0
	SET rainmeter=0
	SET rocket=0
	SET psnow=0
	SET t=0


::----------------------PRINT TITLE-------------------------------------------------------------------------------------------

COLOR 9
ECHO 			  *********************************************************
ECHO 			 *	   HidroSaphire SAF - Script After Formatted	   *
ECHO 			*************************************************************


::----------------------PRINT MENU [PAG 1]------------------------------------------------------------------------------------------
:menu
	ECHO [31m[Pag 1/2][0m
	ECHO [32m--------------------------------------------[Navigazione]--------------------------------------------
	ECHO [36mMenu[0m		1) Mostra Pagina 1	2) Mostra Pagina 2
	ECHO [32m---------------------------------------------[Programmi]----------------------------------------------
	ECHO [36m		------Scarica------	  ----Installa---	----Cancella Installer----[0m
	ECHO [36mBrowser[0m		B1) Firefox x64		  B2) Firefox		B3) Firefox installer
	ECHO			B4) Tor (ITA) x64	  B5) Tor		B6) Tor installer
	ECHO [36mPlayer[0m		P1) VLC v2.2.8 x64	  P2) VLC		P3) VLC installer
	ECHO 		P4) Spotify
	ECHO [36mRAR[0m		R1) WinRAR v5.9.1 x64	  R2) WinRAR		R3) WinRAR installer
	ECHO [36mDownloader[0m	J1) JDownloader 2 x64	  J2) JDown 2		J3) JDownloader 2 installer
	ECHO [36mTorrent[0m		T1) uTorrent x86	  T2) uTorrent		T3) uTorrent installer
	ECHO [36mMusica[0m		M1) Mp3tag v3.02 x86	  M2) Mp3tag		M3) Mp3tag installer
	ECHO 		M4) Spek v.0.8.2 x86
	ECHO [36mDesk Remoto[0m	D1) TeamViewer x86	  D2) TeamViewer 	D3) TeamViewer installer
	ECHO [36mFileRenamer[0m	F1) FileRen Basic v6.3 	  F2) FileRenamer	F3) FileRenamer installer
	ECHO [36mSyncronizer[0m	S1) SyncTrayzor x64 	  S2) SyncTrayzor	S3) SyncTrayzor installer
	ECHO [36mVM[0m		V1) VirtualBox v6.1.14    V2) VirtualBox	V3) VirtualBox Installer
	ECHO [36mScreen Capt[0m	O1) OBS Studio x64        O2) OBS Studio 	O3) OBS Studio installer
	ECHO									TT) Cancella tutti
	ECHO [32m----------------------------------------------[Extra]--------------------------------------------------
	ECHO [32mAltro[0m		I) Informazioni	   C) Clear Screen    PC) InfoPC     D) DebugRoom    E) Easter Egg
	ECHO 0) Esci
	Goto :letsgo

::----------------------PRINT MENU [PAG 2]------------------------------------------------------------------------------------------
:menu2
	ECHO [31m[Pag 2/2][0m
	ECHO [32m--------------------------------------------[Navigazione]--------------------------------------------
	ECHO [36mMenu[0m		1) Mostra Pagina 1	2) Mostra Pagina 2
	ECHO [32m---------------------------------------------[Programmi]----------------------------------------------
	ECHO [36m		------Scarica------	  ----Installa---	----Cancella Installer----[0m
	ECHO [36mPC Monitor[0m	A1) MSI Afterburner
	ECHO [36mGiochi[0m		G1) Steam Client x86	  G2) Steam 		G3) Steam installer
	ECHO			G4) Epic Games	  	  G5) Epic Games 	G6) Epic Games installer
	ECHO [36mPlaystation[0m	G7) PlayStation Now	  G8) PlayStation Now	G9) PlayStation Now installer
	ECHO [36mController[0m	D4) DS4Windows
	ECHO [36mText Editor[0m	E1) Atom x64		  E2) Atom 		E3) Atom installer
	ECHO			E4) Notepad++ x64	  E5) Notepad++ 	E6) Notepad installer
	ECHO			E7) Lista pacchetti aggiuntivi Atom
	ECHO [36mCustomization[0m	C1) Rainmeter 4.4 Beta	  C2) Rainmeter 	C3) Rainmeter installer
	ECHO 		C4) RocketDock v1.3.5 x86 C5) RocketDock 	C6) RocketDock installer
	ECHO									TT) Cancella tutti
	ECHO [32m---------------------------------------------[Utility]----------------------------------------------
	ECHO [36mLink[0m		Q1) Driver video AMD	  	Q2) Driver Video NVIDIA
	ECHO			Q3) KMS 360 Pro 4644 Link1	Q4) KMS 360 Pro 4644 Link2
	ECHO [36mUAC[0m		U1) Disabilita UAC	  U2) Abilita UAC
	ECHO [36mMix[0m		TR) Controllo TRIM
	ECHO [36mWin Update[0m	WU1) WU Riconfig	  WU2) WU hard-reset
	ECHO [36mWin Store[0m	WS1) WS Reset
	ECHO [32m----------------------------------------------[Extra]--------------------------------------------------
	ECHO [32mAltro[0m		I) Informazioni	   C) Clear Screen    PC) InfoPC     D) DebugRoom    E) Easter Egg
	ECHO 0) Esci
	Goto :letsgo

::----------------------LOOP-------------------------------------------------------------------------------------------
:letsgo
	set /P c=

	::----MENU---------------------------------------
	if "%c%" EQU "1"	test&cls
	if "%c%" EQU "1"	(Goto :menu)
	if "%c%" EQU "2"	test&cls
	if "%c%" EQU "2"	(Goto :menu2)
	::----PROGRAM-----------------------------------
	if "%c%" EQU "B1" START https://download.mozilla.org/"?product=firefox-stub&os=win&lang=it"	::----Browser------------
	if "%c%" EQU "b1" START https://download.mozilla.org/"?product=firefox-stub&os=win&lang=it"
	if "%c%" EQU "B2" Goto :browser
	if "%c%" EQU "b2" Goto :browser
	if "%c%" EQU "B3" Goto :delbrowser
	if "%c%" EQU "b3" Goto :delbrowser
	if "%c%" EQU "B4" START %l_tor%
	if "%c%" EQU "b4" START %l_tor%
	if "%c%" EQU "B5" Goto :tor
	if "%c%" EQU "b5" Goto :tor
	if "%c%" EQU "B6" Goto :deltor
	if "%c%" EQU "b6" Goto :deltor
	if "%c%" EQU "P1" START %l_player%		::----PLAYER-------------------------------------
	if "%c%" EQU "p1" START %l_player%
	if "%c%" EQU "P2" Goto :player
	if "%c%" EQU "p2" Goto :player
	if "%c%" EQU "P3" Goto :delplayer
	if "%c%" EQU "p3" Goto :delplayer
	if "%c%" EQU "P4" START %l_spotify%		
	if "%c%" EQU "p4" START %l_spotify%
	if "%c%" EQU "R1" START %l_rar%			::----RAR----------------------------------------
	if "%c%" EQU "r1" START %l_rar%
	if "%c%" EQU "R2" Goto :rar
	if "%c%" EQU "r2" Goto :rar
	if "%c%" EQU "R3" Goto :delrar
	if "%c%" EQU "r3" Goto :delrar
	if "%c%" EQU "J1" START %l_downloader%		::----DOWNLOADER---------------------------------
	if "%c%" EQU "j1" START %l_downloader%
	if "%c%" EQU "J2" Goto :downloader
	if "%c%" EQU "j2" Goto :downloader
	if "%c%" EQU "J3" Goto :deldownloader
	if "%c%" EQU "j3" Goto :deldownloader
	if "%c%" EQU "T1" START %l_torrent%		::----TORRENT------------------------------------
	if "%c%" EQU "t1" START %l_torrent%
	if "%c%" EQU "T2" Goto :torrent
	if "%c%" EQU "t2" Goto :torrent
	if "%c%" EQU "T3" Goto :deltorrent
	if "%c%" EQU "t3" Goto :deltorrent
	if "%c%" EQU "M1" START %l_music%		::----MUSIC--------------------------------------
	if "%c%" EQU "m1" START %l_music%
	if "%c%" EQU "M2" Goto :music
	if "%c%" EQU "m2" Goto :music
	if "%c%" EQU "M3" Goto :delmusic
	if "%c%" EQU "m3" Goto :delmusic
	if "%c%" EQU "M4" START %l_spek%
	if "%c%" EQU "m4" START %l_spek%
	if "%c%" EQU "D1" START %l_remoto%		::----DESKTOP REMOTO-----------------------------
	if "%c%" EQU "d1" START %l_remoto%
	if "%c%" EQU "D2" Goto :remoto
	if "%c%" EQU "d2" Goto :remoto
	if "%c%" EQU "D3" Goto :delremoto
	if "%c%" EQU "d3" Goto :delremoto
	if "%c%" EQU "F1" START %l_file%		::----FILE RENAMER-------------------------------
	if "%c%" EQU "f1" START %l_file%
	if "%c%" EQU "F2" Goto :file
	if "%c%" EQU "f2" Goto :file
	if "%c%" EQU "F3" Goto :delfile
	if "%c%" EQU "f3" Goto :delfile
	if "%c%" EQU "s1" START %l_sync%		::----SYNCRONIZER-------------------------------
	if "%c%" EQU "S1" START %l_sync%
	if "%c%" EQU "s2" Goto :sync
	if "%c%" EQU "S2" Goto :sync
	if "%c%" EQU "s3" Goto :delsync
	if "%c%" EQU "S3" Goto :delsync
	if "%c%" EQU "v1" START %l_vm%			::----VIRTUAL MACHINE----------------------------
	if "%c%" EQU "V1" START %l_vm%
	if "%c%" EQU "v2" Goto :vm
	if "%c%" EQU "V2" Goto :vm
	if "%c%" EQU "v3" Goto :delvm
	if "%c%" EQU "V3" Goto :delvm
	if "%c%" EQU "o1" START %l_capture%		::----SCREEN CAPTURE----------------------------
	if "%c%" EQU "O1" START %l_capture%
	if "%c%" EQU "o2" Goto :capture
	if "%c%" EQU "O2" Goto :capture
	if "%c%" EQU "o3" Goto :delcapture
	if "%c%" EQU "O3" Goto :delcapture
	if "%c%" EQU "A1" START %l_afterburner%		::----PC MONITOR---------------------------------
	if "%c%" EQU "a1" START %l_afterburner%
	if "%c%" EQU "G1" START %l_steam%		::----GIOCHI-------------------------------------
	if "%c%" EQU "g1" START %l_steam%
	if "%c%" EQU "G2" Goto :steam
	if "%c%" EQU "g2" Goto :steam
	if "%c%" EQU "G3" Goto :delsteam
	if "%c%" EQU "g3" Goto :delsteam
	if "%c%" EQU "G4" START %l_epic%
	if "%c%" EQU "g4" START %l_epic%
	if "%c%" EQU "G5" Goto :epic
	if "%c%" EQU "g5" Goto :epic
	if "%c%" EQU "G6" Goto :delepic
	if "%c%" EQU "g6" Goto :delepic
	if "%c%" EQU "G7" START %l_psnow%		::----PLAYSTATION--------------------------------
	if "%c%" EQU "g7" START %l_psnow%
	if "%c%" EQU "G8" Goto :psnow
	if "%c%" EQU "g8" Goto :psnow
	if "%c%" EQU "G9" Goto :delpsnow
	if "%c%" EQU "g9" Goto :delpsnow
	if "%c%" EQU "D4" START %l_ds4windows%		::----CONTROLLER---------------------------------
	if "%c%" EQU "d4" START %l_ds4windows%
	if "%c%" EQU "E1" START %l_atom%		::----EDITOR-------------------------------------
	if "%c%" EQU "e1" START %l_atom%
	if "%c%" EQU "E2" Goto :atom
	if "%c%" EQU "e2" Goto :atom
	if "%c%" EQU "E3" Goto :delatom
	if "%c%" EQU "e3" Goto :delatom
	if "%c%" EQU "E4" START %l_notepad%
	if "%c%" EQU "e4" START %l_notepad%
	if "%c%" EQU "E5" Goto :notepad
	if "%c%" EQU "e5" Goto :notepad
	if "%c%" EQU "E6" Goto :delnotepad
	if "%c%" EQU "e6" Goto :delnotepad
	if "%c%" EQU "E7" test&cls
	if "%c%" EQU "E7" Goto :atomInfoPacket
	if "%c%" EQU "e7" test&cls
	if "%c%" EQU "e7" Goto :atomInfoPacket
	if "%c%" EQU "c1" START %l_rainmeter%		::----CUSTOMIZATION-------------------------------
	if "%c%" EQU "C1" START %l_rainmeter%
	if "%c%" EQU "c2" Goto :rainmeter
	if "%c%" EQU "C2" Goto :rainmeter
	if "%c%" EQU "c3" Goto :delrainmeter
	if "%c%" EQU "C3" Goto :delrainmeter
	if "%c%" EQU "c4" START %l_rocket%
	if "%c%" EQU "C4" START %l_rocket%
	if "%c%" EQU "c5" Goto :rocket
	if "%c%" EQU "C5" Goto :rocket
	if "%c%" EQU "c6" Goto :delrocket
	if "%c%" EQU "C6" Goto :delrocket
	if "%c%" EQU "TT" Goto :deltotal		::----TOTAL--------------------------------------
	if "%c%" EQU "tt" Goto :deltotal
	if "%c%" EQU "Tt" Goto :deltotal
	if "%c%" EQU "Tt" Goto :deltotal
	
	::----PAG2 UTILITY--------------------------------------
	if "%c%" EQU "Q1" START %l_amd%
	if "%c%" EQU "q1" START %l_amd%
	if "%c%" EQU "Q2" START %l_nvidia%
	if "%c%" EQU "q2" START %l_nvidia%
	if "%c%" EQU "Q3" START %l_kms1%
	if "%c%" EQU "q3" START %l_kms1%
	if "%c%" EQU "Q4" START %l_kms2%
	if "%c%" EQU "q4" START %l_kms2%
	if "%c%" EQU "WU1" Goto :wureset
	if "%c%" EQU "wu1" Goto :wureset
	if "%c%" EQU "wu2" ECHO Non ancora implementato
	if "%c%" EQU "wi2" ECHO Non ancora implementato
	if "%c%" EQU "WS1" Goto :wsreset
	if "%c%" EQU "ws1" Goto :wsreset
	::----UAC----------------------------------------
	if "%c%" EQU "U1" ECHO Ancora non implementato
	if "%c%" EQU "u1" ECHO Ancora non implementato
	if "%c%" EQU "U2" ECHO Ancora non implementato
	if "%c%" EQU "u2" ECHO Ancora non implementato
	::----MIX----------------------------------------
	if "%c%" EQU "tr" (	ECHO [32m
				ECHO 0=TRIM Abilitato / 1=TRIM Disabilitato [0m
				fsutil behavior query DisableDeleteNotify
			   )
	if "%c%" EQU "TR" (	ECHO [32m
				ECHO 0=TRIM Abilitato / 1= TRIM Disabilitato [0m
				fsutil behavior query DisableDeleteNotify
			   )

	::----EXTRA--------------------------------------
	if "%c%" EQU "I" test&cls
	if "%c%" EQU "i" test&cls
	if "%c%" EQU "I" Goto :information
	if "%c%" EQU "i" Goto :information
	if "%c%" EQU "C" test&cls
	if "%c%" EQU "c" test&cls
	if "%c%" EQU "C" ECHO [43m[Attenzione][0m - Premi [31m1[0m o [31m2[0m per visualizzare il Menu
	if "%c%" EQU "c" ECHO [43m[Attenzione][0m - Premi [31m1[0m o [31m2[0m per visualizzare il Menu
	if "%c%" EQU "D" test&cls
	if "%c%" EQU "d" test&cls
	if "%c%" EQU "D" Goto :debugRoom
	if "%c%" EQU "d" Goto :debugRoom
	if "%c%" EQU "PC" test&cls
	if "%c%" EQU "pc" test&cls
	if "%c%" EQU "PC" Goto :infoPC
	if "%c%" EQU "pc" Goto :infoPC
	if "%c%" EQU "E" test&cls
	if "%c%" EQU "e" test&cls
	if "%c%" EQU "E" Goto :easterEgg
	if "%c%" EQU "e" Goto :easterEgg
	
	::----ERRORI-------------------------------------
	if "%c%" EQU "," ECHO [43m[ERRORE][0m - Comando non ammesso - Premi [31m1[0m o [31m2[0m per visualizzare il Menu

	::----END----------------------------------------
	if %c%==0 Goto :end

	Goto :letsgo


::----------------------BROWSER--------
:browser
	IF EXIST D:\Download\%e_firefox% ECHO Installazione di [31mFirefox[0m partita dal disco D
	IF EXIST D:\Download\%e_firefox% START D:\Download\%e_firefox%
	IF EXIST D:\Download\%e_firefox% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_firefox% ECHO Installazione di [31mFirefox[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_firefox% START C:\Users\%username%\Downloads\%e_firefox%
	IF EXIST C:\Users\%username%\Downloads\%e_firefox% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mFirefox[0m non esiste
	Goto :letsgo
:delbrowser
	set browser=0
	IF EXIST D:\Download\%e_firefox% SET browser=1
	IF EXIST D:\Download\%e_firefox% ECHO Installer di [31mFirefox[0m cancellato dal disco D
	IF EXIST D:\Download\%e_firefox% DEL D:\Download\%e_firefox%
	IF EXIST C:\Users\%username%\Downloads\%e_firefox% SET browser=1
	IF EXIST C:\Users\%username%\Downloads\%e_firefox% ECHO Installer di [31mFirefox[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_firefox% DEL C:\Users\%username%\Downloads\%e_firefox%
	IF %browser%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_firefox% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_firefox% ECHO [43m[Attenzione][0m - L'installer di [31mFirefox[0m non esiste
	)
	Goto :letsgo
:tor
	IF EXIST D:\Download\%e_tor% ECHO Installazione di [31mTor[0m partita dal disco D
	IF EXIST D:\Download\%e_tor% START D:\Download\%e_tor%
	IF EXIST D:\Download\%e_tor% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_tor% ECHO Installazione di [31mTor[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_tor% START C:\Users\%username%\Downloads\%e_tor%
	IF EXIST C:\Users\%username%\Downloads\%e_tor% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mTor[0m non esiste
	Goto :letsgo
:deltor
	set tor=0
	IF EXIST D:\Download\%e_tor%SET tor=1
	IF EXIST D:\Download\%e_tor% ECHO Installer di [31mTor[0m cancellato dal disco D
	IF EXIST D:\Download\%e_tor% DEL D:\Download\%e_tor%
	IF EXIST C:\Users\%username%\Downloads\%e_tor% SET tor=1
	IF EXIST C:\Users\%username%\Downloads\%e_tor% ECHO Installer di [31mTor[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_tor% DEL C:\Users\%username%\Downloads\%e_tor%
	IF %tor%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_tor% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_tor% ECHO [43m[Attenzione][0m - L'installer di [31mTor[0m non esiste
	)
	Goto :letsgo
::----------------------PLAYER---------
:player
	IF EXIST D:\Download\%e_player% ECHO Installazione di [31mVLC[0m partita dal disco D
	IF EXIST D:\Download\%e_player% START D:\Download\%e_player%
	IF EXIST D:\Download\%e_player% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_player% ECHO Installazione di [31mVLC[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_player% START C:\Users\%username%\Downloads\%e_player%
	IF EXIST C:\Users\%username%\Downloads\%e_player% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mVLC[0m non esiste
	Goto :letsgo
:delplayer
	set player=0
	IF EXIST D:\Download\%e_player% SET player=1
	IF EXIST D:\Download\%e_player% ECHO Installer di [31mVLC[0m cancellato dal disco D
	IF EXIST D:\Download\%e_player% DEL D:\Download\%e_player%
	IF EXIST C:\Users\%username%\Downloads\%e_player% SET player=1
	IF EXIST C:\Users\%username%\Downloads\%e_player% ECHO Installer di [31mVLC[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_player% DEL C:\Users\%username%\Downloads\%e_player%
	IF %player%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_player% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_player% ECHO [43m[Attenzione][0m - L'installer di [31mVLC[0m non esiste
	)
	Goto :letsgo
::----------------------RAR------------
:rar
	IF EXIST D:\Download\%e_rar% ECHO Installazione di [31mWinRAR[0m partita dal disco D
	IF EXIST D:\Download\%e_rar% START D:\Download\%e_rar%
	IF EXIST D:\Download\%e_rar% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_rar% ECHO Installazione di [31mWinRAR[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_rar% START C:\Users\%username%\Downloads\%e_rar%
	IF EXIST C:\Users\%username%\Downloads\%e_rar% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mWinRAR[0m non esiste
	Goto :letsgo
:delrar
	set rar=0
	IF EXIST D:\Download\%e_rar% SET rar=1
	IF EXIST D:\Download\%e_rar% ECHO Installer di [31mWinRAR[0m cancellato dal disco D
	IF EXIST D:\Download\%e_rar% DEL D:\Download\%e_player%
	IF EXIST C:\Users\%username%\Downloads\%e_rar% SET rar=1
	IF EXIST C:\Users\%username%\Downloads\%e_rar% ECHO Installer di [31mWinRAR[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_rar% DEL C:\Users\%username%\Downloads\%e_rar%
	IF %rar%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_rar% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_rar% ECHO [43m[Attenzione][0m - L'installer di [31mWinRAR[0m non esiste
	)
	Goto :letsgo
::----------------------DOWNLOADER-----
:downloader
	IF EXIST D:\Download\%e_downloader% ECHO Installazione di [31mJDownloader 2[0m partita dal disco D
	IF EXIST D:\Download\%e_downloader% START D:\Download\%e_downloader%
	IF EXIST D:\Download\%e_downloader% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_downloader% ECHO Installazione di [31mJDownloader 2[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_downloader% START C:\Users\%username%\Downloads\%e_downloader%
	IF EXIST C:\Users\%username%\Downloads\%e_downloader% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mJDownloader 2[0m non esiste
	Goto :letsgo
:deldownloader
	set downloader=0
	IF EXIST D:\Download\%e_downloader% SET downloader=1
	IF EXIST D:\Download\%e_downloader% ECHO Installer di [31mJDownloader 2[0m cancellato dal disco D
	IF EXIST D:\Download\%e_downloader% DEL D:\Download\%e_downloader%
	IF EXIST C:\Users\%username%\Downloads\%e_downloader% SET downloader=1
	IF EXIST C:\Users\%username%\Downloads\%e_downloader% ECHO Installer di [31mJDownloader 2[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_downloader% DEL C:\Users\%username%\Downloads\%e_downloader%
	IF %downloader%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_downloader% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_downloader% ECHO [43m[Attenzione][0m - L'installer di [31mJDownloader 2[0m non esiste
	)
	Goto :letsgo
::----------------------TORRENT---
:torrent
	IF EXIST D:\Download\%e_torrent% ECHO Installazione di [31muTorrent[0m partita dal disco D
	IF EXIST D:\Download\%e_torrent% START D:\Download\%e_torrent%
	IF EXIST D:\Download\%e_torrent% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_torrent% ECHO Installazione di [31muTorrent[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_torrent% START C:\Users\%username%\Downloads\%e_torrent%
	IF EXIST C:\Users\%username%\Downloads\%e_torrent% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31muTorrent[0m non esiste
	Goto :letsgo
:deltorrent
	set torrent=0
	IF EXIST D:\Download\%e_torrent% SET torrent=1
	IF EXIST D:\Download\%e_torrent% ECHO Installer di [31muTorrent[0m cancellato dal disco D
	IF EXIST D:\Download\%e_torrent% DEL D:\Download\%e_torrent%
	IF EXIST C:\Users\%username%\Downloads\%e_torrent% SET torrent=1
	IF EXIST C:\Users\%username%\Downloads\%e_torrent% ECHO Installer di [31muTorrent[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_torrent% DEL C:\Users\%username%\Downloads\%e_torrent%
	IF %torrent%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_torrent% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_torrent% ECHO [43m[Attenzione][0m - L'installer di [31muTorrent[0m non esiste
	)
	Goto :letsgo
::----------------------MUSIC-----
:music
	IF EXIST D:\Download\%e_music% ECHO Installazione di [31mMp3tag[0m partita dal disco D
	IF EXIST D:\Download\%e_music% START D:\Download\%e_music%
	IF EXIST D:\Download\%e_music% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_music% ECHO Installazione di [31mMp3tag[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_music% START C:\Users\%username%\Downloads\%e_music%
	IF EXIST C:\Users\%username%\Downloads\%e_music% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mMp3tag[0m non esiste
	Goto :letsgo
:delmusic
	set music=0
	IF EXIST D:\Download\%e_music% SET music=1
	IF EXIST D:\Download\%e_music% ECHO Installer di [31mMp3tag[0m cancellato dal disco D
	IF EXIST D:\Download\%e_music% DEL D:\Download\%e_music%
	IF EXIST C:\Users\%username%\Downloads\%e_music% SET music=1
	IF EXIST C:\Users\%username%\Downloads\%e_music% ECHO Installer di [31Mp3tag[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_music% DEL C:\Users\%username%\Downloads\%e_music%
	IF %music%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_music% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_music% ECHO [43m[Attenzione][0m - L'installer di [31mMp3tag[0m non esiste
	)
	Goto :letsgo
::----------------------REMOTO----
:remoto
	IF EXIST D:\Download\%e_remoto% ECHO Installazione di [31mTeamViewer[0m partita dal disco D
	IF EXIST D:\Download\%e_remoto% START D:\Download\%e_remoto%
	IF EXIST D:\Download\%e_remoto% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_remoto% ECHO Installazione di [31mTeamViewer[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_remoto% START C:\Users\%username%\Downloads\%e_remoto%
	IF EXIST C:\Users\%username%\Downloads\%e_remoto% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mTeamViewer[0m non esiste
	Goto :letsgo
:delremoto
	set remoto=0
	IF EXIST D:\Download\%e_remoto% SET remoto=1
	IF EXIST D:\Download\%e_remoto% ECHO Installer di [31mTeamViewer[0m cancellato dal disco D
	IF EXIST D:\Download\%e_remoto% DEL D:\Download\%e_remoto%
	IF EXIST C:\Users\%username%\Downloads\%e_remoto% SET remoto=1
	IF EXIST C:\Users\%username%\Downloads\%e_remoto% ECHO Installer di [31mTeamViewer[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_remoto% DEL C:\Users\%username%\Downloads\%e_remoto%
	IF %remoto%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_remoto% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_remoto% ECHO [43m[Attenzione][0m - L'installer di [31mTeamViewer[0m non esiste
	)
	Goto :letsgo
::----------------------FILE RENAMER--
:file
	IF EXIST D:\Download\%e_file% ECHO Installazione di [31mFile Renamer Basic[0m partita dal disco D
	IF EXIST D:\Download\%e_file% START D:\Download\%e_file%
	IF EXIST D:\Download\%e_file% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_file% ECHO Installazione di [31mFile Renamer Basic[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_file% START C:\Users\%username%\Downloads\%e_file%
	IF EXIST C:\Users\%username%\Downloads\%e_file% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mFile Renamer Basic[0m non esiste
	Goto :letsgo
:delfile
	set file=0
	IF EXIST D:\Download\%e_file% SET file=1
	IF EXIST D:\Download\%e_file% ECHO Installer di [31mFile Renamer Basic[0m cancellato dal disco D
	IF EXIST D:\Download\%e_file% DEL D:\Download\%e_file%
	IF EXIST C:\Users\%username%\Downloads\%e_file% SET file=1
	IF EXIST C:\Users\%username%\Downloads\%e_file% ECHO Installer di [31File Renamer Basic[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_file% DEL C:\Users\%username%\Downloads\%e_file%
	IF %file%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_file% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_file% ECHO [43m[Attenzione][0m - L'installer di [31mFile Renamer Basic[0m non esiste
	)
	Goto :letsgo
::----------------------SYNC-----
:sync
	IF EXIST D:\Download\%e_sync% ECHO Installazione di [31mSyncTrayzor[0m partita dal disco D
	IF EXIST D:\Download\%e_sync% START D:\Download\%e_sync%
	IF EXIST D:\Download\%e_sync% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_sync% ECHO Installazione di [31mSyncTrayzor[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_sync% START C:\Users\%username%\Downloads\%e_sync%
	IF EXIST C:\Users\%username%\Downloads\%e_sync% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mSyncTrayzor[0m non esiste
	Goto :letsgo
:delsync
	set sync=0
	IF EXIST D:\Download\%e_sync% SET sync=1
	IF EXIST D:\Download\%e_sync% ECHO Installer di [31mSyncTrayzor[0m cancellato dal disco D
	IF EXIST D:\Download\%e_sync% DEL D:\Download\%e_sync%
	IF EXIST C:\Users\%username%\Downloads\%e_sync% SET sync=1
	IF EXIST C:\Users\%username%\Downloads\%e_sync% ECHO Installer di [31SyncTrayzor[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_sync% DEL C:\Users\%username%\Downloads\%e_sync%
	IF %sync%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_sync% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_sync% ECHO [43m[Attenzione][0m - L'installer di [31mSyncTrayzor[0m non esiste
	)
	Goto :letsgo
::----------------------VM-----
:vm
	IF EXIST D:\Download\%e_vm% ECHO Installazione di [31mVirtualBox[0m partita dal disco D
	IF EXIST D:\Download\%e_vm% START D:\Download\%e_vm%
	IF EXIST D:\Download\%e_vm% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_vm% ECHO Installazione di [31mVirtualBox[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_vm% START C:\Users\%username%\Downloads\%e_vm%
	IF EXIST C:\Users\%username%\Downloads\%e_vm% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mVirtualBox[0m non esiste
	Goto :letsgo
:delvm
	set vm=0
	IF EXIST D:\Download\%e_vm% SET vm=1
	IF EXIST D:\Download\%e_vm% ECHO Installer di [31mVirtualBox[0m cancellato dal disco D
	IF EXIST D:\Download\%e_vm% DEL D:\Download\%e_vm%
	IF EXIST C:\Users\%username%\Downloads\%e_vm% SET vm=1
	IF EXIST C:\Users\%username%\Downloads\%e_vm% ECHO Installer di [31VirtualBox[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_vm% DEL C:\Users\%username%\Downloads\%e_vm%
	IF %vm%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_vm% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_vm% ECHO [43m[Attenzione][0m - L'installer di [31mVirtualBox[0m non esiste
	)
	Goto :letsgo
::----------------------CAPTURE-----
:capture
	IF EXIST D:\Download\%e_capture% ECHO Installazione di [31mOBS Studio[0m partita dal disco D
	IF EXIST D:\Download\%e_capture% START D:\Download\%e_capture%
	IF EXIST D:\Download\%e_capture% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_capture% ECHO Installazione di [31mOBS Studio[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_capture% START C:\Users\%username%\Downloads\%e_capture%
	IF EXIST C:\Users\%username%\Downloads\%e_capture% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mOBS Studio[0m non esiste
	Goto :letsgo
:delcapture
	set capture=0
	IF EXIST D:\Download\%e_capture% SET capture=1
	IF EXIST D:\Download\%e_capture% ECHO Installer di [31mOBS Studio[0m cancellato dal disco D
	IF EXIST D:\Download\%e_capture% DEL D:\Download\%e_capture%
	IF EXIST C:\Users\%username%\Downloads\%e_capture% SET capture=1
	IF EXIST C:\Users\%username%\Downloads\%e_capture% ECHO Installer di [31mOBS Studio[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_capture% DEL C:\Users\%username%\Downloads\%e_capture%
	IF %capture%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_capture% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_capture% ECHO [43m[Attenzione][0m - L'installer di [31mOBS Studio[0m non esiste
	)
	Goto :letsgo
::----------------------GAME-----
:steam
	IF EXIST D:\Download\%e_steam% ECHO Installazione di [31mSteam[0m partita dal disco D
	IF EXIST D:\Download\%e_steam% START D:\Download\%e_steam%
	IF EXIST D:\Download\%e_steam% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_steam% ECHO Installazione di [31mSteam[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_steam% START C:\Users\%username%\Downloads\%e_steam%
	IF EXIST C:\Users\%username%\Downloads\%e_steam% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mSteam[0m non esiste
	Goto :letsgo
:delsteam
	set steam=0
	IF EXIST D:\Download\%e_steam% SET steam=1
	IF EXIST D:\Download\%e_steam% ECHO Installer di [31mSteam[0m cancellato dal disco D
	IF EXIST D:\Download\%e_steam% DEL D:\Download\%e_steam%
	IF EXIST C:\Users\%username%\Downloads\%e_steam% SET steam=1
	IF EXIST C:\Users\%username%\Downloads\%e_steam% ECHO Installer di [31mSteam[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_steam% DEL C:\Users\%username%\Downloads\%e_steam%
	IF %steam%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_steam% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_steam% ECHO [43m[Attenzione][0m - L'installer di [31mSteam[0m non esiste
	)
	Goto :letsgo
:epic
	IF EXIST D:\Download\%e_epic% ECHO [43m[Attenzione][0m - L'installer di [31mEpic Games Launcher[0m potrebbe richiedere Privilegi di Amministratore
	IF EXIST D:\Download\%e_epic% ECHO Installazione di [31mEpic Games Launcher[0m partita dal disco D
	IF EXIST D:\Download\%e_epic% START D:\Download\%e_epic%
	IF EXIST D:\Download\%e_epic% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_epic% ECHO [43m[Attenzione][0m - L'installer di [31mEpic Games Launcher[0m potrebbe richiedere Privilegi di Amministratore
	IF EXIST C:\Users\%username%\Downloads\%e_epic% ECHO Installazione di [31mEpic Games Launcher[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_epic% START C:\Users\%username%\Downloads\%e_epic%
	IF EXIST C:\Users\%username%\Downloads\%e_epic% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mEpic Games Launcher[0m non esiste
	Goto :letsgo
:delepic
	set epic=0
	IF EXIST D:\Download\%e_epic% SET epic=1
	IF EXIST D:\Download\%e_epic% ECHO Installer di [31mEpic Games Launcher[0m cancellato dal disco D
	IF EXIST D:\Download\%e_epic% DEL D:\Download\%e_epic%
	IF EXIST C:\Users\%username%\Downloads\%e_epic% SET epic=1
	IF EXIST C:\Users\%username%\Downloads\%e_epic% ECHO Installer di [31mEpic Games Launcher[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_epic% DEL C:\Users\%username%\Downloads\%e_epic%
	IF %epic%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_epic% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_epic% ECHO [43m[Attenzione][0m - L'installer di [31mEpic Games Launcher[0m non esiste
	)
	Goto :letsgo
:psnow
	IF EXIST D:\Download\%e_psnow% ECHO Installazione di [31mPlayStation Now[0m partita dal disco D
	IF EXIST D:\Download\%e_psnow% START D:\Download\%e_psnow%
	IF EXIST D:\Download\%e_psnow% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_psnow% ECHO Installazione di [31mPlayStation Now[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_psnow% START C:\Users\%username%\Downloads\%e_psnow%
	IF EXIST C:\Users\%username%\Downloads\%e_psnow% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mPlayStation Now[0m non esiste
	Goto :letsgo
:delpsnow
	set psnow=0
	IF EXIST D:\Download\%e_psnow% SET psnow=1
	IF EXIST D:\Download\%e_psnow% ECHO Installer di [31mPlayStation Now[0m cancellato dal disco D
	IF EXIST D:\Download\%e_psnow% DEL D:\Download\%e_psnow%
	IF EXIST C:\Users\%username%\Downloads\%e_psnow% SET psnow=1
	IF EXIST C:\Users\%username%\Downloads\%e_psnow% ECHO Installer di [31mPlayStation Now[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_psnow% DEL C:\Users\%username%\Downloads\%e_psnow%
	IF %psnow%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_psnow% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_psnow% ECHO [43m[Attenzione][0m - L'installer di [31mPlayStation Now[0m non esiste
	)
	Goto :letsgo
::----------------------EDITOR-----
:atom
	IF EXIST D:\Download\%e_atom% ECHO Installazione di [31mAtom[0m partita dal disco D
	IF EXIST D:\Download\%e_atom% START D:\Download\%e_atom%
	IF EXIST D:\Download\%e_atom% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_atom% ECHO Installazione di [31mAtom[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_atom% START C:\Users\%username%\Downloads\%e_atom%
	IF EXIST C:\Users\%username%\Downloads\%e_atom% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mAtom[0m non esiste
	Goto :letsgo
:delatom
	set atom=0
	IF EXIST D:\Download\%e_atom% SET atom=1
	IF EXIST D:\Download\%e_atom% ECHO Installer di [31mAtom[0m cancellato dal disco D
	IF EXIST D:\Download\%e_atom% DEL D:\Download\%e_atom%
	IF EXIST C:\Users\%username%\Downloads\%e_atom% SET atom=1
	IF EXIST C:\Users\%username%\Downloads\%e_atom% ECHO Installer di [31mAtom[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_atom% DEL C:\Users\%username%\Downloads\%e_atom%
	IF %atom%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_atom% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_atom% ECHO [43m[Attenzione][0m - L'installer di [31mAtom[0m non esiste
	)
	Goto :letsgo
:notepad
	IF EXIST D:\Download\%e_notepad% ECHO Installazione di [31mNotepad++[0m partita dal disco D
	IF EXIST D:\Download\%e_notepad% START D:\Download\%e_notepad%
	IF EXIST D:\Download\%e_notepad% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_notepad% ECHO Installazione di [31mNotepad++[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_notepad% START C:\Users\%username%\Downloads\%e_notepad%
	IF EXIST C:\Users\%username%\Downloads\%e_notepad% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mNotepad++[0m non esiste
	Goto :letsgo
:delnotepad
	set notepad=0
	IF EXIST D:\Download\%e_notepad% SET notepad=1
	IF EXIST D:\Download\%e_notepad% ECHO Installer di [31mNotepad++[0m cancellato dal disco D
	IF EXIST D:\Download\%e_notepad% DEL D:\Download\%e_notepad%
	IF EXIST C:\Users\%username%\Downloads\%e_notepad% SET notepad=1
	IF EXIST C:\Users\%username%\Downloads\%e_notepad% ECHO Installer di [31mNotepad++[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_notepad% DEL C:\Users\%username%\Downloads\%e_notepad%
	IF %notepad%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_notepad% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_notepad% ECHO [43m[Attenzione][0m - L'installer di [31mNotepad++[0m non esiste
	)
	Goto :letsgo

::----------------------ATOM INFO PACKET-----
:atomInfoPacket
	ECHO [33mLista dei pacchetti aggiuntivi utili per Atom
	ECHO [0m
	ECHO [36mminimap[0m			-	Preview di tutto il codice sorgente
	ECHO [36matom-i18n[0m		-	Traduce Atom in 18 lingue diverse (incl. italiano)
	ECHO [36mlanguage-batchfile[0m	-	Colora le keyword dei file .bat
	ECHO [0m
	ECHO [33mLista impostazioni utili per Atom
	ECHO [0mEditor / "Mostra Guida Indentazione" - [36mAbilitare[0m
	ECHO [0m
	ECHO [43m[Attenzione][0m - Premi [31m1[0m o [31m2[0m per visualizzare il Menu
Goto :letsgo
::----------------------CUSTOMIZATION-----
:rainmeter
	IF EXIST D:\Download\%e_rainmeter% ECHO Installazione di [31mRainmeter[0m partita dal disco D
	IF EXIST D:\Download\%e_rainmeter% START D:\Download\%e_rainmeter%
	IF EXIST D:\Download\%e_rainmeter% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_rainmeter% ECHO Installazione di [31mRainmeter[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_rainmeter% START C:\Users\%username%\Downloads\%e_rainmeter%
	IF EXIST C:\Users\%username%\Downloads\%e_rainmeter% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mRainmeter[0m non esiste
	Goto :letsgo
:delrainmeter
	set rainmeter=0
	IF EXIST D:\Download\%e_rainmeter% SET rainmeter=1
	IF EXIST D:\Download\%e_rainmeter% ECHO Installer di [31mRainmeter[0m cancellato dal disco D
	IF EXIST D:\Download\%e_rainmeter% DEL D:\Download\%e_rainmeter%
	IF EXIST C:\Users\%username%\Downloads\%e_rainmeter% SET rainmeter=1
	IF EXIST C:\Users\%username%\Downloads\%e_rainmeter% ECHO Installer di [31mRainmeter[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_rainmeter% DEL C:\Users\%username%\Downloads\%e_rainmeter%
	IF %rainmeter%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_rainmeter% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_rainmeter% ECHO [43m[Attenzione][0m - L'installer di [31mRainmeter[0m non esiste
	)
	Goto :letsgo
:rocket
	IF EXIST D:\Download\%e_rocket% ECHO Installazione di [31mRocketDock[0m partita dal disco D
	IF EXIST D:\Download\%e_rocket% START D:\Download\%e_rocket%
	IF EXIST D:\Download\%e_rocket% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_rocket% ECHO Installazione di [31mRocketDock[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_rocket% START C:\Users\%username%\Downloads\%e_rocket%
	IF EXIST C:\Users\%username%\Downloads\%e_rocket% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mRocketDock[0m non esiste
	Goto :letsgo
:delrocket
	set rocket=0
	IF EXIST D:\Download\%e_rocket% SET rocket=1
	IF EXIST D:\Download\%e_rocket% ECHO Installer di [31mRocketDock[0m cancellato dal disco D
	IF EXIST D:\Download\%e_rocket% DEL D:\Download\%e_rocket%
	IF EXIST C:\Users\%username%\Downloads\%e_rocket% SET rocket=1
	IF EXIST C:\Users\%username%\Downloads\%e_rocket% ECHO Installer di [31mRocketDock[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_rocket% DEL C:\Users\%username%\Downloads\%e_rocket%
	IF %rocket%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_rocket% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_rocket% ECHO [43m[Attenzione][0m - L'installer di [31mRocketDock[0m non esiste
	)
	Goto :letsgo

::----------------------INFO-----------
:information
	ECHO [33m
	ECHO 	  *********************************************************
	ECHO 	 *	  HidroSaphire SAF - Script After Formatted	   *
	ECHO 	*************************************************************
	ECHO 	*	  Developed by Enrico Mancuso (HidroSaphire)	    *
	ECHO 	 *	      https://github.com/HidroSaphire		   *
	ECHO 	  *	      					          *
	ECHO 	   *		     Versione = v.0.2.4 		 *
	ECHO 	    *		  Codename = Glorious Elephant		*
	ECHO 	     *		 Ultima Release = 09/10/2020	       *
	ECHO 	      *************************************************
	ECHO [0m
	ECHO [43m[Attenzione][0m - Premi [31m1[0m o [31m2[0m per visualizzare il Menu
Goto :letsgo


::----------------------DEBUG Room-----------
:debugRoom
	ECHO [31m
	ECHO 			/***********************************************************\
	ECHO 			!	  	  HidroSaphire - DEBUG ROOM	            !
	ECHO 			!***********************************************************!
	ECHO 	 		!							    !
	ECHO 	  		! Variabili:						    !
	ECHO 	  		! 	browser=%browser%	player=%player%	rar=%rar%		    !
	ECHO 	  		! 	rar=%rar%		downloader=%downloader%	torrent=%torrent%	    !
	ECHO 	  		! 	music=%music%		file=%file%		sync=%sync%		    !
	ECHO 	  		! 	vm=%vm%		remoto=%remoto%	tor=%tor%	 	    !
	ECHO 	  		! 	steam=%steam%		epic=%epic%		capture=%capture%	    !
	ECHO 	  		! 	atom=%atom%		notepad=%notepad%	rainmeter=%rainmeter%	    !
	ECHO 	  		! 	rocket=%rocket%	psnow=%psnow%				    !
	ECHO 	  		! 			    				    !
	ECHO 	  		! 	c=%c% (choice)	t=%t%			   	    !
	ECHO 			\___________________________________________________________/
	ECHO [36m
	ECHO [36m
	ECHO [36m
	ECHO 		     Penso che ogni programma che si rispetti debba avere una Debug Room
	ECHO 		          Andiamo, anche Final Fantasy VII aveva la sua Debug Room!
	ECHO 		           Renderla accessibile facilmente e' stata una mia scelta
	ECHO 		  Spero che sia d'inspirazione ai programmatori che guarderanno questo codice
	ECHO [36m
	ECHO											     (HidroSaphire)
	ECHO [0m
	ECHO [43m[Attenzione][0m - Premi [31m1[0m o [31m2[0m per visualizzare il Menu
Goto :letsgo


::----------------------INFOPC---------
:infoPC
	ECHO [36m	INFORMAZIONI SUL COMPUTER[33m
	ver
	ECHO [32mNome Computer = [0m %COMPUTERNAME%
	ECHO [32mNome Utente = 	[0m %USERNAME%
	ECHO [0m
	ECHO [32mWindows e' in modalita' (.exe = Legacy BIOS / .efi = UEFI) - Richiede privilegi di amministratore[0m
	bcdedit | find "path"
	ECHO [0m
	ECHO [32mIl path del File di Paging:[0m
	wmic pagefile list /format:list | find "Name"
	ECHO [0m
	ECHO [43m[Attenzione][0m - Premi [31m1[0m o [31m2[0m per visualizzare il Menu
Goto :letsgo


::----------------------EASTER EGG------
:easterEgg

	ECHO [0m
	ECHO [107;107m                                  [0m
	ECHO [107;107m          [0m             [107;107m
	ECHO  [107;107m      [0m      [107;107m  [101;91m    [107;107m  [0m      [107;107m
	ECHO  [107;107m    [0m    [107;107m      [101;91m    [107;107m      [0m    [107;107m
	ECHO  [107;107m  [0m    [101;101m  [107;107m    [101;91m        [107;107m    [101;91m  [0m    [107;107m
	ECHO  [107;107m  [0m  [107;107m  [101;91m                    [107;107m  [0m  [107;107m
	ECHO [107;107m [0m    [107;107m    [101;91m    [107;107m        [101;91m    [107;107m    [0m    [107;107m
	ECHO [107;107m [0m  [107;107m      [101;91m  [107;107m            [101;91m  [107;107m      [0m  [107;107m
	ECHO [107;107m [0m  [107;107m      [101;91m  [107;107m            [101;91m  [107;107m      [0m  [107;107m
	ECHO [107;107m [0m  [107;107m    [101;91m    [107;107m            [101;91m    [107;107m    [0m  [107;107m
	ECHO [107;107m [0m  [101;91m          [107;107m        [101;91m          [0m  [107;107m [0m
	ECHO [107;107m [0m  [101;91m    [0m                    [101;91m    [0m  [107;107m [0m
	ECHO [107;107m [0m        [107;107m    [0m  [107;107m    [0m  [107;107m    [0m        [107;107m [0m
	ECHO [107;107m   [0m    [107;107m      [0m  [107;107m    [0m  [107;107m      [0m    [107;107m   [0m
	ECHO [107;107m     [0m  [107;107m                    [0m  [107;107m     [0m
	ECHO [107;107m     [0m    [107;107m                [0m    [107;107m     [0m
	ECHO [107;107m       [0m                    [107;107m       [0m
	ECHO [107;107m                                  [0m
	ECHO [0m
	ECHO [0m
	ECHO [36mHey, ho appena scoperto di essere bravo con l'ASCII Art![0m
	ECHO [36mNo, scherzo, c'ho messo almeno un ora per fare sta cosa![0m
	ECHO [36m                                                (HidroSaphire)[0m
	ECHO [0m
	ECHO [0m
	ECHO [43m[Attenzione][0m - Premi [31m1[0m o [31m2[0m per visualizzare il Menu
Goto :letsgo


::----------------------TOTAL----------

:deltotal
	SET /P t=Vuoi cancellare tutti gli installer [S/N]?
	if /I "%t%" EQU "S" test&cls
	if /I "%t%" EQU "S" goto :deleverything
	if /I "%t%" EQU "N" test&cls
	if /I "%t%" EQU "N" goto :menu
	if /I "%t%" EQU "S" test&cls
	if /I "%t%" EQU "S" goto :deleverything
	if /I "%t%" EQU "n" test&cls
	if /I "%t%" EQU "n" goto :menu
	Goto :deltotal

:deleverything
	IF EXIST D:\Download\%e_firefox% ECHO Installer di [31mFirefox[0m cancellato dal disco D
	IF EXIST D:\Download\%e_firefox% DEL D:\Download\%e_firefox%
	IF EXIST C:\Users\%username%\Downloads\%e_firefox% ECHO Installer di [31mFirefox[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_firefox% DEL C:\Users\%username%\Downloads\%e_firefox%
        IF NOT EXIST D:\Download\%e_firefox% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_firefox% ECHO [43m[Attenzione][0m - L'installer di [31mFirefox[0m non esiste
	)
	IF EXIST D:\Download\%e_tor% ECHO Installer di [31mTor[0m cancellato dal disco D
	IF EXIST D:\Download\%e_tor% DEL D:\Download\%e_tor%
	IF EXIST C:\Users\%username%\Downloads\%e_tor% ECHO Installer di [31mTor[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_tor% DEL C:\Users\%username%\Downloads\%e_tor%
        IF NOT EXIST D:\Download\%e_tor% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_tor% ECHO [43m[Attenzione][0m - L'installer di [31mTor[0m non esiste
	)
	IF EXIST D:\Download\%e_player% ECHO Installer di [31mVLC[0m cancellato dal disco D
	IF EXIST D:\Download\%e_player% DEL D:\Download\%e_player%
	IF EXIST C:\Users\%username%\Downloads\%e_player% ECHO Installer di [31mVLC[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_player% DEL C:\Users\%username%\Downloads\%e_player%
	IF NOT EXIST D:\Download\%e_player% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_player% ECHO [43m[Attenzione][0m - L'installer di [31mVLC[0m non esiste
	)
	IF EXIST D:\Download\%e_rar% ECHO Installer di [31mWinRAR[0m cancellato dal disco D
	IF EXIST D:\Download\%e_rar% DEL D:\Download\%e_player%
	IF EXIST C:\Users\%username%\Downloads\%e_rar% ECHO Installer di [31mWinRAR[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_rar% DEL C:\Users\%username%\Downloads\%e_rar%
	IF NOT EXIST D:\Download\%e_rar% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_rar% ECHO [43m[Attenzione][0m - L'installer di [31mWinRAR[0m non esiste
	)
	IF EXIST D:\Download\%e_downloader% ECHO Installer di [31mJDownloader 2[0m cancellato dal disco D
	IF EXIST D:\Download\%e_downloader% DEL D:\Download\%e_downloader%
	IF EXIST C:\Users\%username%\Downloads\%e_downloader% ECHO Installer di [31mJDownloader 2[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_downloader% DEL C:\Users\%username%\Downloads\%e_downloader%
	IF NOT EXIST D:\Download\%e_downloader% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_downloader% ECHO [43m[Attenzione][0m - L'installer di [31mJDownloader 2[0m non esiste
	)
	IF EXIST D:\Download\%e_torrent% ECHO Installer di [31muTorrent[0m cancellato dal disco D
	IF EXIST D:\Download\%e_torrent% DEL D:\Download\%e_torrent%
	IF EXIST C:\Users\%username%\Downloads\%e_torrent% ECHO Installer di [31muTorrent[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_torrent% DEL C:\Users\%username%\Downloads\%e_torrent%
	IF NOT EXIST D:\Download\%e_torrent% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_torrent% ECHO [43m[Attenzione][0m - L'installer di [31muTorrent[0m non esiste
	)
	IF EXIST D:\Download\%e_music% ECHO Installer di [31mMp3tag[0m cancellato dal disco D
	IF EXIST D:\Download\%e_music% DEL D:\Download\%e_music%
	IF EXIST C:\Users\%username%\Downloads\%e_music% ECHO Installer di [31Mp3tag[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_music% DEL C:\Users\%username%\Downloads\%e_music%
	IF NOT EXIST D:\Download\%e_music% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_music% ECHO [43m[Attenzione][0m - L'installer di [31mMp3tag[0m non esiste
	)
	IF EXIST D:\Download\%e_remoto% ECHO Installer di [31mTeamViewer[0m cancellato dal disco D
	IF EXIST D:\Download\%e_remoto% DEL D:\Download\%e_remoto%
	IF EXIST C:\Users\%username%\Downloads\%e_remoto% ECHO Installer di [31mTeamViewer[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_remoto% DEL C:\Users\%username%\Downloads\%e_remoto%
	IF NOT EXIST D:\Download\%e_remoto% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_remoto% ECHO [43m[Attenzione][0m - L'installer di [31mTeamViewer[0m non esiste
	)
	IF EXIST D:\Download\%e_file% ECHO Installer di [31mFile Renamer Basic[0m cancellato dal disco D
	IF EXIST D:\Download\%e_file% DEL D:\Download\%e_file%
	IF EXIST C:\Users\%username%\Downloads\%e_file% ECHO Installer di [31File Renamer Basic[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_file% DEL C:\Users\%username%\Downloads\%e_file%
	IF NOT EXIST D:\Download\%e_file% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_file% ECHO [43m[Attenzione][0m - L'installer di [31mFile Renamer Basic[0m non esiste
	)
	IF EXIST D:\Download\%e_sync% ECHO Installer di [31mSyncTrayzor[0m cancellato dal disco D
	IF EXIST D:\Download\%e_sync% DEL D:\Download\%e_sync%
	IF EXIST C:\Users\%username%\Downloads\%e_sync% ECHO Installer di [31SyncTrayzor[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_sync% DEL C:\Users\%username%\Downloads\%e_sync%
	IF NOT EXIST D:\Download\%e_sync% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_sync% ECHO [43m[Attenzione][0m - L'installer di [31mSyncTrayzor[0m non esiste
	)
	IF EXIST D:\Download\%e_vm% ECHO Installer di [31mVirtualBox[0m cancellato dal disco D
	IF EXIST D:\Download\%e_vm% DEL D:\Download\%e_vm%
	IF EXIST C:\Users\%username%\Downloads\%e_vm% ECHO Installer di [31VirtualBox[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_vm% DEL C:\Users\%username%\Downloads\%e_vm%
	IF NOT EXIST D:\Download\%e_vm% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_vm% ECHO [43m[Attenzione][0m - L'installer di [31mVirtualBox[0m non esiste
	)
	IF EXIST D:\Download\%e_capture% ECHO Installer di [31mOBS Studio[0m cancellato dal disco D
	IF EXIST D:\Download\%e_capture% DEL D:\Download\%e_capture%
	IF EXIST C:\Users\%username%\Downloads\%e_capture% ECHO Installer di [31mOBS Studio[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_capture% DEL C:\Users\%username%\Downloads\%e_capture%
	IF NOT EXIST D:\Download\%e_capture% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_capture% ECHO [43m[Attenzione][0m - L'installer di [31mOBS Studio[0m non esiste
	)
	IF EXIST D:\Download\%e_steam% ECHO Installer di [31mSteam[0m cancellato dal disco D
	IF EXIST D:\Download\%e_steam% DEL D:\Download\%e_steam%
	IF EXIST C:\Users\%username%\Downloads\%e_steam% ECHO Installer di [31mSteam[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_steam% DEL C:\Users\%username%\Downloads\%e_steam%
	IF NOT EXIST D:\Download\%e_steam% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_steam% ECHO [43m[Attenzione][0m - L'installer di [31mSteam[0m non esiste
	)
	IF EXIST D:\Download\%e_epic% ECHO Installer di [31mEpic Games Launcher[0m cancellato dal disco D
	IF EXIST D:\Download\%e_epic% DEL D:\Download\%e_epic%
	IF EXIST C:\Users\%username%\Downloads\%e_epic% ECHO Installer di [31mEpic Games Launcher[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_epic% DEL C:\Users\%username%\Downloads\%e_epic%
	IF NOT EXIST D:\Download\%e_epic% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_epic% ECHO [43m[Attenzione][0m - L'installer di [31mEpic Games Launcher[0m non esiste
	)
	IF EXIST D:\Download\%e_psnow% ECHO Installer di [31mPlayStation Now[0m cancellato dal disco D
	IF EXIST D:\Download\%e_psnow% DEL D:\Download\%e_psnow%
	IF EXIST C:\Users\%username%\Downloads\%e_psnow% ECHO Installer di [31mPlayStation Now[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_psnow% DEL C:\Users\%username%\Downloads\%e_psnow%
        IF NOT EXIST D:\Download\%e_psnow% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_psnow% ECHO [43m[Attenzione][0m - L'installer di [31mPlayStation Now[0m non esiste
	)
	IF EXIST D:\Download\%e_atom% ECHO Installer di [31mAtom[0m cancellato dal disco D
	IF EXIST D:\Download\%e_atom% DEL D:\Download\%e_atom%
	IF EXIST C:\Users\%username%\Downloads\%e_atom% ECHO Installer di [31mAtom[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_atom% DEL C:\Users\%username%\Downloads\%e_atom%
	IF NOT EXIST D:\Download\%e_atom% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_atom% ECHO [43m[Attenzione][0m - L'installer di [31mAtom[0m non esiste
	)
	IF EXIST D:\Download\%e_notepad% ECHO Installer di [31mNotepad++[0m cancellato dal disco D
	IF EXIST D:\Download\%e_notepad% DEL D:\Download\%e_notepad%
	IF EXIST C:\Users\%username%\Downloads\%e_notepad% ECHO Installer di [31mNotepad++[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_notepad% DEL C:\Users\%username%\Downloads\%e_notepad%
        IF NOT EXIST D:\Download\%e_notepad% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_notepad% ECHO [43m[Attenzione][0m - L'installer di [31mNotepad++[0m non esiste
	)
	IF EXIST D:\Download\%e_rainmeter% ECHO Installer di [31mRainmeter[0m cancellato dal disco D
	IF EXIST D:\Download\%e_rainmeter% DEL D:\Download\%e_rainmeter%
	IF EXIST C:\Users\%username%\Downloads\%e_rainmeter% ECHO Installer di [31mRainmeter[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_rainmeter% DEL C:\Users\%username%\Downloads\%e_rainmeter%
	IF NOT EXIST D:\Download\%e_rainmeter% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_rainmeter% ECHO [43m[Attenzione][0m - L'installer di [31mRainmeter[0m non esiste
	)
	IF EXIST D:\Download\%e_rocket% ECHO Installer di [31mRocketDock[0m cancellato dal disco D
	IF EXIST D:\Download\%e_rocket% DEL D:\Download\%e_rocket%
	IF EXIST C:\Users\%username%\Downloads\%e_rocket% ECHO Installer di [31mRocketDock[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_rocket% DEL C:\Users\%username%\Downloads\%e_rocket%
        IF NOT EXIST D:\Download\%e_rocket% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_rocket% ECHO [43m[Attenzione][0m - L'installer di [31mRocketDock[0m non esiste
	)

:endTotal
	ECHO [42m[COMPLETATO][0m - Tutti gli installer sono stati cancellati
	ECHO [0m
	ECHO [43m[Attenzione][0m - Premi [31m1[0m o [31m2[0m per visualizzare il Menu
	GOTO :letsgo


::----------------------WINDOWS UPDATE RECONFIGURATION----------

:wureset
	ECHO [43m[Attenzione][0m - Quest'operazione potrebbe richiedere i Privilegi di Amministratore
	SET /P t=Vuoi effettuare un reset di Windows Update [S/N]?
	if /I "%t%" EQU "S" test&cls
	if /I "%t%" EQU "S" goto :wuresetconfirm
	if /I "%t%" EQU "N" test&cls
	if /I "%t%" EQU "N" goto :menu
	if /I "%t%" EQU "S" test&cls
	if /I "%t%" EQU "S" goto :wuresetconfirm
	if /I "%t%" EQU "n" test&cls
	if /I "%t%" EQU "n" goto :menu
	Goto :wureset

:wuresetconfirm
	SC config wuauserv start=auto
	SC config bits start=auto
	SC config cryptsvc start=auto
	SC config trustedinstaller start=auto
	ECHO	[42m[COMPLETATO][0m - Reset completato. Adesso devi riavviare il computer
	ECHO [43m[Attenzione][0m - Premi [31m1[0m o [31m2[0m per visualizzare il Menu
	Goto :letsgo

::----------------------WINDOWS STORE RESET-----------------------

:wsreset
	ECHO [43m[Attenzione][0m - Quest'operazione potrebbe richiedere i Privilegi di Amministratore
	SET /P t=Vuoi effettuare un reset di Windows Store [S/N]?
	if /I "%t%" EQU "S" test&cls
	if /I "%t%" EQU "S" goto :wsresetconfirm
	if /I "%t%" EQU "N" test&cls
	if /I "%t%" EQU "N" goto :menu
	if /I "%t%" EQU "S" test&cls
	if /I "%t%" EQU "S" goto :wsresetconfirm
	if /I "%t%" EQU "n" test&cls
	if /I "%t%" EQU "n" goto :menu
	Goto :wsreset

:wsresetconfirm
	netsh winsock reset
	wsreset.exe
	ECHO	[42m[COMPLETATO][0m - Reset completato. Dovresti vedere adesso Windows Store aperto
	ECHO [43m[Attenzione][0m - Premi [31m1[0m o [31m2[0m per visualizzare il Menu
	Goto :letsgo


::----------------------END-------------------------------------------------------------------------------------------
:end
COLOR 3
ECHO Ciao e Grazie

Timeout /t 3
