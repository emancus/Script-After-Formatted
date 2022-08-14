::----------------------------------------------------------
::		HidroSaphire SAF Source Code
::----------------------------------------------------------
@echo off

	SET version=v0.7.0

	::----------------------TITLE OF WINDOWS--------------------------------------------------------------------------------------
	title HidroSaphrie SAF %version% - (Script After Formatted)

	::-----------------------------------The following variable is initializated for having the initial value set to 0 in the debug room
	SET t=0
	SET choicenic=0


::----------------------PRINT TITLE-------------------------------------------------------------------------------------------

COLOR 9
ECHO 			  *********************************************************
ECHO 			 *	   HidroSaphire SAF - Script After Formatted	   *
ECHO 			*************************************************************


::----------------------PRINT MENU [PAG 1]------------------------------------------------------------------------------------------
:menu
	ECHO  [31m[Pag 1/1][0m
	ECHO  [32m-----------------------------------------------[Menu']------------------------------------------------
	ECHO  [33m1)[0m Pagina 1
	ECHO  [32m---------------------------------------------[Programmi]----------------------------------------------
	ECHO  [33mA1)[0m Lista programmi		   [33mA2)[0m Lista pack Atom
	ECHO  [32m----------------------------------------------[Utility]-----------------------------------------------
	ECHO  [36mTR)[0m Controllo TRIM
	ECHO  [36mWU1)[0m Riconfigura Windows Update         [36mWS1)[0m Reset Windows Store
	ECHO  [36mNR1)[0m Reset scheda di rete               [36mNR2)[0m Reset DHCP, ARP, NetBIOS, DNS e IP
	ECHO  [36mNT1)[0m Test LAN/WAN     	                 [36mNT2)[0m Info connessione
	ECHO  [36mER1)[0m  Reset "accesso rapido"
	ECHO  [32m----------------------------------------------[Extra]--------------------------------------------------
	ECHO  [36mI)[0m Informazioni	   [36mC)[0m Clear Screen    [36mPC)[0m InfoPC     [36mD)[0m DebugRoom    [36mE)[0m Easter Egg
	ECHO  0) Esci
	Goto :letsgo


::----------------------LOOP-------------------------------------------------------------------------------------------
:letsgo
	set /P c=
		::----MENU---------------------------------------
	IF "%c%" EQU "1" (test&cls
		Goto :menu
	) else if "%c%" EQU "A1" ( Goto :InfoProgramm
	) else if "%c%" EQU "a1" ( Goto :InfoProgramm
	) else if "%c%" EQU "A2" ( Goto :atomInfoPacket
	) else if "%c%" EQU "a2" ( Goto :atomInfoPacket

	) else if "%c%" EQU "WU1" ( Goto :wureset
	) else if "%c%" EQU "wu1" ( Goto :wureset
	) else if "%c%" EQU "WS1" ( Goto :wsreset
	) else if "%c%" EQU "ws1" ( Goto :wsreset
	) else if "%c%" EQU "NR1" ( Goto :nicreset
	) else if "%c%" EQU "nr1" ( Goto :nicreset
	) else if "%c%" EQU "NR2" ( Goto :nicrepair
	) else if "%c%" EQU "nr2" ( Goto :nicrepair
	) else if "%c%" EQU "NT1" ( Goto :testlan
	) else if "%c%" EQU "nt1" ( Goto :testlan
	) else if "%c%" EQU "NT2" ( Goto :testwan
	) else if "%c%" EQU "nt2" ( Goto :testwan
	) else if "%c%" EQU "ER1" ( Goto :accessorapidorepair
	) else if "%c%" EQU "er1" ( Goto :accessorapidorepair

	) else if "%c%" EQU "tr" ( Goto :checktrim
	) else if "%c%" EQU "TR" ( Goto :checktrim
	) else if "%c%" EQU "I" ( Goto :information
	) else if "%c%" EQU "i" ( Goto :information
	) else if "%c%" EQU "i" ( Goto :information
	) else if "%c%" EQU "C" ( test&cls
		ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
	) else if "%c%" EQU "c" ( test&cls
		ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
	) else if "%c%" EQU "D" ( Goto :debugRoom
	) else if "%c%" EQU "d" ( Goto :debugRoom
	) else if "%c%" EQU "PC" ( Goto :infoPC
	) else if "%c%" EQU "pc" ( Goto :infoPC
	) else if "%c%" EQU "E" ( Goto :easterEgg
	) else if "%c%" EQU "e" ( Goto :easterEgg
	) else if %c%==0 ( Goto :end				::----END----------------------------------------
	) else ( 
		ECHO [43m[ERRORE][0m - Comando non ammesso - Premi [31m1[0m per visualizzare il Menu
	)
	Goto :letsgo


::----------------------------------------------------------------------------------------------------------------------------------------------------------------

::----------------------INFO PROGRAMMI-----
:InfoProgramm

	test&cls

	ECHO [33mChecklist programmi da installare
	ECHO [0m
	ECHO [32mBASE:[0m
	ECHO - Firefox - VLC - WinRAR - JDownloader - uTorrent - Mp3tag - Spek
	ECHO - TeamViewer - FileRenamerBasic - SyncTrayzor - OBS Studio - Epic Games
	ECHO - PS Plus - DS4Windows - Atom - DriverVGA
	ECHO [0m
	ECHO [32mOPTIONAL:[0m
	ECHO Tor - VirtualBox - Steam  MSI - Afterburner - Recuva - RocketDock -
	ECHO Python3 - Rainmeter - Notepad++ - CodeBlocks+MinGW - "Code::Blocks"
	ECHO [0m
	ECHO [32mPORTABLE:[0m
	ECHO CPU-Z - GPU-Z - CoreTemp - CrystalDiskInfo
	ECHO [0m
	ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
Goto :letsgo

::----------------------ATOM INFO PACKET-----
:atomInfoPacket

	test&cls

	ECHO [33mLista dei pacchetti aggiuntivi utili per Atom
	ECHO [0m
	ECHO [36mminimap[0m			-	Preview di tutto il codice sorgente
	ECHO [36matom-i18n[0m		-	Traduce Atom in 18 lingue diverse (incl. italiano)
	ECHO [36mlanguage-batchfile[0m	-	Colora le keyword dei file .bat
	ECHO [0m
	ECHO [33mLista impostazioni utili per Atom
	ECHO [0mEditor / "Mostra Guida Indentazione" - [36mAbilitare[0m
	ECHO [0m
	ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
Goto :letsgo


::----------------------DEBUG Room-----------
:debugRoom

 	test&cls
	
	ECHO [31m
	ECHO 			/***********************************************************\
	ECHO 			!	  	  HidroSaphire - DEBUG ROOM	            !
	ECHO 			!***********************************************************!
	ECHO 	 		!							    !
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
	ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
Goto :letsgo


::----------------------INFOPC---------
:infoPC
	
	test&cls	

	ECHO [36m	*****************************
	ECHO [36m	* INFORMAZIONI SUL COMPUTER *
	ECHO [36m	*****************************
	 ver
	ECHO [32mNome Computer = [0m %COMPUTERNAME%
	ECHO [32mNome Utente = 	[0m %USERNAME%
	ECHO [0m
	ECHO [32mWindows e' in modalita' (.exe = Legacy BIOS / .efi = UEFI)[0m
	net session >nul 2>&1
    	if %errorLevel% == 0 (
		bcdedit | find "path"
	) else (
        	ECHO [41m[--ERRORE--][0m - Non hai Privilegi di Amministratore
   	)
	ECHO [0m
	ECHO [32mIl path del File di Paging:[0m
	wmic pagefile list /format:list | find "Name"
	ECHO [0m
	ECHO [32mIndirizzo IP Pubblico:[0m
	curl "http://myexternalip.com/raw"
	ECHO [0m
	ECHO [0m
	ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
Goto :letsgo


::----------------------EASTER EGG------
:easterEgg

 	test&cls
	
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
	ECHO [36m                                                (HidroSaphire)[0m
	ECHO [0m
	ECHO [0m
	ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
Goto :letsgo



::--------------------------------------------------------------------------------UTILITY----------------------------------------------------------------------
::----------------------CHECK TRIM------------------------------
:checktrim

 	test&cls

	ECHO [32m0=TRIM Abilitato / 1= TRIM Disabilitato [0m
	fsutil behavior query DisableDeleteNotify
	ECHO [0m
	ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
	Goto :letsgo


::----------------------WINDOWS UPDATE RECONFIGURATION----------

:wureset

 	test&cls
	
	ECHO [43m[Attenzione][0m - Quest'operazione richiede i Privilegi di Amministratore
	net session >nul 2>&1
    	if %errorLevel% == 0 (
		ECHO [42m[----OK----][0m - Hai i Privilegi di Amministratore[0m
	) else (
        	ECHO [41m[--ERRORE--][0m - Non hai Privilegi di Amministratore
		ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
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
	ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
	Goto :letsgo


::----------------------WINDOWS STORE RESET-----------------------

:wsreset

 	test&cls
	
	ECHO [43m[Attenzione][0m - Quest'operazione richiede i Privilegi di Amministratore
	net session >nul 2>&1
	if %errorLevel% == 0 (
		ECHO [42m[----OK----][0m - Hai i Privilegi di Amministratore[0m
	) else (
        	ECHO [41m[--ERRORE--][0m - Non hai Privilegi di Amministratore
		ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
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
	ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
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
		ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
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
		ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
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

:----------------------------TEST LAN------------------------------------------------
:testlan

	test&cls

	ECHO [36m	************************************
	ECHO [36m	  *  Test Connessione LAN / WAN  *
	ECHO [36m	************************************
	ECHO [0m
	ping -n 1 192.168.1.1 > nul
	if %errorLevel% == 0 (
		ECHO [42m[----OK----][0m - Sei connesso alla rete LAN [0m
		ECHO [32mIl tuo indirizzo IP Privato e' :[0m
		ipconfig | findstr "v4"
		ipconfig | findstr "Gate"
	) else (
        	ECHO [41m[--ERRORE--][0m - Non sei connesso alla rete LAN [0m
   	)
	ECHO [0m
	ping -n 1 8.8.8.8 > nul
	if %errorLevel% == 0 (
		ECHO [42m[----OK----][0m - Sei connesso alla rete WAN [0m
		ECHO [32mIl tuo indirizzo IP Pubblico e' :[0m
		curl "http://myexternalip.com/raw"
	) else (
        	ECHO [41m[--ERRORE--][0m - Non sei connesso alla rete WAN [0m
   	)
	ECHO [0m
	ECHO [0m
	ECHO	[42m[COMPLETATO][0m - Test connessione eseguito.
	ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
	Goto :letsgo


:testwan

	test&cls

	ECHO [36m	******************************
	ECHO [36m	 * Informazioni Connessione *
	ECHO [36m	******************************
	ECHO [31m
	net view
	ECHO [0m
	ECHO	[42m[COMPLETATO][0m - Test connessione WAN eseguito.
	ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
	Goto :letsgo


::----------------------EXPLORER--------------------------------------------------------------------------------------
:accessorapidorepair

	test&cls

	ECHO [43m[Attenzione][0m - Quest'operazione richiede i Privilegi di Amministratore
	net session >nul 2>&1
    	if %errorLevel% == 0 (
		ECHO [42m[----OK----][0m - Hai i Privilegi di Amministratore[0m
	) else (
        	ECHO [41m[--ERRORE--][0m - Non hai Privilegi di Amministratore
		ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
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

::----------------------INFO-----------
:information

 	test&cls
	
	ECHO [33m
	ECHO 	  *********************************************************
	ECHO 	 *	  HidroSaphire SAF - Script After Formatted	   *
	ECHO 	*************************************************************
	ECHO 	*	  Developed by Enrico Mancuso (HidroSaphire)	    *
	ECHO 	 *	      https://github.com/HidroSaphire		   *
	ECHO 	  *	      					          *
	ECHO 	   *		      Versione = %version%			 *
	ECHO 	    *		  Codename = Dynamic Fortress		*
	ECHO 	     *		 Ultima Release = 14/18/2022	       *
	ECHO 	      *************************************************
	ECHO [0m
	ECHO [43m[Attenzione][0m - Premi [31m1[0m per visualizzare il Menu
Goto :letsgo


::----------------------END-------------------------------------------------------------------------------------------
:end
COLOR 3
ECHO Ciao e Grazie

Timeout /t 3
