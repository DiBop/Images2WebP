@echo off
setlocal enabledelayedexpansion

:: Set parameters for conversion
set "quality=90"
set "output_format=webp"
set "max_size=2048"

:: Log file setup
set "log_file=conversion_log.txt"
if exist "%log_file%" del "%log_file%"

:: Get the full path of the folder to convert
set "target_dir=%~f1"
:: Extract the directory name to append '_converted'
set "dir_name=%~nx1"
set "parent_dir=%~dp1"
set "converted_dir=%parent_dir%%dir_name%_converted"

:: Create the converted directory structure
if not exist "%converted_dir%" (
    mkdir "%converted_dir%"
)
echo [%date% %time%] Conversion started. Target directory: "%target_dir%" > "%log_file%"

:: Process each file in the target directory and its subdirectories
for /R "%target_dir%" %%F in (*.jpg, *.jpeg, *.png, *.tif, *.tiff, *.gif, *.bmp) do (
    set "file_path=%%F"
    set "relative_path=!file_path:%target_dir%=!"
    set "new_path=%converted_dir%!relative_path!"
    set "new_dir=!new_path:\%%~nxF=!"
    
    if not exist "!new_dir!" (
        mkdir "!new_dir!"
    )
    
    :: Attempt to convert the file and log the operation
    ffmpeg -i "%%F" -vf "scale='min(%max_size%,iw)':min'(%max_size%,ih)':force_original_aspect_ratio=decrease" -q:v %quality% "!new_dir!\%%~nF.%output_format%" 2>&1 && (
        echo [Success] "%%F" >> "%log_file%"
    ) || (
        echo [Error] "%%F" >> "%log_file%"
    )
)

echo [%date% %time%] Conversion completed. >> "%log_file%"
echo Conversion complete. See "%log_file%" for details.
