::----------------------------------------------------------
::		HidroSaphire Script for Install
::----------------------------------------------------------
@echo off


::----------------------TITLE OF WINDOWS--------------------------------------------------------------------------------------
title HidroSaphrie's SAF (Script After Formatted)


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


::----------------------PRINT TITLE-------------------------------------------------------------------------------------------

COLOR 9
ECHO 	  *********************************************************
ECHO 	 *	   HidroSaphire SAF - Script After Formatted	   *
ECHO 	*************************************************************
ECHO    [0m


::----------------------PRINT MENU-------------------------------------------------------------------------------------------
:menu
	ECHO [32m-----------------------------------[Comandi Base]------------------------------------------
	ECHO [36mMenu[0m		M) Show Menu
	ECHO [36mUAC[0m		U1) Disabilita UAC		U2) Abilita UAC
	ECHO [36mMix[0m		TR) Controllo TRIM
	ECHO [32m------------------------------------[Programmi]--------------------------------------------
	ECHO [36m		------Scarica------	  ----Installa---	----Cancella Installer----[0m
	ECHO [36mBrowser[0m		B1) Firefox x64		  B2) Firefox		B3) Firefox installer
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
	ECHO [32m-------------------------------------[Extra]------------------------------------------------
	ECHO [32mAltro[0m		I) Informazioni	   C) Clear Screen    PC) InfoPC     D) DebugRoom    E) Easter Egg
	ECHO 0) Esci


::----------------------LOOP-------------------------------------------------------------------------------------------
:letsgo
	set /P c=

	::----MENU---------------------------------------
	if "%c%" EQU "M"	test&cls
	if "%c%" EQU "M"	(Goto :menu)
	if "%c%" EQU "m"	test&cls
	if "%c%" EQU "m"	(Goto :menu)
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
	::----EXTRA--------------------------------------
	if "%c%" EQU "I" test&cls
	if "%c%" EQU "i" test&cls
	if "%c%" EQU "I" Goto :information
	if "%c%" EQU "i" Goto :information
	if "%c%" EQU "C" test&cls
	if "%c%" EQU "c" test&cls
	if "%c%" EQU "C" ECHO [43m[Attenzione][0m - Premi [36mM[0m per visualizzare il Menu
	if "%c%" EQU "c" ECHO [43m[Attenzione][0m - Premi [36mM[0m per visualizzare il Menu
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
	IF EXIST C:\Users\%username%\Downloads\SyncTrayzorSetup-x64.exe ECHO Installazione di [31mVirtualBox[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\SyncTrayzorSetup-x64.exe START C:\Users\%username%\Downloads\VirtualBox-6.1.14-140239-Win.exe
	IF EXIST C:\Users\%username%\Downloads\SyncTrayzorSetup-x64.exe Goto :letsgo
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
::----------------------INFO-----------
:information
	ECHO [33m
	ECHO 	  *********************************************************
	ECHO 	 *	  HidroSaphire SAF - Script After Formatted	   *
	ECHO 	*************************************************************
	ECHO 	*	  Developed by Enrico Mancuso (HidroSaphire)	    *
	ECHO 	 *	      https://github.com/HidroSaphire		   *
	ECHO 	  *	      					          *
	ECHO 	   *		     Versione = v.0.0.8 		 *
	ECHO 	    *		  Codename = Sparkling Grid		*
	ECHO 	     *		 Ultima Release = 01/10/2020	       *
	ECHO 	      *************************************************
	ECHO [0m
	ECHO [43m[Attenzione][0m - Premi [36mM[0m per visualizzare il Menu
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
	ECHO 	  		! 	vm=%vm%		remoto=%remoto%			    !
	ECHO 	  		! 			    				    !
	ECHO 	  		! 	c=%c% (choice)					    !
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

	ECHO [43m[Attenzione][0m - Premi [36mM[0m per visualizzare il Menu
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
	ECHO [43m[Attenzione][0m - Premi [36mM[0m per visualizzare il Menu
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
	ECHO [43m[Attenzione][0m - Premi [36mM[0m per visualizzare il Menu
Goto :letsgo

::----------------------END-------------------------------------------------------------------------------------------
:end
COLOR 3
ECHO Ciao e Grazie

Timeout /t 3
