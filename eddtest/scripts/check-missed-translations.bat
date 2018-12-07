set eddtest=..\..\bin\Debug\EDDTest.exe
set edddir=..\..\..\EDDiscovery\EDDiscovery
set output=

@ECHO OFF
ECHO 1 - italiano
ECHO 2 - portugues
ECHO 3 - deutsch
ECHO 4 - polski

CHOICE /C:1234

IF errorlevel 1 goto IT
IF errorlevel 2 goto PT
IF errorlevel 3 goto DE
IF errorlebel 4 goto PL

:IT
cd %edddir%
ECHO Checking for missing italian translations...
%eddtest% scantranslate Translations\ 2 italiano-it > %output%\it-missed.log
popd

:PT
pushd %edddir%
ECHO Checking for missing portugues translations...
%eddtest% scantranslate Translations\ 2 portugues-pt > %output%\pt-missed.log
popd

:DE
pushd %edddir%
ECHO Checking for missing german translations...
%eddtest% scantranslate Translations\ 2 deutsh-de > %output%\de-missed.log
popd

:PL
pushd %edddir%
ECHO Checking for missing polish translations...
%eddtest% scantranslate Translations\ 2 polski-pl > %output%\pl-missed.log
popd
