::----------------------------------------------------------
::		HidroSaphire Script for Install
::----------------------------------------------------------
@echo off


::----------------------TITLE OF WINDOWS--------------------------------------------------------------------------------------
title HidroSaphrie SAF - (Script After Formatted)


::----------------------VARIABLE INITIALIZATION-------------------------------------------------------------------------------
:: Non è necessario, ma permette di visualizzare le variabili inizializzate a 0 nella debug room
	SET browser=0	
	SET player=0
	SET rar=0
	SET downloader=0	
	SET torrent=0
	SET music=0
	SET file=0
	SET sync=0
	SET vm=0
	SET remoto=0
	SET tor=0
	SET steam=0
	SET epic=0
	SET capture=0
	SET atom=0
	SET notepad=0
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
	ECHO [36mPlayer[0m		P1) VLC v2.2.8 x64	  P2) VLC		V3) PLC installer
	ECHO [36mRAR[0m		R1) WinRAR v5.9.1 x64	  R2) WinRAR		R3) WinRAR installer
	ECHO [36mDownloader[0m	J1) JDownloader 2 x64	  J2) JDown 2		J3) JDownloader 2 installer
	ECHO [36mTorrent[0m		T1) uTorrent x86	  T2) uTorrent		T3) uTorrent installer
	ECHO [36mMusica[0m		M1) Mp3tag v3.02 x86	  M2) Mp3tag		M3) Mp3tag installer 
	ECHO 		M4) Spek v.0.8.2	
	ECHO [36mDesk Remoto[0m	D1) TeamViewer x86	  D2) TeamViewer 	D3) TeamViewer installer
	ECHO [36mFileRenamer[0m	F1) FileRen Basic v6.3 	  F2) FileRenamer	F3) FileRenamer installer
	ECHO [36mSyncronizer[0m	S1) SyncTrayzor x64 	  S2) SyncTrayzor	S3) SyncTrayzor installer
	ECHO [36mVM[0m		V1) VirtualBox v6.1.14    V2) VirtualBox	V3) VirtualBox Installer
	ECHO [36mScreen Capt[0m	O1) OBS Studio x64        O2) OBS Studio 	O3) OBS Studio
	ECHO [36mGiochi[0m		G1) Steam Client x86	  G2) Steam 		G3) Steam installer
	ECHO			G4) Epic Games	  	  G5) Epic Games 	G6) Epic Games installer
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
	ECHO [36mText Editor[0m	E1) Atom x64		  E2) Atom 	E3) Atom installer
	ECHO			E4) Notepad++ x64	  E5) Notepad++ E6) Notepad installer 
	ECHO			E7) Lista pacchetti aggiuntivi Atom 
	ECHO [36mCustomization[0m	C1) Rainmeter		  C2) Rainmeter 	E3) Rainmeter
	ECHO [32m---------------------------------------------[Utility]----------------------------------------------
	ECHO [36mLink[0m		Q1) Driver video AMD	  Q2) Driver Video nVidia
	ECHO [36mUAC[0m		U1) Disabilita UAC	  U2) Abilita UAC
	ECHO [36mMix[0m		TR) Controllo TRIM
	ECHO [36mWin Update[0m	WU1) WU Riconfig	  WU2) WU hard-reset
	ECHO [36mWin Update[0m	WS1) WS Reset		
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
	::----UAC----------------------------------------
	if "%c%" EQU "U1" ECHO Ancora non implementato
	if "%c%" EQU "u1" ECHO Ancora non implementato
	if "%c%" EQU "U2" ECHO Ancora non implementato
	if "%c%" EQU "u2" ECHO Ancora non implementato
	::----MIX----------------------------------------
	if "%c%" EQU "tr" (	ECHO [32m
				ECHO 0=TRIM Abilitato / 1= TRIM Disabilitato [0m
				fsutil behavior query DisableDeleteNotify
			   )
	if "%c%" EQU "TR" (	ECHO [32m
				ECHO 0=TRIM Abilitato / 1= TRIM Disabilitato [0m
				fsutil behavior query DisableDeleteNotify
			   )
	::----BROWSER------------------------------------
	if "%c%" EQU "B1" START https://www.mozilla.org/it/firefox/download/thanks/
	if "%c%" EQU "b1" START https://www.mozilla.org/it/firefox/download/thanks/
	if "%c%" EQU "B2" Goto :browser
	if "%c%" EQU "b2" Goto :browser
	if "%c%" EQU "B3" Goto :delbrowser
	if "%c%" EQU "b3" Goto :delbrowser	
	if "%c%" EQU "B4" START https://www.torproject.org/dist/torbrowser/10.0/torbrowser-install-win64-10.0_it.exe
	if "%c%" EQU "b4" START https://www.torproject.org/dist/torbrowser/10.0/torbrowser-install-win64-10.0_it.exe
	if "%c%" EQU "B5" Goto :tor
	if "%c%" EQU "b5" Goto :tor
	if "%c%" EQU "B6" Goto :deltor
	if "%c%" EQU "b6" Goto :deltor
	::----PLAYER-------------------------------------
	if "%c%" EQU "P1" START http://download.videolan.org/pub/videolan/vlc/2.2.8/win64/vlc-2.2.8-win64.exe
	if "%c%" EQU "p1" START http://download.videolan.org/pub/videolan/vlc/2.2.8/win64/vlc-2.2.8-win64.exe
	if "%c%" EQU "P2" Goto :player
	if "%c%" EQU "p2" Goto :player	
	if "%c%" EQU "P3" Goto :delplayer
	if "%c%" EQU "p3" Goto :delplayer
	::----RAR----------------------------------------
	if "%c%" EQU "R1" START https://www.winrar.it/prelievo_ok.php?url=prelievo/WinRAR-x64-591it.exe
	if "%c%" EQU "r1" START https://www.winrar.it/prelievo_ok.php?url=prelievo/WinRAR-x64-591it.exe
	if "%c%" EQU "R2" Goto :rar
	if "%c%" EQU "r2" Goto :rar
	if "%c%" EQU "R3" Goto :delrar
	if "%c%" EQU "r3" Goto :delrar
	::----DOWNLOADER---------------------------------
	if "%c%" EQU "J1" START https://jdownloader.org/dl?v=101
	if "%c%" EQU "j1" START https://jdownloader.org/dl?v=101
	if "%c%" EQU "J2" Goto :downloader
	if "%c%" EQU "j2" Goto :downloader
	if "%c%" EQU "J3" Goto :deldownloader
	if "%c%" EQU "j3" Goto :deldownloader
	::----TORRENT------------------------------------
	if "%c%" EQU "T1" START https://download-hr.utorrent.com/track/stable/endpoint/utorrent/os/windows
	if "%c%" EQU "t1" START https://download-hr.utorrent.com/track/stable/endpoint/utorrent/os/windows
	if "%c%" EQU "T2" Goto :torrent
	if "%c%" EQU "t2" Goto :torrent
	if "%c%" EQU "T3" Goto :deltorrent
	if "%c%" EQU "t3" Goto :deltorrent
	::----MUSIC--------------------------------------
	if "%c%" EQU "M1" START https://download.mp3tag.de/mp3tagv302setup.exe
	if "%c%" EQU "m1" START https://download.mp3tag.de/mp3tagv302setup.exe
	if "%c%" EQU "M2" Goto :music
	if "%c%" EQU "m2" Goto :music
	if "%c%" EQU "M3" Goto :delmusic
	if "%c%" EQU "m3" Goto :delmusic
	if "%c%" EQU "M4" START https://github.com/alexkay/spek/releases/download/v0.8.2/spek-0.8.2.zip
	if "%c%" EQU "m4" START https://github.com/alexkay/spek/releases/download/v0.8.2/spek-0.8.2.zip
	::----DESKTOP REMOTO-----------------------------
	if "%c%" EQU "D1" START https://download.teamviewer.com/full
	if "%c%" EQU "d1" START https://download.teamviewer.com/full
	if "%c%" EQU "D2" Goto :remoto
	if "%c%" EQU "d2" Goto :remoto
	if "%c%" EQU "D3" Goto :delremoto
	if "%c%" EQU "d3" Goto :delremoto
	::----FILE RENAMER-------------------------------
	if "%c%" EQU "F1" START http://www.sherrodcomputers.com/downloads/FileRenamerBasic.exe
	if "%c%" EQU "f1" START http://www.sherrodcomputers.com/downloads/FileRenamerBasic.exe
	if "%c%" EQU "F2" Goto :file
	if "%c%" EQU "f2" Goto :file
	if "%c%" EQU "F3" Goto :delfile
	if "%c%" EQU "f3" Goto :delfile
	::----SYNCRONIZER-------------------------------
	if "%c%" EQU "s1" START https://github.com/canton7/SyncTrayzor/releases/download/v1.1.24/SyncTrayzorSetup-x64.exe
	if "%c%" EQU "S1" START https://github.com/canton7/SyncTrayzor/releases/download/v1.1.24/SyncTrayzorSetup-x64.exe
	if "%c%" EQU "s2" Goto :sync
	if "%c%" EQU "S2" Goto :sync
	if "%c%" EQU "s3" Goto :delsync
	if "%c%" EQU "S3" Goto :delsync
	::----VIRTUAL MACHINE----------------------------
	if "%c%" EQU "v1" START https://download.virtualbox.org/virtualbox/6.1.14/VirtualBox-6.1.14-140239-Win.exe
	if "%c%" EQU "V1" START https://download.virtualbox.org/virtualbox/6.1.14/VirtualBox-6.1.14-140239-Win.exe
	if "%c%" EQU "v2" Goto :vm
	if "%c%" EQU "V2" Goto :vm
	if "%c%" EQU "v3" Goto :delvm
	if "%c%" EQU "V3" Goto :delvm
	::----SCREEN CAPTURE----------------------------
	if "%c%" EQU "o1" START https://cdn-fastly.obsproject.com/downloads/OBS-Studio-26.0-Full-Installer-x64.exe
	if "%c%" EQU "O1" START https://cdn-fastly.obsproject.com/downloads/OBS-Studio-26.0-Full-Installer-x64.exe
	if "%c%" EQU "o2" Goto :capture
	if "%c%" EQU "O2" Goto :capture
	if "%c%" EQU "o3" Goto :delcapture
	if "%c%" EQU "O3" Goto :delcapture
	::----GIOCHI-------------------------------------
	if "%c%" EQU "G1" START https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe
	if "%c%" EQU "g1" START https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe
	if "%c%" EQU "G2" Goto :steam
	if "%c%" EQU "g2" Goto :steam
	if "%c%" EQU "G3" Goto :delsteam
	if "%c%" EQU "g3" Goto :delsteam
	if "%c%" EQU "G4" START https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi
	if "%c%" EQU "g4" START https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi
	if "%c%" EQU "G5" Goto :epic
	if "%c%" EQU "g5" Goto :epic
	if "%c%" EQU "G6" Goto :delepic
	if "%c%" EQU "g6" Goto :delepic
	::----EDITOR-------------------------------------
	if "%c%" EQU "E1" START https://atom.io/download/windows_x64
	if "%c%" EQU "e1" START https://atom.io/download/windows_x64
	if "%c%" EQU "E2" Goto :atom
	if "%c%" EQU "e2" Goto :atom
	if "%c%" EQU "E3" Goto :delatom
	if "%c%" EQU "e3" Goto :delatom
	if "%c%" EQU "E4" START https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.9/npp.7.9.Installer.x64.exe
	if "%c%" EQU "e4" START https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.9/npp.7.9.Installer.x64.exe
	if "%c%" EQU "E5" Goto :notepad
	if "%c%" EQU "e5" Goto :notepad
	if "%c%" EQU "E6" Goto :delnotepad
	if "%c%" EQU "e6" Goto :delnotepad
	if "%c%" EQU "E7" test&cls
	if "%c%" EQU "E7" Goto :atomInfoPacket
	if "%c%" EQU "e7" test&cls
	if "%c%" EQU "e7" Goto :atomInfoPacket
	::----TOTAL--------------------------------------
	if "%c%" EQU "TT" Goto :deltotal
	if "%c%" EQU "tt" Goto :deltotal	
	if "%c%" EQU "Tt" Goto :deltotal
	if "%c%" EQU "Tt" Goto :deltotal
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
	::----END----------------------------------------
	if %c%==0 Goto :end
	::----PAG2 UTILITY--------------------------------------
	if "%c%" EQU "Q1" START https://www.amd.com/en/support
	if "%c%" EQU "q1" START https://www.amd.com/en/support
	if "%c%" EQU "Q2" START https://www.nvidia.it/Download/index.aspx?lang=it
	if "%c%" EQU "q2" START https://www.nvidia.it/Download/index.aspx?lang=it
	if "%c%" EQU "WU1" Goto :wureset
	if "%c%" EQU "wu1" Goto :wureset
	if "%c%" EQU "wu2" ECHO Non ancora implementato
	if "%c%" EQU "wi2" ECHO Non ancora implementato
	if "%c%" EQU "WS1" Goto :wsreset
	if "%c%" EQU "ws1" Goto :wsreset
	if "%c%" EQU "i" test&cls
	if "%c%" EQU "I" Goto :information
	if "%c%" EQU "i" Goto :information
	if "%c%" EQU "C" test&cls

	Goto :letsgo


::----------------------BROWSER--------
:browser
	IF EXIST D:\Download\"Firefox Installer.exe" ECHO Installazione di [31mFirefox[0m partita dal disco D
	IF EXIST D:\Download\"Firefox Installer.exe" START D:\Download\"Firefox Installer.exe"
	IF EXIST D:\Download\"Firefox Installer.exe" Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\"Firefox Installer.exe" ECHO Installazione di [31mFirefox[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\"Firefox Installer.exe" START C:\Users\%username%\Downloads\"Firefox Installer.exe"
	IF EXIST C:\Users\%username%\Downloads\"Firefox Installer.exe" Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mFirefox[0m non esiste
	Goto :letsgo
:delbrowser
	set browser=0
	IF EXIST D:\Download\"Firefox Installer.exe" SET browser=1
	IF EXIST D:\Download\"Firefox Installer.exe" ECHO Installer di [31mFirefox[0m cancellato dal disco D
	IF EXIST D:\Download\"Firefox Installer.exe" DEL D:\Download\"Firefox Installer.exe"
	IF EXIST C:\Users\%username%\Downloads\"Firefox Installer.exe" SET browser=1
	IF EXIST C:\Users\%username%\Downloads\"Firefox Installer.exe" ECHO Installer di [31mFirefox[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\"Firefox Installer.exe" DEL C:\Users\%username%\Downloads\"Firefox Installer.exe"
	IF %browser%==1 Goto :letsgo
        IF NOT EXIST D:\Download\"Firefox Installer.exe" (
		IF NOT EXIST C:\Users\%username%\Downloads\"Firefox Installer.exe" ECHO [43m[Attenzione][0m - L'installer di [31mFirefox[0m non esiste
	)
	Goto :letsgo
:tor
	IF EXIST D:\Download\torbrowser-install-win64-10.0_it.exe ECHO Installazione di [31mTor[0m partita dal disco D
	IF EXIST D:\Download\torbrowser-install-win64-10.0_it.exe START D:\Download\torbrowser-install-win64-10.0_it.exe
	IF EXIST D:\Download\torbrowser-install-win64-10.0_it.exe Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\torbrowser-install-win64-10.0_it.exe ECHO Installazione di [31mTor[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\torbrowser-install-win64-10.0_it.exe START C:\Users\%username%\Downloads\torbrowser-install-win64-10.0_it.exe
	IF EXIST C:\Users\%username%\Downloads\torbrowser-install-win64-10.0_it.exe Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mTor[0m non esiste
	Goto :letsgo
:deltor
	set tor=0
	IF EXIST D:\Download\torbrowser-install-win64-10.0_it.exe SET tor=1
	IF EXIST D:\Download\torbrowser-install-win64-10.0_it.exe ECHO Installer di [31mTor[0m cancellato dal disco D
	IF EXIST D:\Download\torbrowser-install-win64-10.0_it.exe DEL D:\Download\torbrowser-install-win64-10.0_it.exe
	IF EXIST C:\Users\%username%\Downloads\torbrowser-install-win64-10.0_it.exe SET tor=1
	IF EXIST C:\Users\%username%\Downloads\torbrowser-install-win64-10.0_it.exe ECHO Installer di [31mTor[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\torbrowser-install-win64-10.0_it.exe DEL C:\Users\%username%\Downloads\torbrowser-install-win64-10.0_it.exe
	IF %tor%==1 Goto :letsgo
        IF NOT EXIST D:\Download\torbrowser-install-win64-10.0_it.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\torbrowser-install-win64-10.0_it.exe ECHO [43m[Attenzione][0m - L'installer di [31mTor[0m non esiste
	)
	Goto :letsgo
::----------------------PLAYER---------
:player
	IF EXIST D:\Download\vlc-2.2.8-win64.exe ECHO Installazione di [31mVLC[0m partita dal disco D
	IF EXIST D:\Download\vlc-2.2.8-win64.exe START D:\Download\vlc-2.2.8-win64.exe
	IF EXIST D:\Download\vlc-2.2.8-win64.exe Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\vlc-2.2.8-win64.exe ECHO Installazione di [31mVLC[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\vlc-2.2.8-win64.exe START C:\Users\%username%\Downloads\vlc-2.2.8-win64.exe
	IF EXIST C:\Users\%username%\Downloads\vlc-2.2.8-win64.exe Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mVLC[0m non esiste
	Goto :letsgo
:delplayer
	set player=0
	IF EXIST D:\Download\vlc-2.2.8-win64.exe SET player=1
	IF EXIST D:\Download\vlc-2.2.8-win64.exe ECHO Installer di [31mVLC[0m cancellato dal disco D
	IF EXIST D:\Download\vlc-2.2.8-win64.exe DEL D:\Download\vlc-2.2.8-win64.exe
	IF EXIST C:\Users\%username%\Downloads\vlc-2.2.8-win64.exe SET player=1	
	IF EXIST C:\Users\%username%\Downloads\vlc-2.2.8-win64.exe ECHO Installer di [31mVLC[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\vlc-2.2.8-win64.exe DEL C:\Users\%username%\Downloads\vlc-2.2.8-win64.exe
	IF %player%==1 Goto :letsgo
        IF NOT EXIST D:\Download\vlc-2.2.8-win64.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\vlc-2.2.8-win64.exe ECHO [43m[Attenzione][0m - L'installer di [31mVLC[0m non esiste
	)
	Goto :letsgo
::----------------------RAR------------
:rar
	IF EXIST D:\Download\WinRAR-x64-591it.exe ECHO Installazione di [31mWinRAR[0m partita dal disco D
	IF EXIST D:\Download\WinRAR-x64-591it.exe START D:\Download\WinRAR-x64-591it.exe
	IF EXIST D:\Download\WinRAR-x64-591it.exe Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\WinRAR-x64-591it.exe ECHO Installazione di [31mWinRAR[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\WinRAR-x64-591it.exe START C:\Users\%username%\Downloads\WinRAR-x64-591it.exe
	IF EXIST C:\Users\%username%\Downloads\WinRAR-x64-591it.exe Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mWinRAR[0m non esiste
	Goto :letsgo
:delrar
	set rar=0
	IF EXIST D:\Download\WinRAR-x64-591it.exe SET rar=1
	IF EXIST D:\Download\WinRAR-x64-591it.exe ECHO Installer di [31mWinRAR[0m cancellato dal disco D
	IF EXIST D:\Download\WinRAR-x64-591it.exe DEL D:\Download\vlc-2.2.8-win64.exe
	IF EXIST C:\Users\%username%\Downloads\WinRAR-x64-591it.exe SET rar=1	
	IF EXIST C:\Users\%username%\Downloads\WinRAR-x64-591it.exe ECHO Installer di [31mWinRAR[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\WinRAR-x64-591it.exe DEL C:\Users\%username%\Downloads\WinRAR-x64-591it.exe
	IF %rar%==1 Goto :letsgo
        IF NOT EXIST D:\Download\WinRAR-x64-591it.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\WinRAR-x64-591it.exe ECHO [43m[Attenzione][0m - L'installer di [31mWinRAR[0m non esiste
	)
	Goto :letsgo
::----------------------DOWNLOADER-----
:downloader
	IF EXIST D:\Download\JDownloaderSetup.exe ECHO Installazione di [31mJDownloader 2[0m partita dal disco D
	IF EXIST D:\Download\JDownloaderSetup.exe START D:\Download\JDownloaderSetup.exe
	IF EXIST D:\Download\JDownloaderSetup.exe Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\JDownloaderSetup.exe ECHO Installazione di [31mJDownloader 2[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\JDownloaderSetup.exe START C:\Users\%username%\Downloads\JDownloaderSetup.exe
	IF EXIST C:\Users\%username%\Downloads\JDownloaderSetup.exe Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mJDownloader 2[0m non esiste
	Goto :letsgo
:deldownloader
	set downloader=0
	IF EXIST D:\Download\JDownloaderSetup.exe SET downloader=1
	IF EXIST D:\Download\JDownloaderSetup.exe ECHO Installer di [31mJDownloader 2[0m cancellato dal disco D
	IF EXIST D:\Download\JDownloaderSetup.exe DEL D:\Download\JDownloaderSetup.exe
	IF EXIST C:\Users\%username%\Downloads\JDownloaderSetup.exe SET downloader=1	
	IF EXIST C:\Users\%username%\Downloads\JDownloaderSetup.exe ECHO Installer di [31mJDownloader 2[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\JDownloaderSetup.exe DEL C:\Users\%username%\Downloads\JDownloaderSetup.exe
	IF %downloader%==1 Goto :letsgo
        IF NOT EXIST D:\Download\JDownloaderSetup.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\JDownloaderSetup.exe ECHO [43m[Attenzione][0m - L'installer di [31mJDownloader 2[0m non esiste
	)
	Goto :letsgo
::----------------------TORRENT---
:torrent
	IF EXIST D:\Download\uTorrent.exe ECHO Installazione di [31muTorrent[0m partita dal disco D
	IF EXIST D:\Download\uTorrent.exe START D:\Download\uTorrent.exe
	IF EXIST D:\Download\uTorrent.exe Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\uTorrent.exe ECHO Installazione di [31muTorrent[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\uTorrent.exe START C:\Users\%username%\Downloads\uTorrent.exe
	IF EXIST C:\Users\%username%\Downloads\uTorrent.exe Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31muTorrent[0m non esiste
	Goto :letsgo
:deltorrent
	set torrent=0
	IF EXIST D:\Download\uTorrent.exe SET torrent=1
	IF EXIST D:\Download\uTorrent.exe ECHO Installer di [31muTorrent[0m cancellato dal disco D
	IF EXIST D:\Download\uTorrent.exe DEL D:\Download\uTorrent.exe
	IF EXIST C:\Users\%username%\Downloads\uTorrent.exe SET torrent=1
	IF EXIST C:\Users\%username%\Downloads\uTorrent.exe ECHO Installer di [31muTorrent[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\uTorrent.exe DEL C:\Users\%username%\Downloads\uTorrent.exe
	IF %torrent%==1 Goto :letsgo
        IF NOT EXIST D:\Download\uTorrent.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\uTorrent.exe ECHO [43m[Attenzione][0m - L'installer di [31muTorrent[0m non esiste
	)
	Goto :letsgo
::----------------------MUSIC-----
:music
	IF EXIST D:\Download\mp3tagv302setup.exe ECHO Installazione di [31mMp3tag[0m partita dal disco D
	IF EXIST D:\Download\mp3tagv302setup.exe START D:\Download\mp3tagv302setup.exe
	IF EXIST D:\Download\mp3tagv302setup.exe Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\mp3tagv302setup.exe ECHO Installazione di [31mMp3tag[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\mp3tagv302setup.exe START C:\Users\%username%\Downloads\mp3tagv302setup.exe
	IF EXIST C:\Users\%username%\Downloads\mp3tagv302setup.exe Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mMp3tag[0m non esiste
	Goto :letsgo
:delmusic
	set music=0
	IF EXIST D:\Download\mp3tagv302setup.exe SET music=1
	IF EXIST D:\Download\mp3tagv302setup.exe ECHO Installer di [31mMp3tag[0m cancellato dal disco D
	IF EXIST D:\Download\mp3tagv302setup.exe DEL D:\Download\mp3tagv302setup.exe
	IF EXIST C:\Users\%username%\Downloads\mp3tagv302setup.exe SET music=1	
	IF EXIST C:\Users\%username%\Downloads\mp3tagv302setup.exe ECHO Installer di [31Mp3tag[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\mp3tagv302setup.exe DEL C:\Users\%username%\Downloads\mp3tagv302setup.exe
	IF %music%==1 Goto :letsgo
        IF NOT EXIST D:\Download\mp3tagv302setup.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\mp3tagv302setup.exe ECHO [43m[Attenzione][0m - L'installer di [31mMp3tag[0m non esiste
	)
	Goto :letsgo
::----------------------REMOTO----
:remoto
	IF EXIST D:\Download\TeamViewer_Setup.exe ECHO Installazione di [31mTeamViewer[0m partita dal disco D
	IF EXIST D:\Download\TeamViewer_Setup.exe START D:\Download\TeamViewer_Setup.exe
	IF EXIST D:\Download\TeamViewer_Setup.exe Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\TeamViewer_Setup.exe ECHO Installazione di [31mTeamViewer[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\TeamViewer_Setup.exe START C:\Users\%username%\Downloads\TeamViewer_Setup.exe
	IF EXIST C:\Users\%username%\Downloads\TeamViewer_Setup.exe Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mTeamViewer[0m non esiste
	Goto :letsgo
:delremoto
	set remoto=0
	IF EXIST D:\Download\TeamViewer_Setup.exe SET remoto=1
	IF EXIST D:\Download\TeamViewer_Setup.exe ECHO Installer di [31mTeamViewer[0m cancellato dal disco D
	IF EXIST D:\Download\TeamViewer_Setup.exe DEL D:\Download\TeamViewer_Setup.exe
	IF EXIST C:\Users\%username%\Downloads\TeamViewer_Setup.exe SET remoto=1
	IF EXIST C:\Users\%username%\Downloads\TeamViewer_Setup.exe ECHO Installer di [31mTeamViewer[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\TeamViewer_Setup.exe DEL C:\Users\%username%\Downloads\TeamViewer_Setup.exe
	IF %remoto%==1 Goto :letsgo
        IF NOT EXIST D:\Download\TeamViewer_Setup.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\TeamViewer_Setup.exe ECHO [43m[Attenzione][0m - L'installer di [31mTeamViewer[0m non esiste
	)
	Goto :letsgo
::----------------------FILE RENAMER--
:file
	IF EXIST D:\Download\FileRenamerBasic.exe ECHO Installazione di [31mFile Renamer Basic[0m partita dal disco D
	IF EXIST D:\Download\FileRenamerBasic.exe START D:\Download\FileRenamerBasic.exe
	IF EXIST D:\Download\FileRenamerBasic.exe Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\FileRenamerBasic.exe ECHO Installazione di [31mFile Renamer Basic[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\FileRenamerBasic.exe START C:\Users\%username%\Downloads\FileRenamerBasic.exe
	IF EXIST C:\Users\%username%\Downloads\FileRenamerBasic.exe Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mFile Renamer Basic[0m non esiste
	Goto :letsgo
:delfile
	set file=0
	IF EXIST D:\Download\FileRenamerBasic.exe SET file=1
	IF EXIST D:\Download\FileRenamerBasic.exe ECHO Installer di [31mFile Renamer Basic[0m cancellato dal disco D
	IF EXIST D:\Download\FileRenamerBasic.exe DEL D:\Download\FileRenamerBasic.exe
	IF EXIST C:\Users\%username%\Downloads\FileRenamerBasic.exe SET file=1	
	IF EXIST C:\Users\%username%\Downloads\FileRenamerBasic.exe ECHO Installer di [31File Renamer Basic[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\FileRenamerBasic.exe DEL C:\Users\%username%\Downloads\FileRenamerBasic.exe
	IF %file%==1 Goto :letsgo
        IF NOT EXIST D:\Download\FileRenamerBasic.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\FileRenamerBasic.exe ECHO [43m[Attenzione][0m - L'installer di [31mFile Renamer Basic[0m non esiste
	)
	Goto :letsgo
::----------------------SYNC-----
:sync
	IF EXIST D:\Download\SyncTrayzorSetup-x64.exe ECHO Installazione di [31mSyncTrayzor[0m partita dal disco D
	IF EXIST D:\Download\SyncTrayzorSetup-x64.exe START D:\Download\SyncTrayzorSetup-x64.exe
	IF EXIST D:\Download\SyncTrayzorSetup-x64.exe Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\SyncTrayzorSetup-x64.exe ECHO Installazione di [31mSyncTrayzor[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\SyncTrayzorSetup-x64.exe START C:\Users\%username%\Downloads\SyncTrayzorSetup-x64.exe
	IF EXIST C:\Users\%username%\Downloads\SyncTrayzorSetup-x64.exe Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mSyncTrayzor[0m non esiste
	Goto :letsgo
:delsync
	set sync=0
	IF EXIST D:\Download\SyncTrayzorSetup-x64.exe SET sync=1
	IF EXIST D:\Download\SyncTrayzorSetup-x64.exe ECHO Installer di [31mSyncTrayzor[0m cancellato dal disco D
	IF EXIST D:\Download\SyncTrayzorSetup-x64.exe DEL D:\Download\SyncTrayzorSetup-x64.exe
	IF EXIST C:\Users\%username%\Downloads\SyncTrayzorSetup-x64.exe SET sync=1	
	IF EXIST C:\Users\%username%\Downloads\SyncTrayzorSetup-x64.exe ECHO Installer di [31SyncTrayzor[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\SyncTrayzorSetup-x64.exe DEL C:\Users\%username%\Downloads\SyncTrayzorSetup-x64.exe
	IF %sync%==1 Goto :letsgo
        IF NOT EXIST D:\Download\SyncTrayzorSetup-x64.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\SyncTrayzorSetup-x64.exe ECHO [43m[Attenzione][0m - L'installer di [31mSyncTrayzor[0m non esiste
	)
	Goto :letsgo
::----------------------VM-----
:vm
	IF EXIST D:\Download\VirtualBox-6.1.14-140239-Win.exe ECHO Installazione di [31mVirtualBox[0m partita dal disco D
	IF EXIST D:\Download\VirtualBox-6.1.14-140239-Win.exe START D:\Download\VirtualBox-6.1.14-140239-Win.exe
	IF EXIST D:\Download\VirtualBox-6.1.14-140239-Win.exe Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\VirtualBox-6.1.14-140239-Win.exe ECHO Installazione di [31mVirtualBox[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\VirtualBox-6.1.14-140239-Win.exe START C:\Users\%username%\Downloads\VirtualBox-6.1.14-140239-Win.exe
	IF EXIST C:\Users\%username%\Downloads\VirtualBox-6.1.14-140239-Win.exe Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mVirtualBox[0m non esiste
	Goto :letsgo
:delvm
	set vm=0
	IF EXIST D:\Download\VirtualBox-6.1.14-140239-Win.exe SET vm=1
	IF EXIST D:\Download\VirtualBox-6.1.14-140239-Win.exe ECHO Installer di [31mVirtualBox[0m cancellato dal disco D
	IF EXIST D:\Download\VirtualBox-6.1.14-140239-Win.exe DEL D:\Download\VirtualBox-6.1.14-140239-Win.exe
	IF EXIST C:\Users\%username%\Downloads\VirtualBox-6.1.14-140239-Win.exe SET vm=1	
	IF EXIST C:\Users\%username%\Downloads\VirtualBox-6.1.14-140239-Win.exe ECHO Installer di [31VirtualBox[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\VirtualBox-6.1.14-140239-Win.exe DEL C:\Users\%username%\Downloads\VirtualBox-6.1.14-140239-Win.exe
	IF %vm%==1 Goto :letsgo
        IF NOT EXIST D:\Download\VirtualBox-6.1.14-140239-Win.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\VirtualBox-6.1.14-140239-Win.exe ECHO [43m[Attenzione][0m - L'installer di [31mVirtualBox[0m non esiste
	)
	Goto :letsgo
::----------------------CAPTURE-----
:capture
	IF EXIST D:\Download\OBS-Studio-26.0-Full-Installer-x64.exe ECHO Installazione di [31mOBS Studio[0m partita dal disco D
	IF EXIST D:\Download\OBS-Studio-26.0-Full-Installer-x64.exe START D:\Download\OBS-Studio-26.0-Full-Installer-x64.exe
	IF EXIST D:\Download\OBS-Studio-26.0-Full-Installer-x64.exe Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\OBS-Studio-26.0-Full-Installer-x64.exe ECHO Installazione di [31mOBS Studio[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\OBS-Studio-26.0-Full-Installer-x64.exe START C:\Users\%username%\Downloads\OBS-Studio-26.0-Full-Installer-x64.exe
	IF EXIST C:\Users\%username%\Downloads\OBS-Studio-26.0-Full-Installer-x64.exe Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mOBS Studio[0m non esiste
	Goto :letsgo
:delcapture
	set capture=0
	IF EXIST D:\Download\OBS-Studio-26.0-Full-Installer-x64.exe SET capture=1
	IF EXIST D:\Download\OBS-Studio-26.0-Full-Installer-x64.exe ECHO Installer di [31mOBS Studio[0m cancellato dal disco D
	IF EXIST D:\Download\OBS-Studio-26.0-Full-Installer-x64.exe DEL D:\Download\OBS-Studio-26.0-Full-Installer-x64.exe
	IF EXIST C:\Users\%username%\Downloads\OBS-Studio-26.0-Full-Installer-x64.exe SET capture=1	
	IF EXIST C:\Users\%username%\Downloads\OBS-Studio-26.0-Full-Installer-x64.exe ECHO Installer di [31mOBS Studio[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\OBS-Studio-26.0-Full-Installer-x64.exe DEL C:\Users\%username%\Downloads\OBS-Studio-26.0-Full-Installer-x64.exe
	IF %capture%==1 Goto :letsgo
        IF NOT EXIST D:\Download\OBS-Studio-26.0-Full-Installer-x64.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\OBS-Studio-26.0-Full-Installer-x64.exe ECHO [43m[Attenzione][0m - L'installer di [31mOBS Studio[0m non esiste
	)
	Goto :letsgo
::----------------------GAME-----
:steam
	IF EXIST D:\Download\SteamSetup.exe ECHO Installazione di [31mSteam[0m partita dal disco D
	IF EXIST D:\Download\SteamSetup.exe START D:\Download\SteamSetup.exe
	IF EXIST D:\Download\SteamSetup.exe Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\SteamSetup.exe ECHO Installazione di [31mSteam[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\SteamSetup.exe START C:\Users\%username%\Downloads\SteamSetup.exe
	IF EXIST C:\Users\%username%\Downloads\SteamSetup.exe Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mSteam[0m non esiste
	Goto :letsgo
:delsteam
	set steam=0
	IF EXIST D:\Download\SteamSetup.exe SET steam=1
	IF EXIST D:\Download\SteamSetup.exe ECHO Installer di [31mSteam[0m cancellato dal disco D
	IF EXIST D:\Download\SteamSetup.exe DEL D:\Download\SteamSetup.exe
	IF EXIST C:\Users\%username%\Downloads\SteamSetup.exe SET steam=1
	IF EXIST C:\Users\%username%\Downloads\SteamSetup.exe ECHO Installer di [31mSteam[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\SteamSetup.exe DEL C:\Users\%username%\Downloads\SteamSetup.exe
	IF %steam%==1 Goto :letsgo
        IF NOT EXIST D:\Download\SteamSetup.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\SteamSetup.exe ECHO [43m[Attenzione][0m - L'installer di [31mSteam[0m non esiste
	)
	Goto :letsgo
:epic
	IF EXIST D:\Download\EpicInstaller-10.18.8.msi ECHO [43m[Attenzione][0m - L'installer di [31mEpic Games Launcher[0m potrebbe richiedere Privilegi di Amministratore
	IF EXIST D:\Download\EpicInstaller-10.18.8.msi ECHO Installazione di [31mEpic Games Launcher[0m partita dal disco D
	IF EXIST D:\Download\EpicInstaller-10.18.8.msi START D:\Download\EpicInstaller-10.18.8.msi
	IF EXIST D:\Download\EpicInstaller-10.18.8.msi Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi ECHO [43m[Attenzione][0m - L'installer di [31mEpic Games Launcher[0m potrebbe richiedere Privilegi di Amministratore
	IF EXIST C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi ECHO Installazione di [31mEpic Games Launcher[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi START C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi
	IF EXIST C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mEpic Games Launcher[0m non esiste
	Goto :letsgo
:delepic
	set epic=0
	IF EXIST D:\Download\EpicInstaller-10.18.8.msi SET epic=1
	IF EXIST D:\Download\EpicInstaller-10.18.8.msi ECHO Installer di [31mEpic Games Launcher[0m cancellato dal disco D
	IF EXIST D:\Download\EpicInstaller-10.18.8.msi DEL D:\Download\EpicInstaller-10.18.8.msi
	IF EXIST C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi SET epic=1	
	IF EXIST C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi ECHO Installer di [31mEpic Games Launcher[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi DEL C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi
	IF %epic%==1 Goto :letsgo
        IF NOT EXIST D:\Download\EpicInstaller-10.18.8.msi (
		IF NOT EXIST C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi ECHO [43m[Attenzione][0m - L'installer di [31mEpic Games Launcher[0m non esiste
	)
	Goto :letsgo
::----------------------EDITOR-----
:atom
	IF EXIST D:\Download\AtomSetup-x64.exe ECHO Installazione di [31mAtom[0m partita dal disco D
	IF EXIST D:\Download\AtomSetup-x64.exe START D:\Download\SteamSetup.exe
	IF EXIST D:\Download\AtomSetup-x64.exe Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\AtomSetup-x64.exe ECHO Installazione di [31mAtom[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\AtomSetup-x64.exe START C:\Users\%username%\Downloads\AtomSetup-x64.exe
	IF EXIST C:\Users\%username%\Downloads\AtomSetup-x64.exe Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mAtom[0m non esiste
	Goto :letsgo
:delatom
	set atom=0
	IF EXIST D:\Download\AtomSetup-x64.exe SET atom=1
	IF EXIST D:\Download\AtomSetup-x64.exe ECHO Installer di [31mAtom[0m cancellato dal disco D
	IF EXIST D:\Download\AtomSetup-x64.exe DEL D:\Download\AtomSetup-x64.exe
	IF EXIST C:\Users\%username%\Downloads\AtomSetup-x64.exe SET atom=1
	IF EXIST C:\Users\%username%\Downloads\AtomSetup-x64.exe ECHO Installer di [31mAtom[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\AtomSetup-x64.exe DEL C:\Users\%username%\Downloads\AtomSetup-x64.exe
	IF %atom%==1 Goto :letsgo
        IF NOT EXIST D:\Download\AtomSetup-x64.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\AtomSetup-x64.exe ECHO [43m[Attenzione][0m - L'installer di [31mAtom[0m non esiste
	)
	Goto :letsgo
:notepad
	IF EXIST D:\Download\npp.7.9.Installer.x64.exe ECHO Installazione di [31mNotepad++[0m partita dal disco D
	IF EXIST D:\Download\npp.7.9.Installer.x64.exe START D:\Download\npp.7.9.Installer.x64.exe
	IF EXIST D:\Download\npp.7.9.Installer.x64.exe Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\npp.7.9.Installer.x64.exe ECHO Installazione di [31mNotepad++[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\npp.7.9.Installer.x64.exe START C:\Users\%username%\Downloads\npp.7.9.Installer.x64.exe
	IF EXIST C:\Users\%username%\Downloads\npp.7.9.Installer.x64.exe Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mNotepad++[0m non esiste
	Goto :letsgo
:delnotepad
	set notepad=0
	IF EXIST D:\Download\npp.7.9.Installer.x64.exe SET notepad=1
	IF EXIST D:\Download\npp.7.9.Installer.x64.exe ECHO Installer di [31mNotepad++[0m cancellato dal disco D
	IF EXIST D:\Download\npp.7.9.Installer.x64.exe DEL D:\Download\npp.7.9.Installer.x64.exe 
	IF EXIST C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi SET notepad=1
	IF EXIST C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi ECHO Installer di [31mNotepad++[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi DEL C:\Users\%username%\Downloads\npp.7.9.Installer.x64.exe
	IF %notepad%==1 Goto :letsgo
        IF NOT EXIST D:\Download\npp.7.9.Installer.x64.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\npp.7.9.Installer.x64.exe ECHO [43m[Attenzione][0m - L'installer di [31mNotepad++[0m non esiste
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


::----------------------INFO-----------
:information
	ECHO [33m
	ECHO 	  *********************************************************
	ECHO 	 *	  HidroSaphire SAF - Script After Formatted	   *
	ECHO 	*************************************************************
	ECHO 	*	  Developed by Enrico Mancuso (HidroSaphire)	    *
	ECHO 	 *	      https://github.com/HidroSaphire		   *
	ECHO 	  *	      					          *
	ECHO 	   *		     Versione = v.0.1.1 		 *
	ECHO 	    *		  Codename = Roaring Kitty		*
	ECHO 	     *		 Ultima Release = 01/10/2020	       *
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
	ECHO 	  		! 	browser=%browser%player=%player%	rar=%rar%		    !
	ECHO 	  		! 	rar=%rar%		downloader=%downloader%torrent=%torrent%	    !
	ECHO 	  		! 	music=%music%		file=%file%		sync=%sync%		    !
	ECHO 	  		! 	vm=%vm%		remoto=%remoto%	tor=%tor%	 	    !
	ECHO 	  		! 	steam=%steam%		epic=%epic%		capture=%capture%	    !
	ECHO 	  		! 	atom=%atom%		notepad=%notepad%	   		    !
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
	IF EXIST D:\Download\"Firefox Installer.exe" ECHO Installer di [31mFirefox[0m cancellato dal disco D
	IF EXIST D:\Download\"Firefox Installer.exe" DEL D:\Download\"Firefox Installer.exe"
	IF EXIST C:\Users\%username%\Downloads\"Firefox Installer.exe" ECHO Installer di [31mFirefox[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\"Firefox Installer.exe" DEL C:\Users\%username%\Downloads\"Firefox Installer.exe"
        IF NOT EXIST D:\Download\"Firefox Installer.exe" (
		IF NOT EXIST C:\Users\%username%\Downloads\"Firefox Installer.exe" ECHO [43m[Attenzione][0m - L'installer di [31mFirefox[0m non esiste
	)
	IF EXIST D:\Download\torbrowser-install-win64-10.0_it.exe ECHO Installer di [31mTor[0m cancellato dal disco D
	IF EXIST D:\Download\torbrowser-install-win64-10.0_it.exe DEL D:\Download\torbrowser-install-win64-10.0_it.exe
	IF EXIST C:\Users\%username%\Downloads\torbrowser-install-win64-10.0_it.exe ECHO Installer di [31mTor[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\torbrowser-install-win64-10.0_it.exe DEL C:\Users\%username%\Downloads\torbrowser-install-win64-10.0_it.exe
        IF NOT EXIST D:\Download\torbrowser-install-win64-10.0_it.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\torbrowser-install-win64-10.0_it.exe ECHO [43m[Attenzione][0m - L'installer di [31mTor[0m non esiste
	)
	IF EXIST D:\Download\vlc-2.2.8-win64.exe ECHO Installer di [31mVLC[0m cancellato dal disco D
	IF EXIST D:\Download\vlc-2.2.8-win64.exe DEL D:\Download\vlc-2.2.8-win64.exe
	IF EXIST C:\Users\%username%\Downloads\vlc-2.2.8-win64.exe ECHO Installer di [31mVLC[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\vlc-2.2.8-win64.exe DEL C:\Users\%username%\Downloads\vlc-2.2.8-win64.exe
	IF NOT EXIST D:\Download\vlc-2.2.8-win64.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\vlc-2.2.8-win64.exe ECHO [43m[Attenzione][0m - L'installer di [31mVLC[0m non esiste
	)
	IF EXIST D:\Download\WinRAR-x64-591it.exe ECHO Installer di [31mWinRAR[0m cancellato dal disco D
	IF EXIST D:\Download\WinRAR-x64-591it.exe DEL D:\Download\vlc-2.2.8-win64.exe
	IF EXIST C:\Users\%username%\Downloads\WinRAR-x64-591it.exe ECHO Installer di [31mWinRAR[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\WinRAR-x64-591it.exe DEL C:\Users\%username%\Downloads\WinRAR-x64-591it.exe
	 IF NOT EXIST D:\Download\WinRAR-x64-591it.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\WinRAR-x64-591it.exe ECHO [43m[Attenzione][0m - L'installer di [31mWinRAR[0m non esiste
	)
	IF EXIST D:\Download\JDownloaderSetup.exe ECHO Installer di [31mJDownloader 2[0m cancellato dal disco D
	IF EXIST D:\Download\JDownloaderSetup.exe DEL D:\Download\JDownloaderSetup.exe
	IF EXIST C:\Users\%username%\Downloads\JDownloaderSetup.exe ECHO Installer di [31mJDownloader 2[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\JDownloaderSetup.exe DEL C:\Users\%username%\Downloads\JDownloaderSetup.exe
	IF NOT EXIST D:\Download\JDownloaderSetup.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\JDownloaderSetup.exe ECHO [43m[Attenzione][0m - L'installer di [31mJDownloader 2[0m non esiste
	)
	IF EXIST D:\Download\uTorrent.exe ECHO Installer di [31muTorrent[0m cancellato dal disco D
	IF EXIST D:\Download\uTorrent.exe DEL D:\Download\uTorrent.exe
	IF EXIST C:\Users\%username%\Downloads\uTorrent.exe ECHO Installer di [31muTorrent[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\uTorrent.exe DEL C:\Users\%username%\Downloads\uTorrent.exe
	IF NOT EXIST D:\Download\uTorrent.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\uTorrent.exe ECHO [43m[Attenzione][0m - L'installer di [31muTorrent[0m non esiste
	)
	IF EXIST D:\Download\mp3tagv302setup.exe ECHO Installer di [31mMp3tag[0m cancellato dal disco D
	IF EXIST D:\Download\mp3tagv302setup.exe DEL D:\Download\mp3tagv302setup.exe
	IF EXIST C:\Users\%username%\Downloads\mp3tagv302setup.exe ECHO Installer di [31Mp3tag[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\mp3tagv302setup.exe DEL C:\Users\%username%\Downloads\mp3tagv302setup.exe
	IF NOT EXIST D:\Download\mp3tagv302setup.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\mp3tagv302setup.exe ECHO [43m[Attenzione][0m - L'installer di [31mMp3tag[0m non esiste
	)
	IF EXIST D:\Download\TeamViewer_Setup.exe ECHO Installer di [31mTeamViewer[0m cancellato dal disco D
	IF EXIST D:\Download\TeamViewer_Setup.exe DEL D:\Download\TeamViewer_Setup.exe
	IF EXIST C:\Users\%username%\Downloads\TeamViewer_Setup.exe ECHO Installer di [31mTeamViewer[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\TeamViewer_Setup.exe DEL C:\Users\%username%\Downloads\TeamViewer_Setup.exe
	IF NOT EXIST D:\Download\TeamViewer_Setup.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\TeamViewer_Setup.exe ECHO [43m[Attenzione][0m - L'installer di [31mTeamViewer[0m non esiste
	)
	IF EXIST D:\Download\FileRenamerBasic.exe ECHO Installer di [31mFile Renamer Basic[0m cancellato dal disco D
	IF EXIST D:\Download\FileRenamerBasic.exe DEL D:\Download\FileRenamerBasic.exe
	IF EXIST C:\Users\%username%\Downloads\FileRenamerBasic.exe ECHO Installer di [31File Renamer Basic[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\FileRenamerBasic.exe DEL C:\Users\%username%\Downloads\FileRenamerBasic.exe
	IF NOT EXIST D:\Download\FileRenamerBasic.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\FileRenamerBasic.exe ECHO [43m[Attenzione][0m - L'installer di [31mFile Renamer Basic[0m non esiste
	)
	IF EXIST D:\Download\SyncTrayzorSetup-x64.exe ECHO Installer di [31mSyncTrayzor[0m cancellato dal disco D
	IF EXIST D:\Download\SyncTrayzorSetup-x64.exe DEL D:\Download\SyncTrayzorSetup-x64.exe
	IF EXIST C:\Users\%username%\Downloads\SyncTrayzorSetup-x64.exe ECHO Installer di [31SyncTrayzor[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\SyncTrayzorSetup-x64.exe DEL C:\Users\%username%\Downloads\SyncTrayzorSetup-x64.exe
	IF NOT EXIST D:\Download\SyncTrayzorSetup-x64.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\SyncTrayzorSetup-x64.exe ECHO [43m[Attenzione][0m - L'installer di [31mSyncTrayzor[0m non esiste
	)
	IF EXIST D:\Download\VirtualBox-6.1.14-140239-Win.exe ECHO Installer di [31mVirtualBox[0m cancellato dal disco D
	IF EXIST D:\Download\VirtualBox-6.1.14-140239-Win.exe DEL D:\Download\VirtualBox-6.1.14-140239-Win.exe
	IF EXIST C:\Users\%username%\Downloads\VirtualBox-6.1.14-140239-Win.exe ECHO Installer di [31VirtualBox[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\VirtualBox-6.1.14-140239-Win.exe DEL C:\Users\%username%\Downloads\VirtualBox-6.1.14-140239-Win.exe
	IF NOT EXIST D:\Download\VirtualBox-6.1.14-140239-Win.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\VirtualBox-6.1.14-140239-Win.exe ECHO [43m[Attenzione][0m - L'installer di [31mVirtualBox[0m non esiste
	)
	IF EXIST D:\Download\OBS-Studio-26.0-Full-Installer-x64.exe ECHO Installer di [31mOBS Studio[0m cancellato dal disco D
	IF EXIST D:\Download\OBS-Studio-26.0-Full-Installer-x64.exe DEL D:\Download\OBS-Studio-26.0-Full-Installer-x64.exe
	IF EXIST C:\Users\%username%\Downloads\OBS-Studio-26.0-Full-Installer-x64.exe ECHO Installer di [31mOBS Studio[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\OBS-Studio-26.0-Full-Installer-x64.exe DEL C:\Users\%username%\Downloads\OBS-Studio-26.0-Full-Installer-x64.exe
	IF NOT EXIST D:\Download\OBS-Studio-26.0-Full-Installer-x64.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\OBS-Studio-26.0-Full-Installer-x64.exe ECHO [43m[Attenzione][0m - L'installer di [31mOBS Studio[0m non esiste
	)
	IF EXIST D:\Download\SteamSetup.exe ECHO Installer di [31mSteam[0m cancellato dal disco D
	IF EXIST D:\Download\SteamSetup.exe DEL D:\Download\SteamSetup.exe
	IF EXIST C:\Users\%username%\Downloads\SteamSetup.exe ECHO Installer di [31mSteam[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\SteamSetup.exe DEL C:\Users\%username%\Downloads\SteamSetup.exe
	IF NOT EXIST D:\Download\SteamSetup.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\SteamSetup.exe ECHO [43m[Attenzione][0m - L'installer di [31mSteam[0m non esiste
	)
	IF EXIST D:\Download\EpicInstaller-10.18.8.msi ECHO Installer di [31mEpic Games Launcher[0m cancellato dal disco D
	IF EXIST D:\Download\EpicInstaller-10.18.8.msi DEL D:\Download\EpicInstaller-10.18.8.msi
	IF EXIST C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi ECHO Installer di [31mEpic Games Launcher[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi DEL C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi
	IF NOT EXIST D:\Download\EpicInstaller-10.18.8.msi (
		IF NOT EXIST C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi ECHO [43m[Attenzione][0m - L'installer di [31mEpic Games Launcher[0m non esiste
	)
	IF EXIST D:\Download\AtomSetup-x64.exe ECHO Installer di [31mAtom[0m cancellato dal disco D
	IF EXIST D:\Download\AtomSetup-x64.exe DEL D:\Download\AtomSetup-x64.exe
	IF EXIST C:\Users\%username%\Downloads\AtomSetup-x64.exe ECHO Installer di [31mAtom[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\AtomSetup-x64.exe DEL C:\Users\%username%\Downloads\AtomSetup-x64.exe
	IF NOT EXIST D:\Download\AtomSetup-x64.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\AtomSetup-x64.exe ECHO [43m[Attenzione][0m - L'installer di [31mAtom[0m non esiste
	)
	IF EXIST D:\Download\npp.7.9.Installer.x64.exe ECHO Installer di [31mNotepad++[0m cancellato dal disco D
	IF EXIST D:\Download\npp.7.9.Installer.x64.exe DEL D:\Download\npp.7.9.Installer.x64.exe 
	IF EXIST C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi ECHO Installer di [31mNotepad++[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\EpicInstaller-10.18.8.msi DEL C:\Users\%username%\Downloads\npp.7.9.Installer.x64.exe
        IF NOT EXIST D:\Download\npp.7.9.Installer.x64.exe (
		IF NOT EXIST C:\Users\%username%\Downloads\npp.7.9.Installer.x64.exe ECHO [43m[Attenzione][0m - L'installer di [31mNotepad++[0m non esiste
	)

:endTotal
	ECHO	[42m[COMPLETATO][0m - Tutti gli installer sono stati cancellati
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

::----------------------WINDOWS STORE RESET.............----------

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
