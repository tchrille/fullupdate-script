#!/bin/bash

fullupdate() {
    TODAY=$(date +"%Y-%m-%d")
    TIME=$(date +"%H:%M:%S")
    LINE="Update and removal of unnecessary files done for today"
    LOGFILE="/home/christian/Dokument/bash/fullupdate/synclogfile.txt"

    sudo apt update
    sudo apt upgrade -y
    sudo apt dist-upgrade -y
    sudo apt autoremove -y
    rm -rf ~/.local/share/Trash/*

    if [ -f "$LOGFILE" ];
    then
        echo "${TODAY} ${TIME} ${LINE}" >> "$LOGFILE"
    else
        touch "$LOGFILE"
        echo "${TODAY} ${TIME} ${LINE}" >> "$LOGFILE"
    fi
}

fullupdate
