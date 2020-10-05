@echo off
:osintstart
cls
title OSINT-X
color 0a
echo "   ____   _____ _____ _   _ _______    __   __";
echo "  / __ \ / ____|_   _| \ | |__   __|   \ \ / /";
echo " | |  | | (___   | | |  \| |  | |  ____ \ V / ";
echo " | |  | |\___ \  | | | . \`|  | |  ____  > <  ";
echo " | |__| |____) |_| |_| |\  |  | |       / . \ ";
echo "  \____/|_____/|_____|_| \_|  |_|      /_/ \_\";
echo "                                            ";
echo 1. Name Search
echo 2. Phone Search
echo 3. E-Mail Search
echo 4. License Plate Search 
echo 5. VIN Search
set /p ch="OSINT-X~>"
pause
if %ch%==1 goto osintA if NOT goto Start2
if %ch%==2 goto osintB if NOT goto Start2
if %ch%==3 goto osintC if NOT goto Start2
if %ch%==4 goto osintD if NOT goto Start2
if %ch%==5 goto osintE if NOT goto Start2
goto osintstart
exit
:osintA
echo Enter Name (ex: michael-scott)
set /p n=">"
cls
echo Enter State Initials (ex: ny)
set /p s=">"
cls
echo Enter City (ex: scranton)
set /p c=">"
start www.fastpeoplesearch.com/name/%n%_%c%-%s%
start www.searchpeoplefree.com/find/%n%/%s%/%c%
start www.peoplesearchnow.com/person/%n%_%c%_%s%
start www.truepeoplesearch.com/results?name=%n%&citystatezip=%c%"%s%
start www.spokeo.com/%n%?loaded=1
goto osintstart

:osintB
echo Enter Phone Number (ex: 123-456-7890 )
set /p p=">"
start www.fastpeoplesearch.com/%p%
start www.searchpeoplefree.com/phone-lookup/%p%
start www.peoplesearchnow.com/phone/%p%
start www.whitepages.com/phone/1-%p%
start www.thatsthem.com/phone/%p%
goto osintstart

:osintC
set /p em=enter email >
start https://www.skymem.info/srch?q=%em%&ss=home
start https://www.melissa.com/v2/lookups/emailcheck/email/?email=%em%&site=
goto osintstart

:osintD
cls 
set /p vin=enter license plate >
start www.faxvin.com/license-plate-lookup/result?plate=%plate%&state=%s%
start www.findbyplate.com/US/%s%/%plate%/
goto osintstart


:osintE
cls 
set /p vin=enter vin >
start www.vehiclehistory.com/vin-report/%vin%
start www.vindecoderz.com/EN/check-lookup/%vin%
goto osintstart