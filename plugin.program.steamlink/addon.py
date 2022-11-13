"""
Steamlink Launcher for Kodi
"""

import os
import xbmc
import xbmcgui
import xbmcaddon

from subprocess import check_call

class KodiAddon(object):
    def __init__(self):
        self._addon = xbmcaddon.Addon()
        self.path = self._addon.getAddonInfo('path')
    
    def run(self):
        __addonname__ = self._addon.getAddonInfo('name')
        xbmcgui.Dialog().notification(__addonname__, 'Iniciando Steam Link...')
        check_call(['bash', self.path + '/resources/lib/start.sh'])

def main():
    addon = KodiAddon()
    addon.run()
    

main()
