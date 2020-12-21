::----------------------------------------------------------
::		HidroSaphire SAF Source Code
::----------------------------------------------------------
@echo off
	
	SET version=v0.6.1

	::----------------------TITLE OF WINDOWS--------------------------------------------------------------------------------------
	title HidroSaphrie SAF %version% - (Script After Formatted)

	
	::----------------------LINK VARIABLE INIALIZATION----------------------------------------------------------------------------
	SET l_firefox=https://download.mozilla.org/"?product=firefox-stub&os=win&lang=it"
	SET l_tor=https://www.torproject.org/dist/torbrowser/10.0.7/torbrowser-install-win64-10.0.7_it.exe
	SET l_player=http://download.videolan.org/pub/videolan/vlc/2.2.8/win64/vlc-2.2.8-win64.exe
	SET l_spotify=https://download.scdn.co/SpotifySetup.exe
	SET l_rar=https://www.winrar.it/prelievo_ok.php?url=prelievo/WinRAR-x64-600it.exe
	SET l_downloader=https://jdownloader.org/dl?v=101
	SET l_torrent=https://download-hr.utorrent.com/track/stable/endpoint/utorrent/os/windows
	SET l_music=https://download.mp3tag.de/mp3tagv304asetup.exe
	SET l_spek=https://github.com/alexkay/spek/releases/download/v0.8.2/spek-0.8.2.zip
	SET l_file=http://www.sherrodcomputers.com/downloads/FileRenamerBasic.exe
	SET l_sync=https://github.com/canton7/SyncTrayzor/releases/download/v1.1.24/SyncTrayzorSetup-x64.exe
	SET l_vm=https://download.virtualbox.org/virtualbox/6.1.16/VirtualBox-6.1.16-140961-Win.exe
	SET l_remoto=https://download.teamviewer.com/full
	SET l_steam=https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe
	SET l_epic=https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi
	SET l_capture=https://cdn-fastly.obsproject.com/downloads/OBS-Studio-26.1-Full-Installer-x64.exe
	SET l_atom=https://atom.io/download/windows_x64
	SET l_notepad=https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.9/npp.7.9.Installer.x64.exe
	SET l_rainmeter=https://github.com/rainmeter/rainmeter/releases/download/v4.4.0.3410/Rainmeter-4.4-r3410-beta.exe
	SET l_rocket=https://punklabs.com/downloads/RocketDock-v1.3.5.exe
	SET l_psnow=https://download-psnow.playstation.com/downloads/psnow/pc/latest
	SET l_ds4windows=https://github.com/Jays2Kings/DS4Windows/releases/download/v1.4.52/DS4Windows.zip
	SET l_afterburner=http://download.msi.com/uti_exe/vga/MSIAfterburnerSetup.zip
	SET l_amd=https://www.amd.com/en/support
	SET l_nvidia=https://www.nvidia.it/Download/index.aspx?lang=it
	SET l_kms1=https://katfile.com/v9hm4vpdo7d8/KMS_360_Pro_4644.zip.html
	SET l_kms2=https://rapidgator.net/file/2fb3e86836ea43071a026138725a1fdb/KMS_360_Pro_4644.zip
	SET l_codeblocks=https://www.fosshub.com/Code-Blocks.html?dwl=codeblocks-20.03mingw-setup.exe
	SET l_recuva=https://download.ccleaner.com/rcsetup153.exe?cc2020
	::-------------EXE VARIABLE INIALIZATION----------------------------------------------------------------------------
	SET e_firefox="Firefox Installer.exe"
	SET e_tor=torbrowser-install-win64-10.0.7_it.exe
	SET e_player=vlc-2.2.8-win64.exe
	SET e_spotify=SpotifySetup.exe
	SET e_rar=WinRAR-x64-600it.exe
	SET e_downloader=JDownloaderSetup.exe
	SET e_torrent=uTorrent.exe
	SET e_music=mp3tagv304asetup.exe
	SET e_file=FileRenamerBasic.exe
	SET e_sync=SyncTrayzorSetup-x64.exe
	SET e_vm=VirtualBox-6.1.16-140961-Win.exe
	SET e_remoto=TeamViewer_Setup.exe
	SET e_steam=SteamSetup.exe
	SET e_epic=EpicInstaller-10.19.2.msi
	SET e_capture=OBS-Studio-26.1-Full-Installer-x64.exe
	SET e_atom=AtomSetup-x64.exe
	SET e_notepad=npp.7.9.Installer.x64.exe
	SET e_rainmeter=Rainmeter-4.4-r3410-beta.exe
	SET e_rocket=RocketDock-v1.3.5.exe
	SET e_psnow=PlayStationNow-11.3.4.exe
	SET e_codeblocks=codeblocks-20.03mingw-setup.exe
	SET e_recuva=rcsetup153.exe
	::-----------ZIP VARIABLE INIALIZATION----------------------------------------------------------------------------
	SET z_spek=spek-0.8.2.zip
	SET z_ds4windows=DS4Windows.zip
	SET z_afterburner=MSIAfterburnerSetup.zip
	::----------PORTABLE VARIABLE INIALIZATION-----------------------------------------------------------------------
	SET pl_cpuz=http://download.cpuid.com/cpu-z/cpu-z_1.94-en.zip
	SET pz_cpuz=cpu-z_1.94-en.zip
	SET pl_gpuz=http://dl1.hwupgrade.it/dl/7ad61bc4d26503965cab6c6cf380b1c0/5f921535/utilita/schede_video/gpu-z/GPU-Z.2.35.0.exe
	::WARNING----------------------------------------------------pz_gpuz=NO-ZIP-FILE-------------
	SET pl_coretemp=https://www.alcpu.com/CoreTemp/CoreTemp64.zip
	SET pz_coretemp=CoreTemp64.zip
	SET pl_crystaldisk=https://dotsrc.dl.osdn.net/osdn/crystaldiskinfo/73507/CrystalDiskInfo8_8_9.zip
	SET pz_crystaldisk=CrystalDiskInfo8_8_9.zip
	::----------------------OTHER VARIABLE INIALIZATION--------------------------------------------------------------------------
 	SET downloadpath=D:\Download\
	::-----------------------------------The following variable is initializated for having the initial value set to 0 in the debug room
	SET browser=0
	SET tor=0
	SET player=0
	SET spotify=0
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
	SET spek=0
	SET ds4windows=0
	SET afterburner=0
	SET codeblocks=0
	SET recuva=0
	SET t=0
	SET choicenic=0


::----------------------PRINT TITLE-------------------------------------------------------------------------------------------

COLOR 9
ECHO 			  *********************************************************
ECHO 			 *	   HidroSaphire SAF - Script After Formatted	   *
ECHO 			*************************************************************


::----------------------PRINT MENU [PAG 1]------------------------------------------------------------------------------------------
:menu
	ECHO  [31m[Pag 1/3][0m
	ECHO  [32m--------------------------------------------[Navigazione]---------------------------------------------
	ECHO  [36mMenu[0m		1) Pagina 1	2) Pagina 2 	3) Pagina 3	F) FullScreen	   M) Minimizza
	ECHO  [32m---------------------------------------------[Programmi]----------------------------------------------
	ECHO  [36m		------Scarica------	     ----Installa---	    ----Cancella Installer----[0m
	ECHO  [36mBrowser[0m	B1) Firefox [33mx64[0m		     B2) Firefox	    B3) Firefox installer
	ECHO 		B4) Tor (ITA) [33mx64[0m	     B5) Tor		    B6) Tor installer
	ECHO  [36mPlayer[0m		P1) VLC v2.2.8 [33mx64[0m	     P2) VLC		    P3) VLC installer
	ECHO  		P4) Spotify		     P5) Spotify	    P6) Spotify installer
	ECHO  [36mRAR[0m		R1) WinRAR [33mx64[0m	      	     R2) WinRAR	     	    R3) WinRAR installer
	ECHO  [36mDownloader[0m	J1) JDownloader 2 [33mx64[0m	     J2) JDownloader 2	    J3) JDownloader 2 installer
	ECHO  [36mTorrent[0m	T1) uTorrent [33mx86[0m	     T2) uTorrent	    T3) uTorrent installer
	ECHO  [36mMusica[0m		M1) Mp3tag [33mx86[0m	             M2) Mp3tag	     	    M3) Mp3tag installer
	ECHO  		M4) Spek v.0.8.2 [33mx86[0m	     --------		    M5) Spek zip file
	ECHO  [36mDesk Remoto[0m	D1) TeamViewer [33mx86[0m	     D2) TeamViewer 	    D3) TeamViewer installer
	ECHO  [36mFileRenamer[0m	F1) FileRen Basic v6.3 	     F2) FileRenamer	    F3) FileRenamer installer
	ECHO  [36mSyncronizer[0m	S1) SyncTrayzor [33mx64[0m 	     S2) SyncTrayzor	    S3) SyncTrayzor installer
	ECHO  [36mVM[0m		V1) VirtualBox        	     V2) VirtualBox	    V3) VirtualBox Installer
	ECHO  [36mScreen Capt[0m	O1) OBS Studio [33mx64[0m           O2) OBS Studio 	    O3) OBS Studio installer
	ECHO  [36mGiochi[0m		G1) Steam Client [33mx86[0m	     G2) Steam 	     	    G3) Steam installer
	ECHO 		G4) Epic Games	  	     G5) Epic Games 	    G6) Epic Games installer
	ECHO 					     CK) Check Presenza     TT) Cancella tutti
	ECHO  [32m----------------------------------------------[Extra]--------------------------------------------------
	ECHO  [32mAltro[0m		I) Informazioni	   C) Clear Screen    PC) InfoPC     D) DebugRoom    E) Easter Egg
	ECHO  0) Esci	
	Goto :letsgo


::----------------------PRINT MENU [PAG 2]------------------------------------------------------------------------------------------
:menu2
	ECHO  [31m[Pag 2/3][0m
	ECHO  [32m--------------------------------------------[Navigazione]---------------------------------------------
	ECHO  [36mMenu[0m		1) Pagina 1	2) Pagina 2 	3) Pagina 3	F) FullScreen	   M) Minimizza  
	ECHO  [32m---------------------------------------------[Programmi]----------------------------------------------
	ECHO  [36m		------Scarica------	     ----Installa---	    ----Cancella Installer----[0m
	ECHO  [36mPC Monitor[0m	A1) MSI Afterburner	     --------		    A2) MSI Afterburner zip file
	ECHO  [36mPlaystation[0m	G7) PlayStation Now	     G8) PlayStation Now    G9) PlayStation Now installer
	ECHO  [36mController[0m	D4) DS4Windows		     --------	  	    D5) DS4Windows zip file
	ECHO  [36mText Editor[0m	E1) Atom [33mx64[0m		     E2) Atom 		    E3) Atom installer
	ECHO 		E4) Notepad++ [33mx64[0m	     E5) Notepad++ 	    E6) Notepad++ installer
	ECHO 		E7) Lista pack Atom
	ECHO  [36mDeveloper[0m	L1) CodeBlocks + Mingw [33mx64[0m   L2) Code::Blocks	    L3) Code::Blocks installer
	ECHO  [36mCustomization[0m	C1) Rainmeter 4.4 Beta	     C2) Rainmeter 	    C3) Rainmeter installer
	ECHO  		C4) RocketDock v1.3.5 [33mx86[0m    C5) RocketDock 	    C6) RocketDock installer
	ECHO  [36mRecovery[0m	H1) Recuva [33mx64[0m     	     H2) Recuva	     	    H3) Recuva installer
	ECHO 					     CK) Check Presenza     TT) Cancella tutti
	ECHO  [32m-----------------------------------------[Programmi Portable]-----------------------------------------
	ECHO  [36m		------Scarica------	    ----Cancella zip file----[0m
	ECHO  [36mPC Monitor[0m	PT1) CPU-Z		    PT2) CPU-Z zip file
	ECHO  		PT3) GPU-Z		    PT4) GPU-Z zip file
	ECHO  		PT5) CoreTemp [33mx64[0m	    PT6) CoreTemp zip file
	ECHO  		PT7) CrystalDiskInfo	    PT8) CrystalDiskInfo zip file
	ECHO 					    PTT) Cancella tutti i portabili
	ECHO  [32m----------------------------------------------[Extra]--------------------------------------------------
	ECHO  [32mAltro[0m		I) Informazioni	   C) Clear Screen    PC) InfoPC     D) DebugRoom    E) Easter Egg
	ECHO  0) Esci
	Goto :letsgo

::----------------------PRINT MENU [PAG 3]------------------------------------------------------------------------------------------
:menu3
	ECHO  [31m[Pag 3/3][0m
	ECHO  [32m--------------------------------------------[Navigazione]---------------------------------------------
	ECHO  [36mMenu[0m		1) Pagina 1	2) Pagina 2 	3) Pagina 3	F) FullScreen	   M) Minimizza  
	ECHO  [32m----------------------------------------------[Utility]-----------------------------------------------
	ECHO  [36mLink[0m		Q1) Driver video AMD	      Q2) Driver Video NVIDIA
	ECHO 		Q3) KMS 360 Pro Link1         Q4) KMS 360 Pro Link2
	ECHO  [36mUAC[0m		U1) Disabilita UAC	      U2) Abilita UAC
	ECHO  [36mMix[0m		TR) Controllo TRIM
	ECHO  [36mWin Update[0m	WU1) WU Riconfig	      WU2) WU hard-reset
	ECHO  [36mWin Store[0m	WS1) WS Reset
	ECHO  [36mNetwork[0m	NR1) Reset scheda di rete     NR2) Reset DHCP, ARP, NetBIOS, DNS e IP
	ECHO  [36mExplorer[0m	ER1) Reset "accesso rapido"
	ECHO  [32m------------------------------------------[Package Programmi]------------------------------------------[0m
	ECHO  [45m[Base Pack][0m	PAK1) Firefox, VLC, WinRAR, JDown2, uTorrent, Mp3tag, FileRenamer, TeamViewer
	ECHO  [45m[Game Pack][0m	PAK2) Steam, EpicGames, MSI Afterburner, PSNow, DS4Windows
	ECHO  [45m[Dev  Pack][0m	PAK3) Atom, Notepad++, CodeBlocks+Mingw, VirtualBox
	ECHO  [32m----------------------------------------------[Extra]--------------------------------------------------
	ECHO  [32mAltro[0m		I) Informazioni	   C) Clear Screen    PC) InfoPC     D) DebugRoom    E) Easter Egg
	ECHO  0) Esci
	Goto :letsgo


::----------------------FULLSCREEN MODE-------------------------------------------------------------------------------------------
:fullscreen
	MODE con: cols=230 lines=60
	COLOR 9
	ECHO 										  *********************************************************
	ECHO 										 *	   HidroSaphire SAF - Script After Formatted	   *
	ECHO 										*************************************************************
	ECHO   [31m[ - Fullscreen Mode - ][0m
	ECHO [0m
	ECHO  	[32m------------------------------------------------------------------------------------------------[Navigazione]-------------------------------------------------------------------------------------------------/
	ECHO 	[32m/ [0m											              												              [32m/  [0m
	ECHO 	[32m/ [36mMenu[0m		1) Pagina 1	2) Pagina 2	3) Pagina 3	F) FullScreen	    M) Minimizza              											  	      [32m/  [0m
	ECHO 	[32m/ [0m											              												              [32m/  [0m
	ECHO 	[32m/[32m--------------------------------------------[Programmi]----------------------------------------------/---------------------------------------------[Utility]-------------------------------------------------/
	ECHO 	[32m/ [0m											              [32m/  [0m											              [32m/  [0m
	ECHO 	[32m/ [36m		------Scarica------	     ----Installa---	    ----Cancella Installer----[0m        [32m/ [36mLink[0m		Q1) Driver video AMD	      Q2) Driver Video NVIDIA        		  	      [32m/  [0m
	ECHO 	[32m/ [36mBrowser[0m	B1) Firefox [33mx64[0m		     B2) Firefox	    B3) Firefox installer	      [32m/ [0m		Q3) KMS 360 Pro 4644 Link1    Q4) KMS 360 Pro 4644 Link2         		      [32m/  [0m
	ECHO 	[32m/ [0m 		B4) Tor (ITA) [33mx64[0m	     B5) Tor		    B6) Tor installer		      [32m/ [36mUAC[0m		U1) Disabilita UAC	      U2) Abilita UAC    			              [32m/  [0m
	ECHO 	[32m/ [0m[36mPlayer[0m	P1) VLC v2.2.8 [33mx64[0m	     P2) VLC		    P3) VLC installer		      [32m/ [36mMix[0m		TR) Controllo TRIM           						 	      [32m/  [0m
	ECHO 	[32m/ [0m		P4) Spotify		     P5) Spotify	    P6) Spotify installer	      [32m/ [36mWin Update[0m	WU1) WU Riconfig	      WU2) WU hard-reset        			      [32m/  [0m
	ECHO 	[32m/ [36mRAR[0m		R1) WinRAR [33mx64[0m	     	     R2) WinRAR		    R3) WinRAR installer	      [32m/ [36mWin Store[0m	WS1) WS Reset         								      [32m/  [0m
	ECHO 	[32m/ [36mDownloader[0m	J1) JDownloader 2 [33mx64[0m	     J2) JDownloader 2	    J3) JDownloader 2 installer       [32m/ [36mNetwork[0m		NR1) Reset scheda di rete     NR2) Reset DHCP, ARP, NetBIOS, DNS e IP                 [32m/  [0m
	ECHO 	[32m/ [36mTorrent[0m	T1) uTorrent [33mx86[0m	     T2) uTorrent	    T3) uTorrent installer            [32m/ [36mExplorer[0m	ER1) Reset "Accesso Rapido"    							      [32m/  [0m
	ECHO 	[32m/ [36mMusica[0m	M1) Mp3tag [33mx86[0m	             M2) Mp3tag	 	    M3) Mp3tag installer              [32m/  [0m											              [32m/  [0m
	ECHO 	[32m/ [0m		M4) Spek v.0.8.2 [33mx86[0m	     --------		    M5) Spek zip file        	      [32m/  [0m											              [32m/  [0m
	ECHO 	[32m/ [36mDesk Remoto[0m	D1) TeamViewer [33mx86[0m	     D2) TeamViewer 	    D3) TeamViewer installer          [32m/----------------------------------------[Programmi Portable]-------------------------------------------[32m/  [0m
	ECHO 	[32m/ [36mFileRenamer[0m	F1) FileRen Basic v6.3 	     F2) FileRenamer	    F3) FileRenamer installer         [32m/  [0m											              [32m/  [0m
	ECHO 	[32m/ [36mSyncronizer[0m	S1) SyncTrayzor [33mx64[0m 	     S2) SyncTrayzor	    S3) SyncTrayzor installer         [32m/ [36m		------Scarica------	    ----Cancella zip file----				      [32m/  [0m
	ECHO 	[32m/ [36mVM[0m		V1) VirtualBox		     V2) VirtualBox	    V3) VirtualBox Installer          [32m/ [36mPC Monitor[0m	PT1) CPU-Z		    PT2) CPU-Z zip file   			   	      [32m/  [0m
	ECHO 	[32m/ [36mScreen Capt[0m	O1) OBS Studio [33mx64[0m           O2) OBS Studio 	    O3) OBS Studio installer          [32m/  [0m		PT3) GPU-Z		    PT4) GPU-Z zip file	    				      [32m/  [0m
	ECHO 	[32m/ [36mGiochi[0m	G1) Steam Client [33mx86[0m	     G2) Steam 		    G3) Steam installer        	      [32m/  [0m		PT5) CoreTemp [33mx64[0m	    PT6) CoreTemp zip file				      [32m/  [0m
	ECHO 	[32m/ [0m		G4) Epic Games	  	     G5) Epic Games 	    G6) Epic Games installer          [32m/  [0m		PT7) CrystalDiskInfo	    PT8) CrystalDiskInfo zip file  			      [32m/  [0m
	ECHO 	[32m/ [36mPC Monitor[0m	A1) MSI Afterburner	     --------		    A2) MSI Afterburner zip file      [32m/  [0m					    PTT) Cancella tutti i portabili 			      [32m/  [0m
	ECHO 	[32m/ [36mPlaystation[0m	G7) PlayStation Now	     G8) PlayStation Now    G9) PlayStation Now installer     [32m/  [0m											              [32m/  [0m
	ECHO 	[32m/ [36mController[0m	D4) DS4Windows		     --------	  	    D5) DS4Windows zip file           [32m/-----------------------------------------[Package Programmi]-------------------------------------------[32m/  [0m
	ECHO 	[32m/ [36mText Editor[0m	E1) Atom [33mx64[0m		     E2) Atom 	      	    E3) Atom installer                [32m/  [0m											              [32m/  [0m
	ECHO 	[32m/ [0m		E4) Notepad++ [33mx64[0m	     E5) Notepad++ 	    E6) Notepad++ installer           [32m/[0m  [45m[Base Pack][0m	PAK1) Firefox, VLC, WinRAR, JDown2, uTorrent, Mp3tag, FileRenamer, TeamViewer         [32m/  [0m
	ECHO 	[32m/ [0m		E7) Lista pack Atom								      [32m/[0m  [45m[Game Pack][0m	PAK2) Steam, EpicGames, MSI Afterburner, PSNow, DS4Windows			      [32m/  [0m
	ECHO 	[32m/ [36mDeveloper[0m	L1) CodeBlocks + Mingw [33mx64[0m   L2) Code::Blocks	    L3) Code::Blocks installer        [32m/  [0m[45m[Dev  Pack][0m	PAK3) Atom, Notepad++, CodeBlocks+Mingw, VirtualBox				      [32m/  [0m
	ECHO 	[32m/ [0m		L4) Python 3 [33mx64[0m   	     L5) Python 3	    L6) Python 3 installer            [32m/  [0m											              [32m/  [0m
	ECHO 	[32m/ [36mCustomization[0m	C1) Rainmeter 4.4 Beta	     C2) Rainmeter 	    C3) Rainmeter installer           [32m/  [0m											              [32m/  [0m
	ECHO 	[32m/ [0m 		C4) RocketDock v1.3.5 [33mx86[0m    C5) RocketDock 	    C6) RocketDock installer          [32m/  [0m											              [32m/  [0m
	ECHO 	[32m/ [36mRecovery[0m	H1) Recuva [33mx64[0m     	     H2) Recuva		    H3) Recuva installer              [32m/  [0m											              [32m/  [0m
	ECHO 	[32m/ [0m					     CK) Check Presenza     TT) Cancella tutti	  	      [32m/  [0m											              [32m/  [0m
	ECHO 	[32m/ [0m											              [32m/  [0m											              [32m/  [0m
	ECHO  	[32m/[32m--------------------------------------------------------------------------------------------------[Extra]----------------------------------------------------------------------------------------------------/
	ECHO 	[32m/ [0m											              												              [32m/  [0m
	ECHO  	[32m/ [32mAltro[0m		0) Esci		I) Informazioni		C) Clear Screen		PC) InfoPC	  D) DebugRoom	     E) Easter Egg						          		      [32m/  [0m
	ECHO 	[32m/ [0m											              												              [32m/  [0m
	ECHO  	[32m/[32m-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------/[0m
	Goto :letsgo

::----------------------MINIMIZE MODE-------------------------------------------------------------------------------------------
:minimize
	MODE con: cols=121 lines=30
	Goto :menu

::----------------------LOOP-------------------------------------------------------------------------------------------
:letsgo
	set /P c=
		::----MENU---------------------------------------
	if "%c%" EQU "1"	test&cls
	if "%c%" EQU "1"	(Goto :menu)
	if "%c%" EQU "2"	test&cls
	if "%c%" EQU "2"	(Goto :menu2)
	if "%c%" EQU "3"	test&cls
	if "%c%" EQU "3"	(Goto :menu3)
	if "%c%" EQU "F"	test&cls
	if "%c%" EQU "F"	Goto :fullscreen
	if "%c%" EQU "f"	test&cls
	if "%c%" EQU "f"	Goto :fullscreen
	if "%c%" EQU "M"	test&cls
	if "%c%" EQU "M"	Goto :minimize
	if "%c%" EQU "m"	test&cls
	if "%c%" EQU "m"	Goto :minimize
		::----PROGRAM-----------------------------------
	if "%c%" EQU "B1" START %l_firefox%		::----Browser------------
	if "%c%" EQU "b1" START %l_firefox%
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
	if "%c%" EQU "P5" Goto :spotify	
	if "%c%" EQU "p5" Goto :spotify
	if "%c%" EQU "P6" Goto :delspotify			
	if "%c%" EQU "p6" Goto :delspotify
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
	if "%c%" EQU "M5" Goto :delspek
	if "%c%" EQU "m5" Goto :delspek
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
	if "%c%" EQU "A2" Goto :delafterburner
	if "%c%" EQU "a2" Goto :delafterburner
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
	if "%c%" EQU "D5" Goto :delds4windows
	if "%c%" EQU "d5" Goto :delds4windows
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
	if "%c%" EQU "L1" START %l_codeblocks%		::----DEVELOPER-----------------------------------
	if "%c%" EQU "l1" START %l_codeblocks%
	if "%c%" EQU "L2" Goto :codeblocks
	if "%c%" EQU "l2" Goto :codeblocks
	if "%c%" EQU "L3" Goto :delcodeblocks
	if "%c%" EQU "l3" Goto :delcodeblocks
	if "%c%" EQU "L4" ECHO Non implementato - START %l_python%		
	if "%c%" EQU "l4" ECHO Non implementato - START %l_python%
	if "%c%" EQU "L5" ECHO Non implementato - Goto :python
	if "%c%" EQU "l5" ECHO Non implementato - Goto :python
	if "%c%" EQU "L6" ECHO Non implementato - Goto :delpython
	if "%c%" EQU "l6" ECHO Non implementato - Goto :delpython
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
	if "%c%" EQU "H1" START %l_recuva%		::----RECOVERY-----------------------------------
	if "%c%" EQU "h1" START %l_recuva%
	if "%c%" EQU "H2" Goto :recuva
	if "%c%" EQU "h2" Goto :recuva
	if "%c%" EQU "H3" Goto :delrecuva
	if "%c%" EQU "h3" Goto :delrecuva
	if "%c%" EQU "CK" Goto :checkpresence		::----CHECK PRESENCE-----------------------------
	if "%c%" EQU "ck" Goto :checkpresence
	if "%c%" EQU "Ck" Goto :checkpresence
	if "%c%" EQU "TT" Goto :deltotal		::----TOTAL--------------------------------------
	if "%c%" EQU "tt" Goto :deltotal
	if "%c%" EQU "Tt" Goto :deltotal
		::----UTILITY--------------------------------------
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
	if "%c%" EQU "wu2" ECHO Non ancora implementato
	if "%c%" EQU "WS1" Goto :wsreset
	if "%c%" EQU "ws1" Goto :wsreset
	if "%c%" EQU "NR1" Goto :nicreset
	if "%c%" EQU "nr1" Goto :nicreset
	if "%c%" EQU "NR2" Goto :nicrepair
	if "%c%" EQU "nr2" Goto :nicrepair
	if "%c%" EQU "ER1" Goto :accessorapidorepair
	if "%c%" EQU "er1" Goto :accessorapidorepair
	::----UAC----------------------------------------
	if "%c%" EQU "U1" ECHO Ancora non implementato
	if "%c%" EQU "u1" ECHO Ancora non implementato
	if "%c%" EQU "U2" ECHO Ancora non implementato
	if "%c%" EQU "u2" ECHO Ancora non implementato
	::----MIX----------------------------------------
	if "%c%" EQU "tr" Goto :checktrim
	if "%c%" EQU "TR" Goto :checktrim
	::----EXTRA--------------------------------------
	if "%c%" EQU "I" test&cls
	if "%c%" EQU "i" test&cls
	if "%c%" EQU "I" Goto :information
	if "%c%" EQU "i" Goto :information
	if "%c%" EQU "C" test&cls
	if "%c%" EQU "c" test&cls
	if "%c%" EQU "C" ECHO [43m[Attenzione][0m - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
	if "%c%" EQU "c" ECHO [43m[Attenzione][0m - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
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
		::----PORTABILI-----------------------------
	if "%c%" EQU "PT1" START %pl_cpuz%		::---PC MONITOR----------------------------------
	if "%c%" EQU "pt1" START %pl_cpuz%
	if "%c%" EQU "PT2" Goto :delcpuz
	if "%c%" EQU "pt2" Goto :delcpuz
	if "%c%" EQU "PT3" START %pl_gpuz%
	if "%c%" EQU "pt3" START %pl_gpuz%
	if "%c%" EQU "PT4" ECHO [43m[Attenzione][0m - [31mGPU-Z[0 ha solo l'eseguibie, non ha file zip
	if "%c%" EQU "pt4" ECHO [43m[Attenzione][0m - [31mGPU-Z[0 ha solo l'eseguibie, non ha file zip
	if "%c%" EQU "PT5" START %pl_coretemp%
	if "%c%" EQU "pt5" START %pl_coretemp%
	if "%c%" EQU "PT6" Goto :delcoretemp
	if "%c%" EQU "pt6" Goto :delcoretemp
	if "%c%" EQU "PT7" START %pl_crystaldisk%
	if "%c%" EQU "pt7" START %pl_crystaldisk%
	if "%c%" EQU "PT8" Goto :delcrystaldisk
	if "%c%" EQU "pt8" Goto :delcrystaldisk
	if "%c%" EQU "PTT" Goto :delportable
	if "%c%" EQU "ptt" Goto :delportable
		::----PACKAGE OF FILE-----------------------------
	if "%c%" EQU "PAK1" Goto :package1
	if "%c%" EQU "pak1" Goto :package1
	if "%c%" EQU "PAK2" Goto :package2
	if "%c%" EQU "pak2" Goto :package2
	if "%c%" EQU "PAK3" Goto :package3
	if "%c%" EQU "pak3" Goto :package3
		::----END----------------------------------------
	if %c%==0 Goto :end
		::----ERRORI-------------------------------------
	ECHO [43m[ERRORE][0m - Comando non ammesso - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
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
:spotify
	IF EXIST D:\Download\%e_spotify% ECHO Installazione di [31mSpotify[0m partita dal disco D
	IF EXIST D:\Download\%e_spotify% START D:\Download\%e_spotify%
	IF EXIST D:\Download\%e_spotify% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_spotify% ECHO Installazione di [31mSpotify[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_spotify% START C:\Users\%username%\Downloads\%e_spotify%
	IF EXIST C:\Users\%username%\Downloads\%e_spotify% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mSpotify[0m non esiste
	Goto :letsgo
:delspotify
	set spotify=0
	IF EXIST D:\Download\%e_spotify% SET spotify=1
	IF EXIST D:\Download\%e_spotify% ECHO Installer di [31mSpotify[0m cancellato dal disco D
	IF EXIST D:\Download\%e_spotify% DEL D:\Download\%e_spotify%
	IF EXIST C:\Users\%username%\Downloads\%e_spotify% SET spotify=1
	IF EXIST C:\Users\%username%\Downloads\%e_spotify% ECHO Installer di [31mSpotify[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_spotify% DEL C:\Users\%username%\Downloads\%e_spotify%
	IF %spotify%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_spotify% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_spotify% ECHO [43m[Attenzione][0m - L'installer di [31mSpotify[0m non esiste
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
	IF EXIST D:\Download\%e_rar% DEL D:\Download\%e_rar%
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
:delspek
	set spek=0
	IF EXIST D:\Download\%z_spek% SET spek=1
	IF EXIST D:\Download\%z_spek% ECHO Il file zip di [31mSpek[0m cancellato dal disco D
	IF EXIST D:\Download\%z_spek% DEL D:\Download\%z_spek%
	IF EXIST C:\Users\%username%\Downloads\%z_spek% SET spek=1
	IF EXIST C:\Users\%username%\Downloads\%z_spek% ECHO Il file zip di [31mSpek[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%z_spek% DEL C:\Users\%username%\Downloads\%z_spek%
	IF %spek%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%z_spek% (
		IF NOT EXIST C:\Users\%username%\Downloads\%z_spek% ECHO [43m[Attenzione][0m - Il file zip di [31mSpek[0m non esiste
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
:---------------------PC Monitor---
:delafterburner
	set afterburner=0
	IF EXIST D:\Download\%z_afterburner% SET afterburner=1
	IF EXIST D:\Download\%z_afterburner% ECHO Il file zip di [31mMSI Afterburner[0m cancellato dal disco D
	IF EXIST D:\Download\%z_afterburner% DEL D:\Download\%z_afterburner%
	IF EXIST C:\Users\%username%\Downloads\%z_afterburner% SET afterburner=1
	IF EXIST C:\Users\%username%\Downloads\%z_afterburner% ECHO Il file zip di [31mMSI Afterburner[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%z_afterburner% DEL C:\Users\%username%\Downloads\%z_afterburner%
	IF %afterburner%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%z_afterburner% (
		IF NOT EXIST C:\Users\%username%\Downloads\%z_afterburner% ECHO [43m[Attenzione][0m - Il file zip di [31mMSI Afterburner[0m non esiste
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
::----------------------CONTROLLER-
:delds4windows
	set ds4windows=0
	IF EXIST D:\Download\%z_ds4windows% SET ds4windows=1
	IF EXIST D:\Download\%z_ds4windows% ECHO Il file zip di [31mDS4Windows[0m cancellato dal disco D
	IF EXIST D:\Download\%z_ds4windows% DEL D:\Download\%z_ds4windows%
	IF EXIST C:\Users\%username%\Downloads\%z_ds4windows% SET ds4windows=1
	IF EXIST C:\Users\%username%\Downloads\%z_ds4windows% ECHO Il file zip di [31mDS4Windows[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%z_ds4windows% DEL C:\Users\%username%\Downloads\%z_ds4windows%
	IF %ds4windows%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%z_ds4windows% (
		IF NOT EXIST C:\Users\%username%\Downloads\%z_ds4windows% ECHO [43m[Attenzione][0m - Il file zip di [31mDS4Windows[0m non esiste
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
	ECHO [43m[Attenzione][0m - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
Goto :letsgo
::----------------------DEVELOPER------------
:codeblocks
	IF EXIST D:\Download\%e_codeblocks% ECHO Installazione di [31mCode::Blocks + Mingw[0m partita dal disco D
	IF EXIST D:\Download\%e_codeblocks% START D:\Download\%e_codeblocks%
	IF EXIST D:\Download\%e_codeblocks% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_codeblocks% ECHO Installazione di [31mCode::Blocks + Mingw[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_codeblocks% START C:\Users\%username%\Downloads\%e_codeblocks%
	IF EXIST C:\Users\%username%\Downloads\%e_codeblocks% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mCode::Blocks + Mingw[0m non esiste
	Goto :letsgo
:delcodeblocks
	set codeblocks=0
	IF EXIST D:\Download\%e_codeblocks% SET codeblocks=1
	IF EXIST D:\Download\%e_codeblocks% ECHO Installer di [31mCode::Blocks + Mingw[0m cancellato dal disco D
	IF EXIST D:\Download\%e_codeblocks% DEL D:\Download\%e_codeblocks%
	IF EXIST C:\Users\%username%\Downloads\%e_codeblocks% SET codeblocks=1
	IF EXIST C:\Users\%username%\Downloads\%e_codeblocks% ECHO Installer di [31mCode::Blocks + Mingw[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_codeblocks% DEL C:\Users\%username%\Downloads\%e_codeblocks%
	IF %codeblocks%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_codeblocks% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_codeblocks% ECHO [43m[Attenzione][0m - L'installer di [31mCode::Blocks + Mingw[0m non esiste
	)
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
::----------------------RECOVERY----------
:recuva
	IF EXIST D:\Download\%e_recuva% ECHO Installazione di [31mRecuva[0m partita dal disco D
	IF EXIST D:\Download\%e_recuva% START D:\Download\%e_recuva%
	IF EXIST D:\Download\%e_recuva% Goto :letsgo
	IF EXIST C:\Users\%username%\Downloads\%e_recuva% ECHO Installazione di [31mRecuva[0m partita dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_recuva% START C:\Users\%username%\Downloads\%e_recuva%
	IF EXIST C:\Users\%username%\Downloads\%e_recuva% Goto :letsgo
        ECHO [43m[Attenzione][0m - L'installer di [31mRecuva[0m non esiste
	Goto :letsgo
:delrecuva
	set recuva=0
	IF EXIST D:\Download\%e_recuva% SET recuva=1
	IF EXIST D:\Download\%e_recuva% ECHO Installer di [31mRecuva[0m cancellato dal disco D
	IF EXIST D:\Download\%e_recuva% DEL D:\Download\%e_recuva%
	IF EXIST C:\Users\%username%\Downloads\%e_recuva% SET recuva=1
	IF EXIST C:\Users\%username%\Downloads\%e_recuva% ECHO Installer di [31mRecuva[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_recuva% DEL C:\Users\%username%\Downloads\%e_recuva%
	IF %recuva%==1 Goto :letsgo
        IF NOT EXIST D:\Download\%e_recuva% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_recuva% ECHO [43m[Attenzione][0m - L'installer di [31mRecuva[0m non esiste
	)
	Goto :letsgo


::----------------------DEBUG Room-----------
:debugRoom
	ECHO [31m
	ECHO 			/***********************************************************\
	ECHO 			!	  	  HidroSaphire - DEBUG ROOM	            !
	ECHO 			!***********************************************************!
	ECHO 	 		!							    !
	ECHO 	  		! 	browser=%browser%	player=%player%	rar=%rar%		    !
	ECHO 	  		! 	rar=%rar%		downloader=%downloader%	torrent=%torrent%	    !
	ECHO 	  		! 	music=%music%		file=%file%		sync=%sync%		    !
	ECHO 	  		! 	vm=%vm%		remoto=%remoto%	tor=%tor%	 	    !
	ECHO 	  		! 	steam=%steam%		epic=%epic%		capture=%capture%	    !
	ECHO 	  		! 	atom=%atom%		notepad=%notepad%	rainmeter=%rainmeter%	    !
	ECHO 	  		! 	rocket=%rocket%	psnow=%psnow%		spotify=%spotify%           !
	ECHO 	  		! 	spek=%spek%		ds4windows=%ds4windows%	afterburner=%afterburner%	    !
	ECHO 	  		! 	codeblocks=%codeblocks%	recuva=%recuva%			    !
	ECHO 	  		! 			    				    !
	ECHO 	  		! 	c=%c% (choice)	t=%t%		choicenic=%choicenic%	    !
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
	ECHO [43m[Attenzione][0m - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
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
	ECHO [43m[Attenzione][0m - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
Goto :letsgo


::----------------------EASTER EGG------
:easterEgg

	ECHO [0m
	ECHO [0m
	ECHO  	  [107;107m                                  [0m
	ECHO  	  [107;107m          [0m             [107;107m           [0m
	ECHO  	  [107;107m      [0m      [107;107m  [101;91m    [107;107m  [0m      [107;107m        [0m
	ECHO  	  [107;107m    [0m    [107;107m      [101;91m    [107;107m      [0m    [107;107m      [0m
	ECHO  	  [107;107m   [0m    [101;101m  [107;107m    [101;91m        [107;107m    [101;91m  [0m    [107;107m   [0m
	ECHO  	  [107;107m   [0m  [107;107m  [101;91m                    [107;107m  [0m  [107;107m   [0m
	ECHO  	  [107;107m [0m    [107;107m    [101;91m    [107;107m        [101;91m    [107;107m    [0m    [107;107m [0m
	ECHO  	  [107;107m [0m  [107;107m      [101;91m  [107;107m            [101;91m  [107;107m      [0m  [107;107m [0m
	ECHO  	  [107;107m [0m  [107;107m      [101;91m  [107;107m            [101;91m  [107;107m      [0m  [107;107m [0m
	ECHO  	  [107;107m [0m  [107;107m    [101;91m    [107;107m            [101;91m    [107;107m    [0m  [107;107m [0m
	ECHO  	  [107;107m [0m  [101;91m          [107;107m        [101;91m          [0m  [107;107m [0m
	ECHO  	  [107;107m [0m  [101;91m    [0m                    [101;91m    [0m  [107;107m [0m
	ECHO  	  [107;107m [0m        [107;107m    [0m  [107;107m    [0m  [107;107m    [0m        [107;107m [0m
	ECHO  	  [107;107m   [0m    [107;107m      [0m  [107;107m    [0m  [107;107m      [0m    [107;107m   [0m
	ECHO  	  [107;107m     [0m  [107;107m                    [0m  [107;107m     [0m
	ECHO  	  [107;107m     [0m    [107;107m                [0m    [107;107m     [0m
	ECHO  	  [107;107m       [0m                    [107;107m       [0m
	ECHO  	  [107;107m                                  [0m
	ECHO  	[0m
	ECHO [0m
	ECHO [36m Hey, ho appena scoperto di essere bravo con l'ASCII Art![0m
	ECHO [36m No, scherzo, c'ho messo almeno un ora per fare sta cosa![0m
	ECHO [36m                                                (HidroSaphire)[0m
	ECHO [0m
	ECHO [0m
	ECHO [43m[Attenzione][0m - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
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
	IF EXIST D:\Download\%e_spotify% ECHO Installer di [31mSpotify[0m cancellato dal disco D
	IF EXIST D:\Download\%e_spotify% DEL D:\Download\%e_spotify%
	IF EXIST C:\Users\%username%\Downloads\%e_spotify% ECHO Installer di [31mSpotify[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_spotify% DEL C:\Users\%username%\Downloads\%e_spotify%
	IF NOT EXIST D:\Download\%e_spotify% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_spotify% ECHO [43m[Attenzione][0m - L'installer di [31mSpotify[0m non esiste
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
	IF EXIST D:\Download\%z_spek% ECHO Il file zip di [31mSpek[0m cancellato dal disco D
	IF EXIST D:\Download\%z_spek% DEL D:\Download\%z_spek%
	IF EXIST C:\Users\%username%\Downloads\%z_spek% ECHO Il file zip di [31mSpek[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%z_spek% DEL C:\Users\%username%\Downloads\%z_spek%
        IF NOT EXIST D:\Download\%z_spek% (
		IF NOT EXIST C:\Users\%username%\Downloads\%z_spek% ECHO [43m[Attenzione][0m - Il file zip di [31mSpek[0m non esiste
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
	IF EXIST D:\Download\%z_afterburner% ECHO Il file zip di [31mMSI Afterburner[0m cancellato dal disco D
	IF EXIST D:\Download\%z_afterburner% DEL D:\Download\%z_afterburner%
	IF EXIST C:\Users\%username%\Downloads\%z_afterburner% ECHO Il file zip di [31mMSI Afterburner[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%z_afterburner% DEL C:\Users\%username%\Downloads\%z_afterburner%
        IF NOT EXIST D:\Download\%z_afterburner% (
		IF NOT EXIST C:\Users\%username%\Downloads\%z_afterburner% ECHO [43m[Attenzione][0m - Il file zip di [31mMSI Afterburner[0m non esiste
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
	IF EXIST D:\Download\%z_ds4windows% ECHO Il file zip di [31mDS4Windows[0m cancellato dal disco D
	IF EXIST D:\Download\%z_ds4windows% DEL D:\Download\%z_ds4windows%
	IF EXIST C:\Users\%username%\Downloads\%z_ds4windows% ECHO Il file zip di [31mDS4Windows[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%z_ds4windows% DEL C:\Users\%username%\Downloads\%z_ds4windows%
        IF NOT EXIST D:\Download\%z_ds4windows% (
		IF NOT EXIST C:\Users\%username%\Downloads\%z_ds4windows% ECHO [43m[Attenzione][0m - Il file zip di [31mDS4Windows[0m non esiste
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
	IF EXIST D:\Download\%e_codeblocks% ECHO Installer di [31mCode::Blocks + Mingw[0m cancellato dal disco D
	IF EXIST D:\Download\%e_codeblocks% DEL D:\Download\%e_codeblocks%
	IF EXIST C:\Users\%username%\Downloads\%e_codeblocks% ECHO Installer di [31mCode::Blocks + Mingw[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_codeblocks% DEL C:\Users\%username%\Downloads\%e_codeblocks%
	IF NOT EXIST D:\Download\%e_codeblocks% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_codeblocks% ECHO [43m[Attenzione][0m - L'installer di [31mCode::Blocks + Mingw[0m non esiste
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
	IF EXIST D:\Download\%e_recuva% ECHO Installer di [31mRecuva[0m cancellato dal disco D
	IF EXIST D:\Download\%e_recuva% DEL D:\Download\%e_recuva%
	IF EXIST C:\Users\%username%\Downloads\%e_recuva% ECHO Installer di [31mRecuva[0m cancellato dal disco C
	IF EXIST C:\Users\%username%\Downloads\%e_recuva% DEL C:\Users\%username%\Downloads\%e_recuva%
	 IF NOT EXIST D:\Download\%e_recuva% (
		IF NOT EXIST C:\Users\%username%\Downloads\%e_recuva% ECHO [43m[Attenzione][0m - L'installer di [31mRecuva[0m non esiste
	)

:endTotal
	ECHO [42m[COMPLETATO][0m - Tutti gli installer sono stati cancellati
	ECHO [0m
	ECHO [43m[Attenzione][0m - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
	GOTO :letsgo


::----------------------CHECK PRESENTI--------------------------------------------------------------------------------
:checkpresence

	test&cls
	ECHO [36m   Controllo presenza di file installer su disco C e D
	ECHO [0m

	SET check=0
	IF EXIST D:\Download\%e_firefox% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_firefox% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mFirefox[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mFirefox[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mFirefox[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_tor% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_tor% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mTor[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mTor[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mTor[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_player% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_player% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mVLC[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mVLC[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mVLC[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_spotify% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_spotify% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mSpotify[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mSpotify[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mSpotify[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_rar% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_rar% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mWinRAR[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mWinRAR[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mWinRAR[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_downloader% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_downloader% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mJDownloader 2[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mJDownloader 2[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mJDownloader 2[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_torrent% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_torrent% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31muTorrent[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31muTorrent[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31muTorrent[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_music% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_music% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mMp3tag[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mMp3tag[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mMp3tag[0m su disco C

	SET check=0
	IF EXIST D:\Download\%z_spek% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%z_spek% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - Il file zip di [31mSpek[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Il file zip di [31mSpek[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Il file zip di [31mSpek[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_remoto% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_remoto% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mTeamViewer[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mTeamViewer[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mTeamViewer[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_file% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_file% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mFile Renamer Basic[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mFile Renamer Basic[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mFile Renamer Basic[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_sync% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_sync% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mSyncTrayzor[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mSyncTrayzor[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mSyncTrayzor[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_vm% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_vm% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mVirtualBox[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mVirtualBox[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mVirtualBox[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_capture% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_capture% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mOBS Studio[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mOBS Studio[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mOBS Studio[0m su disco C

	SET check=0
	IF EXIST D:\Download\%z_afterburner% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%z_afterburner% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - Il file zip di [31mMSI Afterburner[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Il file zip di [31mMSI Afterburner[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Il file zip di [31mMSI Afterburner[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_steam% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_steam% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mSteam[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mSteam[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mSteam[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_epic% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_epic% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mEpic Games Launcher[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mEpic Games Launcher[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mEpic Games Launcher[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_psnow% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_psnow% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mPlayStation Now[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mPlayStation Now[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mPlayStation Now[0m su disco C

	SET check=0
	IF EXIST D:\Download\%z_ds4windows% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%z_ds4windows% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - Il file zip di [31mDS4Windows[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Il file zip di [31mDS4Windows[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Il file zip di [31mDS4Windows[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_atom% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_atom% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mAtom[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mAtom[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mAtom[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_notepad% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_notepad% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mNotepad++[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mNotepad++[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mNotepad++[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_codeblocks% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_codeblocks% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mCode::Blocks + Mingw[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mCode::Blocks + Mingw[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mCode::Blocks + Mingw[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_rainmeter% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_rainmeter% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mRainmeter[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mRainmeter[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mRainmeter[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_rocket% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_rocket% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mRocketDock[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mRocketDock[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mRocketDock[0m su disco C

	SET check=0
	IF EXIST D:\Download\%e_recuva% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%e_recuva% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - L'installer di [31mRecuva[0m non esiste
	IF %check%==1 ECHO [42m[Presente][0m - Installer di [31mRecuva[0m su disco D
	IF %check%==2 ECHO [42m[Presente][0m - Installer di [31mRecuva[0m su disco C
	
	ECHO [0m
	ECHO [42m[COMPLETATO][0m - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
	GOTO :letsgo



::----------------------PORTABLE DELETER----------------------------------------------------------------------------
:delcpuz
	SET check=0
	IF EXIST D:\Download\%pz_cpuz% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%pz_cpuz% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - Il file zip di [31mCPU-Z[0m non esiste
	IF %check%==1 ECHO Installer di [31mCPU-Z[0m cancellato dal disco D
	IF %check%==1 DEL D:\Download\%pz_cpuz%	
	IF %check%==2 ECHO Installer di [31mCPU-Z[0m cancellato dal disco C
	IF %check%==2 DEL C:\Users\%username%\Downloads\%pz_cpuz%
	Goto :letsgo	

:delcoretemp
	SET check=0
	IF EXIST D:\Download\%pz_coretemp% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%pz_coretemp% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - Il file zip di [31mCoreTemp[0m non esiste
	IF %check%==1 ECHO Installer di [31mCoreTemp[0m cancellato dal disco D
	IF %check%==1 DEL D:\Download\%pz_coretemp%	
	IF %check%==2 ECHO Installer di [31mCoreTemp[0m cancellato dal disco C
	IF %check%==2 DEL C:\Users\%username%\Downloads\%pz_coretemp%
	Goto :letsgo

:delcrystaldisk
	SET check=0
	IF EXIST D:\Download\%pz_crystaldisk% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%pz_crystaldisk% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - Il file zip di [31mCrystalDiskInfo[0m non esiste
	IF %check%==1 ECHO Installer di [31mCrystalDiskInfo[0m cancellato dal disco D
	IF %check%==1 DEL D:\Download\%pz_crystaldisk%	
	IF %check%==2 ECHO Installer di [31mCrystalDiskInfo[0m cancellato dal disco C
	IF %check%==2 DEL C:\Users\%username%\Downloads\%pz_crystaldisk%
	Goto :letsgo



::----------------------PORTABLE ALL DELETER----------------------------------------------------------------------------
:delportable
	SET /P t=Vuoi cancellare tutti i file zip delle applicazioni portabili [S/N]?
	if /I "%t%" EQU "S" test&cls
	if /I "%t%" EQU "S" goto :delallportable
	if /I "%t%" EQU "N" test&cls
	if /I "%t%" EQU "N" goto :menu
	if /I "%t%" EQU "S" test&cls
	if /I "%t%" EQU "S" goto :delallportable
	if /I "%t%" EQU "n" test&cls
	if /I "%t%" EQU "n" goto :menu
	Goto :delportable

:delallportable
	SET check=0
	IF EXIST D:\Download\%pz_cpuz% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%pz_cpuz% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - Il file zip di [31mCPU-Z[0m non esiste
	IF %check%==1 ECHO Installer di [31mCPU-Z[0m cancellato dal disco D
	IF %check%==1 DEL D:\Download\%pz_cpuz%	
	IF %check%==2 ECHO Installer di [31mCPU-Z[0m cancellato dal disco C
	IF %check%==2 DEL C:\Users\%username%\Downloads\%pz_cpuz%
	SET check=0
	IF EXIST D:\Download\%pz_coretemp% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%pz_coretemp% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - Il file zip di [31mCoreTemp[0m non esiste
	IF %check%==1 ECHO Installer di [31mCoreTemp[0m cancellato dal disco D
	IF %check%==1 DEL D:\Download\%pz_coretemp%	
	IF %check%==2 ECHO Installer di [31mCoreTemp[0m cancellato dal disco C
	IF %check%==2 DEL C:\Users\%username%\Downloads\%pz_coretemp%
	SET check=0
	IF EXIST D:\Download\%pz_crystaldisk% SET check=1
	IF EXIST C:\Users\%username%\Downloads\%pz_crystaldisk% SET check=2
	IF %check%==0 ECHO [43m[Attenzione][0m - Il file zip di [31mCrystalDiskInfo[0m non esiste
	IF %check%==1 ECHO Installer di [31mCrystalDiskInfo[0m cancellato dal disco D
	IF %check%==1 DEL D:\Download\%pz_crystaldisk%	
	IF %check%==2 ECHO Installer di [31mCrystalDiskInfo[0m cancellato dal disco C
	IF %check%==2 DEL C:\Users\%username%\Downloads\%pz_crystaldisk%
	
	ECHO [42m[COMPLETATO][0m - Tutti gli i file zip delle applicazioni portabili sono stati cancellati
	ECHO [0m
	ECHO [43m[Attenzione][0m - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
	GOTO :letsgo

::----------------------------------------------------------------UTILITY-------------------------------------------------
::----------------------CHECK TRIM------------------------------
:checktrim
	ECHO [32m
	ECHO 0=TRIM Abilitato / 1= TRIM Disabilitato [0m
	fsutil behavior query DisableDeleteNotify
	ECHO [0m
	Goto :letsgo
	

::----------------------WINDOWS UPDATE RECONFIGURATION----------

:wureset
	ECHO [43m[Attenzione][0m - Quest'operazione richiede i Privilegi di Amministratore
	net session >nul 2>&1
    	if %errorLevel% == 0 (
		ECHO [42m[----OK----][0m - Hai i Privilegi di Amministratore[0m
	) else (
        	ECHO [41m[--ERRORE--][0m - Non hai Privilegi di Amministratore
		ECHO [43m[Attenzione][0m - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
		Goto :letsgo
   	)
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
	ECHO [43m[Attenzione][0m - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
	Goto :letsgo


::----------------------WINDOWS STORE RESET-----------------------

:wsreset
	ECHO [43m[Attenzione][0m - Quest'operazione richiede i Privilegi di Amministratore
	if %errorLevel% == 0 (
		ECHO [42m[----OK----][0m - Hai i Privilegi di Amministratore[0m
	) else (
        	ECHO [41m[--ERRORE--][0m - Non hai Privilegi di Amministratore
		ECHO [43m[Attenzione][0m - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
		Goto :letsgo
   	)
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
	ECHO [43m[Attenzione][0m - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
	Goto :letsgo


::----------------------NIC RESET-----------------------

:nicreset
	test&cls
	ECHO [43m[Attenzione][0m - Quest'operazione richiede i Privilegi di Amministratore
	net session >nul 2>&1
    	if %errorLevel% == 0 (
		ECHO [42m[----OK----][0m - Hai i Privilegi di Amministratore[0m
	) else (
        	ECHO [41m[--ERRORE--][0m - Non hai Privilegi di Amministratore
		ECHO [43m[Attenzione][0m - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
		Goto :letsgo
   	)
	ECHO [0m
	ECHO [36mElenco schede di rete disponibili[0m
	wmic nic get name, index
	ECHO [0m
	SET /P choicenic=Quale [31mscheda di rete[0m vuoi resettare (inserisci il numero oppure [31mX[0m, per tornare al menu) 
	if /I "%choicenic%" EQU "X" test&cls
	if /I "%choicenic%" EQU "x" test&cls	
	if /I "%choicenic%" EQU "X" goto :menu
	if /I "%choicenic%" EQU "x" goto :menu
	wmic path win32_networkadapter where index=%choicenic% call disable
	wmic path win32_networkadapter where index=%choicenic% call enable
	ECHO	[42m[COMPLETATO][0m - Reset della scheda eseguito.
	Timeout /t 3
	Goto :nicreset
	

:nicrepair
	test&cls
	ECHO [43m[Attenzione][0m - Quest'operazione richiede i Privilegi di Amministratore
	net session >nul 2>&1
    	if %errorLevel% == 0 (
		ECHO [42m[----OK----][0m - Hai i Privilegi di Amministratore[0m
	) else (
        	ECHO [41m[--ERRORE--][0m - Non hai Privilegi di Amministratore
		ECHO [43m[Attenzione][0m - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
		Goto :letsgo
   	)
	ECHO [0m
	ECHO [0mQuest'operazione permette di:[36m
	ECHO 	1) Rilasciare la configurazione DHCP corrente e degli indirizzi IP per tutti gli adapter
	ECHO 	2) Rinnovare la configurazione DHCP per tutte le schede
 	ECHO 	3) Cancellare tutte le voci dalla cache ARP
	ECHO 	4) Svuotare la cache dei nomi NetBIOS e ricaricare le voci dal file LMHOSTS
	ECHO 	5) Rilasciare e aggiornare i nomi NetBIOS per il computer locale registrato con i server WINS.
	ECHO 	6) Cancellare e reimpostare il contenuto della cache del resolver client DNS.
	ECHO 	7) Avviare la registrazione dinamica manuale per i nomi DNS e indirizzi IP configurati nel computer
	ECHO [0m
	SET /P choicenic=Vuoi continuare [S/N]? 
	if /I "%choicenic%" EQU "N" test&cls
	if /I "%choicenic%" EQU "N" goto :menu
	if /I "%choicenic%" EQU "S" test&cls
	if /I "%choicenic%" EQU "S" goto :nicrepairyes
	if /I "%choicenic%" EQU "n" test&cls
	if /I "%choicenic%" EQU "n" goto :menu
	if /I "%choicenic%" EQU "s" test&cls
	if /I "%choicenic%" EQU "s" goto :nicrepairyes
	Goto :nicrepair
	

:nicrepairyes
	ipconfig /release
	ipconfig /renew
	arp -d *
	nbtstat -R
	nbtstat -RR
	ipconfig /flushdns
	ipconfig /registerdns
	ECHO [42m[COMPLETATO][0m - Reset DHCP, ARP, NetBIOS, DNS e IP eseguito.
	Timeout /t 3
	test&cls
	Goto :menu


::----------------------EXPLORER--------------------------------------------------------------------------------------
:accessorapidorepair
	test&cls
	ECHO [43m[Attenzione][0m - Quest'operazione richiede i Privilegi di Amministratore
	net session >nul 2>&1
    	if %errorLevel% == 0 (
		ECHO [42m[----OK----][0m - Hai i Privilegi di Amministratore[0m
	) else (
        	ECHO [41m[--ERRORE--][0m - Non hai Privilegi di Amministratore
		ECHO [43m[Attenzione][0m - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
		Goto :letsgo
   	)
	ECHO [43m[Attenzione][0m - Il reset di "Accesso Rapido" rimuovera' i link alle cartelle aggiungte manualmente
	ECHO [0m
	ECHO [0mQuest'operazione permette di:[36m
	ECHO Ripristinare la funzione "Accesso Rapido" di Windows 10 a seguito di probabili guasti come:
	ECHO 	- Impossibilita' di aggiungere cartella ad "Accesso Rapido"; 
 	ECHO 	- Lista "Accesso Rapido" vuota;
	ECHO 	- Nessun file in "Accesso Rapido";
	ECHO 	- Caricamento infinito di "Accesso Rapido";
	ECHO 	- ...
	ECHO [0m
	SET /P choiceaccessorapido=Vuoi continuare [S/N]? 
	if /I "%choiceaccessorapido%" EQU "N" test&cls
	if /I "%choiceaccessorapido%" EQU "N" goto :menu
	if /I "%choiceaccessorapido%" EQU "S" test&cls
	if /I "%choiceaccessorapido%" EQU "S" goto :accessorapidorepairyes
	if /I "%choiceaccessorapido%" EQU "n" test&cls
	if /I "%choiceaccessorapido%" EQU "n" goto :menu
	if /I "%choiceaccessorapido%" EQU "s" test&cls
	if /I "%choiceaccessorapido%" EQU "s" goto :accessorapidorepairyes
	Goto :accessorapidorepair


:accessorapidorepairyes
	del /F /Q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations
	ECHO [42m[COMPLETATO][0m - Reset "Accesso Rapido" eseguito.
	Timeout /t 3
	test&cls
	Goto :menu


::----------------------PACKAGE HANDLER------------------------------------------------------------------------------
:package1
	START %l_firefox%
	START %l_player%
	START %l_rar%
	START %l_downloader%
	START %l_torrent%
	START %l_music%
	START %l_file%
	START %l_remoto%
	GOTO :letsgo

:package2
	START %l_steam%
	START %l_epic%
	START %l_afterburner%
	START %l_psnow%
	START %l_ds4windows%
	GOTO :letsgo

:package3
	START %l_atom%
	START %l_notepad%
	START %l_codeblocks%
	START %l_vm%
	GOTO :letsgo

::----------------------INFO-----------
:information
	ECHO [33m
	ECHO 	  *********************************************************
	ECHO 	 *	  HidroSaphire SAF - Script After Formatted	   *
	ECHO 	*************************************************************
	ECHO 	*	  Developed by Enrico Mancuso (HidroSaphire)	    *
	ECHO 	 *	      https://github.com/HidroSaphire		   *
	ECHO 	  *	      					          *
	ECHO 	   *		      Versione = %version%			 *
	ECHO 	    *		  Codename = Majestic Falcon		*
	ECHO 	     *		 Ultima Release = 21/12/2020	       *
	ECHO 	      *************************************************
	ECHO [0m
	ECHO [43m[Attenzione][0m - Premi [31m1[0m, [31m2[0m o [31m3[0m per visualizzare il Menu
Goto :letsgo


::----------------------END-------------------------------------------------------------------------------------------
:end
COLOR 3
ECHO Ciao e Grazie

Timeout /t 3
