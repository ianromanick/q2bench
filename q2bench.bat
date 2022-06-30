@echo off
del baseq2\qconsole.log
del baseq2\mass_m3.bak
del baseq2\mass_m4.bak
del baseq2\mass_m6.bak
del baseq2\mass_m9.bak
del baseq2\crush_m3.bak
del baseq2\crush_m4.bak
del baseq2\crush_m6.bak
del baseq2\crush_m9.bak

quake2.exe +exec mass_m3.rc
quake2.exe +exec mass_m3.rc
quake2.exe +exec mass_m3.rc
ren baseq2\mass_m3.txt mass_m3.bak
ren baseq2\qconsole.log mass_m3.txt

REM The fourth run at 800x600 is only necessary on 3dlabs VX1 drivers
REM that have the resolution change bug.
REM quake2.exe +exec mass_m4.rc
quake2.exe +exec mass_m4.rc
quake2.exe +exec mass_m4.rc
quake2.exe +exec mass_m4.rc
ren baseq2\mass_m4.txt mass_m4.bak
ren baseq2\qconsole.log mass_m4.txt

quake2.exe +exec mass_m6.rc
quake2.exe +exec mass_m6.rc
quake2.exe +exec mass_m6.rc
ren baseq2\mass_m6.txt mass_m6.bak
ren baseq2\qconsole.log mass_m6.txt

quake2.exe +exec mass_m9.rc
quake2.exe +exec mass_m9.rc
ren baseq2\mass_m9.txt mass_m9.bak
ren baseq2\qconsole.log mass_m9.txt

quake2.exe +exec crush_m3.rc
quake2.exe +exec crush_m3.rc
quake2.exe +exec crush_m3.rc
ren baseq2\crush_m3.txt crush_m3.bak
ren baseq2\qconsole.log crush_m3.txt

REM The fourth run at 800x600 is only necessary on 3dlabs VX1 drivers
REM that have the resolution change bug.
REM quake2.exe +exec crush_m4.rc
quake2.exe +exec crush_m4.rc
quake2.exe +exec crush_m4.rc
quake2.exe +exec crush_m4.rc
ren baseq2\crush_m4.txt crush_m4.bak
ren baseq2\qconsole.log crush_m4.txt

quake2.exe +exec crush_m6.rc
quake2.exe +exec crush_m6.rc
quake2.exe +exec crush_m6.rc
ren baseq2\crush_m6.txt crush_m6.bak
ren baseq2\qconsole.log crush_m6.txt

quake2.exe +exec crush_m9.rc
quake2.exe +exec crush_m9.rc
ren baseq2\crush_m9.txt crush_m9.bak
ren baseq2\qconsole.log crush_m9.txt

find "fps" mass_m3.txt > results.txt
find "fps" mass_m4.txt >> results.txt
find "fps" mass_m6.txt >> results.txt
find "fps" mass_m9.txt >> results.txt

find "fps" crush_m3.txt >> results.txt
find "fps" crush_m4.txt >> results.txt
find "fps" crush_m6.txt >> results.txt
find "fps" crush_m9.txt >> results.txt
type results.txt
