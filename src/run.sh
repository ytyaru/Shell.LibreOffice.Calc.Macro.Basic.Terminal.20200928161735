#!/usr/bin/env bash
set -Ceu
#---------------------------------------------------------------------------
# LibreOffice CalcのBASICマクロを端末でバックグラウンド実行する`soffice`コマンド。
# CreatedAt: 2020-09-28
#---------------------------------------------------------------------------
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$PARENT";
	cd "$HERE"
	mkdir -p ~/.config/libreoffice/4/user/basic/Standard
	cp ./Module1.xba ~/.config/libreoffice/4/user/basic/Standard
	soffice macro:///Standard.Module1.Main
}
Run "$@"
