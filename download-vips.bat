set vip_version=8.13.3

set vip_zip_name=vips-dev-w64-all-%vip_version%.zip

set VIPS_URL=https://github.com/libvips/build-win64-mxe/releases/download/v%vip_version%/%vip_zip_name%
REM set VIPS_URL=https://github.com/libvips/build-win64-mxe/releases/download/v8.14.5/%vip_zip_name%
REM set VIPS_URL=https://github.com/libvips/libvips/releases/download/v8.10.6/%vip_zip_name%

set SELF_HOMEDIR=%cd%\
echo %SELF_HOMEDIR%
set SELF_LOMO_ROOT=%SELF_HOMEDIR%\

set DEPS_PATH=%SELF_LOMO_ROOT%\

REM mkdir %DEPS_PATH%

set VIPS_VER=vips-dev-w64-all

set UNZIP_VIPS_PATH=%DEPS_PATH%%VIPS_VER%

set VIPS_ZIP_PATH=%DEPS_PATH%\%vip_zip_name%

REM download vips
REM powershell -command "Start-BitsTransfer -Source %VIPS_URL% -Destination %VIPS_ZIP_PATH%"

C:\ProgramData\chocolatey\bin\wget.exe %VIPS_URL%

REM extract vips
powershell -command "Expand-Archive -path %VIPS_ZIP_PATH% %UNZIP_VIPS_PATH% -Force"