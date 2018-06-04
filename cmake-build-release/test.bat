@echo off

for /r %%i in (*) do (huffcompress pack %%i to 1
huffcompress unpack 1 to 2
@fc %%i 2)