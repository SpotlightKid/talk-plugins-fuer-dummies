=============================================
Audio-Effektplugins programmieren für Dummies
=============================================

.. Audio-Effektplugins programmieren für Dummies slides file, created by
   hieroglyph-quickstart on Wed Apr 20 17:40:00 2016.

:Autor: Christopher Arndt
:Datum: 2016-04-20

.. slide::

    Multiplattform und Multiformat (LV2, VST, LADSPA, DSSI) Audio-Effektplugins
    mit C++, dem DISTRHO Plugin Framework (DPF) und AudioTK


Inhalt
======

* Pluginformate
* Die Struktur eines Plugins
* Das DISTRHO Plugin Framework (DPF)
* Das Audio Toolkit (audioTK)
* Cookiecutter-Projektvorlagen


Slides & Beispieldateien
========================

http://tinyurl.com/plugins-fuer-dummies

.. figure:: /_static/slides-qrcode.svg
    :width: 500px
    :alt: https://github.com/SpotlightKid/talk-plugins-fuer-dummies


Pluginformate
=============

* LADSPA
* DSSI
* LV2
* VST
* AU (nur OS X, nicht von DPF unterstützt)


Die Struktur eines Plugins
==========================

* Ein Plugin ist eine Shared Library + ggf. Metadaten (LV2)
* Der Plugin-Host lädt die Library und ruft vorgebene Funktionen auf

  * Metadaten-Discovery
  * Plugin-Initialisierung
  * Parameterabfrage und -änderung
  * Presetprogramme auflisten und laden
  * Audio-Processing

* In C++ meist als Subklasse einer vorgegeben Plugin-Klasse implementiert


Das DISTRHO Plugin Framework (DPF)
==================================

Homepage: http://distrho.sourceforge.net/
GitHub: https://github.com/DISTRHO/DPF


Das Audio Toolkit (audioTK)
===========================

Homepage: http://www.audio-tk.com/
GitHub: https://github.com/mbrucher/AudioTK


Cookiecutter
============

Dokumentation: http://cookiecutter.readthedocs.org/
GitHub: https://github.com/audreyr/cookiecutter


Projektvorlagen für Audio-Plugins
=================================

Effektplugins mit DPF:

https://github.com/SpotlightKid/cookiecutter-dpf-effect

Effektplugins mit DPF und AudioTK:

https://github.com/SpotlightKid/cookiecutter-dpf-audiotk


Projekt aus Vorlage erzeugen
============================

::

    $ cookiecutter https://github.com/SpotlightKid/cookiecutter-dpf-audiotk
    Klone nach 'cookiecutter-dpf-audiotk' ...
    [...]
    project_name [ATK Delay]:
    plugin_description [A simple stereo delay plugin using the AudioTK library]:
    full_name [Christopher Arndt]:
    domain [chrisarndt.de]:
    github_username [SpotlightKid]:
    email [info@chrisarndt.de]:
    plugin_brand [chrisarndt.de]:
    plugin_name [ATKDelay]:
    repo_name [atkdelay]:
    plugin_uri [http://chrisarndt.de/plugins/atkdelay]:
    project_license [MIT]:
    version [0.1.0]:
    year [2016]:
    Initialisierte leeres Git-Repository in /home/chris/work/audio-plugins/atkdelay/.git/
    Klone nach 'dpf' ...
    [...]


Projekt kompilieren
===================

::

    $ cd atkdelay
    $ make

Und installieren::

    $ mkdir -p ~/.lv2 ~/.vst
    $ cp -r bin/atkdelay.lv2 ~/.lv2
    $ cp bin/atkdelay-vst.so ~/.vst


Danke für die Aufmerksamkeit!
=============================

Pull Requests sind willkommen!

https://github.com/SpotlightKid/talk-plugins-fuer-dummies
