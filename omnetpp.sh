#!/bin/bash
set -e 
sudo apt-get install -y build-essential gcc g++ bison flex perl \
python python3 qt5-default libqt5opengl5-dev tcl-dev tk-dev \
libxml2-dev zlib1g-dev default-jre doxygen graphviz libwebkitgtk-1.0

sudo apt-get install -y openscenegraph-plugin-osgearth libosgearth-dev
sudo apt-get install -y openmpi-bin libopenmpi-dev
sudo apt-get install -y libpcap-dev
sudo apt-get install -y gnome-color-chooser
