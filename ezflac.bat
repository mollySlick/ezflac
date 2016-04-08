@echo off

>NUL (WHERE ffmpeg) 2> NUL
IF %ERRORLEVEL% NEQ 0 GOTO NOPE2

IF [%1]==[] GOTO NOPE

ffmpeg -i %1 "%cd%\%~n1.flac"
GOTO END

:NOPE
ECHO [GH0ST] No arguments.
GOTO END 

:NOPE2
ECHO [GH0ST] Please install ffmpeg.
GOTO END

:END
ECHO [GH0ST] Done.
