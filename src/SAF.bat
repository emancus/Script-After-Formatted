::----------------------------------------------------------
::		HidroSaphire Script for Install
::----------------------------------------------------------
@echo off

title HidroSaphrie's SAF (Script After Formatted)
COLOR 9

ECHO 	  *********************************************************
ECHO 	 *	   HidroSaphire SAF - Script After Formatted	   *
ECHO 	*************************************************************
ECHO    [0m

::----------------------PRINT MENU-------------------------------------------------------------------------------------------
:menu
	ECHO [36mMenu[0m		M) Show Menu
	ECHO [36mUAC[0m		U1) Disabilita UAC		U2) Abilita UAC
	ECHO [36mMix[0m		TR) Controllo Trim
	ECHO [36mBrowser[0m		B1) Scarica Firefox		B2) Installa Firefox		B3) Cancella Firefox installer
	ECHO [36mPlayer[0m		V1) Scarica VLC v2.2.8 x64	V2) Installa VLC v2.2.8 x64	V3) Cancella VLC installer
	ECHO [36mRAR[0m		R1) Scarica WinRAR v5.9.1 x64	R2) Installa WinRAR v5.9.1 x64	R3) Cancella WinRAR installer
	ECHO [36mDownloader[0m	J1) Scarica JDownloader 2 x64	J2) Installa JDownloader 2 x64	J3) Cancella JDownloader 2 installer
	ECHO I) Informazioni
	ECHO 0) Esci
::----------------------LOOP-------------------------------------------------------------------------------------------
:letsgo
	set /P c=

	::----MENU---------------------------------------
	if "%c%" EQU "M"	(Goto :menu)
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
	if "%c%" EQU "V1" START http://download.videolan.org/pub/videolan/vlc/2.2.8/win64/vlc-2.2.8-win64.exe
	if "%c%" EQU "v1" START http://download.videolan.org/pub/videolan/vlc/2.2.8/win64/vlc-2.2.8-win64.exe
	if "%c%" EQU "V2" Goto :player
	if "%c%" EQU "v2" Goto :player	
	if "%c%" EQU "V3" Goto :delplayer
	if "%c%" EQU "v3" Goto :delplayer
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
	::----INFO---------------------------------------
	if "%c%" EQU "I" Goto :information
	if "%c%" EQU "i" Goto :information
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
::----------------------INFO-----------
:information
	ECHO [33m
	ECHO 	  *********************************************************
	ECHO 	 *	  HidroSaphire SAF - Script After Formatted	   *
	ECHO 	*************************************************************
	ECHO 	*	  Developed by Enrico Mancuso (HidroSaphire)	    *
	ECHO 	 *	      https://github.com/HidroSaphire		   *
	ECHO 	  *	      					          *
	ECHO 	   *		     Versione = v.0.0.4 		 *
	ECHO 	    *		  Codename = Sparkling Tiger		*
	ECHO 	     *		 Ultima Release = 30/09/2020	       *
	ECHO 	      *************************************************
	ECHO [0m
Goto :letsgo

::----------------------END-------------------------------------------------------------------------------------------
:end
COLOR 3
ECHO Ciao e Grazie

Timeout /t 3
