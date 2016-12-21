@echo off
:start
color 04
echo RED DRAGON DRAG AND DROP .TXT ENCRYPTER AND DECRYPTER BY JACKSON MICHENER
echo                    +:                            
echo                   o+                             
echo                  o+ `-```                        
echo                : h::h:+sossyy+:.                 
echo                //hhhhhs++:/ohho:-`               
echo                +hhhhhhhhhhhhsoso/.               
echo               `yyhhhhhshhhhhhhhhhhy//:-.         
echo              +y+yhhhhh/+hhhhhhhhhhhh+`           
echo         `./oyhhs+:/hhho+yhhhhhhhhhysso:          
echo        /hhy+:.   `-shhy++o/+hhhhhhhs-/.          
echo         -+.   .::-:yy-      yhhhhhhho-`          
echo               . .oh+`      -.yhhhhhh/:`          
echo               +hhh/         .yhhhhhhos/          
echo               `/+/-.   .:/oyhhhhhhhh+y.          
echo                    -/syyo//ohhhhhhhhoo           
echo                 -ohhyysssohhhhhhhhhho`           
echo               -syshhhhhhhhhhhhhhh+++             
echo              +o. syhhhhhhhhhyo/.`/-              
echo             /-     +/yhhy+-`    .                
echo            `.       -h+.                         
echo                    `y.
echo -ENC DD (encryption drag drop)
echo -DEC DD (decryption drag drop)
echo YOU NEED TO CLOSE THIS PROGRAM AND DRAG AND DROP .TXT FILE OVER THIS PROGRAM 
echo.
set /p PROGRAM= THEN CHOOSE ENC DD OR DEC DD: 
goto %PROGRAM%
:ENC DD
cls
setlocal enableDelayedExpansion
set /p inputcode=Please enter encryption code:
cls
set /p code=<%1
set chars=0123456789abcdefghijklmnopqrstuvwuxyz
for /L %%N in (10 1 36) do (
for /F %%C in ("!chars:~%%N,1!") do (
set /a MATH=%%N*%inputcode%
for /F %%F in ("!MATH!") do (
set "code=!code:%%C=-%%F!"
)
)
)
echo !code! > encrypted.txt
pause
goto start
cls
:DEC DD
cls
setlocal enableDelayedExpansion
set /p inputcode=Please enter decryption code:
cls
set /p code=<%1
set chars=0123456789abcdefghijklmnopqrstuvwuxyz
for /L %%N in (10 1 36) do (
for /F %%C in ("!chars:~%%N,1!") do (
set /a MATH=%%N*%inputcode%
for /F %%F in ("!MATH!") do (
set "code=!code:%%F=-%%C!"
)
)
)
for /F %%F in ("!code!") do (
set "code=!code:-=!"S
)
echo !code! > decryption.txt
pause
goto start