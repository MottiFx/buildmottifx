from email.mime import base
from PySide6.QtWidgets import *
from PySide6.QtCore import *
from PySide6.QtGui import *
import os

class CustomStyle:
    """
        Pakai fotnya di qss lebih efisien
    """
    FONT_DEFAULT = ""
    FONT_NWICON = ""

    @staticmethod
    def load_font():
        basedir = os.path.dirname(__file__)

        id_def = QFontDatabase.addApplicationFont(os.path.join(basedir,"./fonts/JetBrainsMono-Regular.ttf"))
        font_def = QFontDatabase.applicationFontFamilies(id_def)
        # print(font_def[0]) buat dapet familynamenya
        CustomStyle.FONT_DEFAULT = font_def[0] # JetBrains Mono

        id_nwicon = QFontDatabase.addApplicationFont(os.path.join(basedir,"./icons/MaterialSymbolsOutlined-VariableFont_FILL,GRAD,opsz,wght.ttf"))
        font_nwicon = QFontDatabase.applicationFontFamilies(id_nwicon)
        # print(font_nwicon[0]) buat dapet familynamenya
        CustomStyle.FONT_NWICON = font_nwicon[0] # Material Symbols Outlined

    @staticmethod
    def getdefaultfont():
        font = QFont(CustomStyle.FONT_DEFAULT)
        return font
    
    @staticmethod
    def getfonticon():
        font = QFont(CustomStyle.FONT_NWICON)
        return font
