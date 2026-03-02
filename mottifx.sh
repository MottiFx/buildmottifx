#!/bin/bash

showHelp(){
    echo: "Usage   : ./mottifx.sh [command]"
    echo: ""
    echo: "Commands:"
    echo: " --build  : build application"
    echo: " --run-dev: run-dev application"
    echo: " --lib-use: lib-use application"
}

if [$# -eq 0]; then
    showHelp
    exit 1
fi

case "$1" in
    --help|-h)
        showHelp
        ;;
    --run-dev|-rd)
        python -m guimottifx.main
        ;;
    --lib-use|-lbs)
        pip install -r requirements.txt
        ;;
    --build|-b)
        pyinstaller --onedir --paths "." --add-data "styles;styles" --add-data "styles/mottifx.png;styles" --add-data "styles/license.txt;styles" --add-data "styles/main.qss;styles" --add-data "styles/fonts/JetBrainsMono-Regular.ttf;styles/fonts" --add-data "styles/icons/MaterialSymbolsOutlined-VariableFont_FILL,GRAD,opsz,wght.ttf;styles/icons" --noconsole --icon "styles/mottifx.png" --contents-directory "lib" --name "MottiFx" guimottifx/main.py
        ;;
    *)
        echo "Error: Commands '$1' not found"
        show_help
        exit 1
        ;;
esac