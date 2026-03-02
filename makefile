.SILENT:

run:
	python -m guimottifx.main

build:
	pyinstaller --onedir --paths "." --add-data "styles;styles" --add-data "styles/mottifx.png;styles" --add-data "license/license.txt;license" --add-data "styles/main.qss;styles" --add-data "styles/fonts/JetBrainsMono-Regular.ttf;styles/fonts" --add-data "styles/icons/MaterialSymbolsOutlined-VariableFont_FILL,GRAD,opsz,wght.ttf;styles/icons" --noconsole --icon "styles/mottifx.png" --contents-directory "lib" --name "MottiFx" guimottifx/main.py

lib:
	pip install -r requirements.txt

help:
	echo ""
	echo "> build: build the application"
	echo "> run  : run the application"
	echo "> lib  : install need library"
	echo ""