@echo off

if not exist "C:\Program Files\iTunes\iTunes.exe" (
    echo * Please install iTunes 12.6.5
    pause >nul
    exit
)

if not exist "C:\msys64\msys2.exe" (
    echo * Please install MSYS2
    pause >nul
    exit
)

C:\msys64\msys2.exe