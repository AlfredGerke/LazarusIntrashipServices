Informationen zum Einrichten der Lazarus-IDE
============================================

In diesem Dokument sollen grundsätzliche Elemente zum Einrichten einer Lazarus-IDE aufgeführt werden.

**Inhaltsübersicht:**

- Packages
- Anwendungen


Packages
========

Liste von Packages die nach der Installation einer neuen Lazarus Version eingerichtet werden müssen. 

## Quelle: Sourceforge
### LazRGBGraphis (optional)
Wird benötigt um LazImageEditor zu installieren.

* [Download: LazRGBGraphics](http://sourceforge.net/projects/lazarus-ccr/files/LazRGBGraphics/ "LazRGBGraphics")
    * s. [Wiki](http://wiki.lazarus.freepascal.org/LazRGBGraphics "Wiki")

## Quelle: Subversion
### ColorPalette (mandatory) 
Wird benötigt um LazImageEditor zu kompilieren.

* [Download Subversion: ColorPalette](https://svn.code.sf.net/p/lazarus-ccr/svn/components/colorpalette "ColorPalette")    
oder
* [Download SourceForge: ColorPalette](http://sourceforge.net/projects/lazarus-ccr/files/ColorPalette/ "ColorPalette")
    * s. [Wiki](http://wiki.lazarus.freepascal.org/ColorPalette "Wiki")


### Web Service Toolkit (mandatory)
Soap-Schnittstelle für Lazarus. Wird benötigt um die Testanwendung [LazarusIntrashipServices](https://github.com/AlfredGerke/LazarusIntrashipServices "LIS") zu kompilieren.

* [Download Web Service Toolkit](https://svn.code.sf.net/p/lazarus-ccr/svn/wst/trunk "Web Service Toolkit")
    * [Wiki](http://wiki.lazarus.freepascal.org/Web_Service_Toolkit "Wiki")
    * [Homepage](https://sites.google.com/site/inoussa12/webservicetoolkitforfpc%26lazarus "Homepage")     


### Synapse (mandatory)
Wird benötigt um die Testanwendung [LazarusIntrashipServices](https://github.com/AlfredGerke/LazarusIntrashipServices "LIS") zu kompilieren.

* [Download Synapse](https://svn.code.sf.net/p/synalist/code/synapse "Synapse")
    * [Homepage](http://synapse.ararat.cz/doku.php/download "Hompage")


## Quelle: Git
### UIB (optional)
Zugriff auf Firebird.

* [Download: UIB](https://code.google.com/p/uib "UIB")


### Lazarus Registry Controls (optional)
Controls für den Zugriff auf die Registry.

* [Download: LRC](https://github.com/AlfredGerke/LazarusRegistryControls "LRC")


## Lazarus Components
### Anchor Docking (optional)
Organisiert die IDE übersichtlicher.

* [Wiki](http://wiki.freepascal.org/Anchor_Docking "Wiki")



Anwendungen
===========

## Quelle: Sourceforge
### LRS-Explorer (mandatory)
Ermöglicht den Zugriff auf Ressourcen.

* [Download: LRS-Explorer](http://sourceforge.net/projects/lrsexplorer/ "LRS-Explorer")


## Quelle: Subversion
### LazImageEditor (mandatory)
Mit dem ImageEditor werden Images für z.B. Komponenten bearbeitet.

* [Download LazImageEditor](https://svn.code.sf.net/p/lazarus-ccr/svn/applications/lazimageeditor "LazImageEditor")
    * [Wiki](http://wiki.lazarus.freepascal.org/Lazarus_Image_Editor "Wiki")


## Quelle: Lazarus-IDE Sorucen (./tools/)
### DebugServer (mandatory)
Wird benötigt um die Testanwendung [LazarusIntrashipServices](https://github.com/AlfredGerke/LazarusIntrashipServices "LIS") zu kompilieren.

* [Wiki](http://wiki.lazarus.freepascal.org/DebugServer "Wiki")
