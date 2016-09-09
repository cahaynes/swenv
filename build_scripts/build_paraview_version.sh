#!/bin/bash

PARAVIEW_VERSION=5.1.2
if [ "${PARAVIEW_VERSION:0:3}" = "4.3" ]; then
	PARAVIEW_BUILD=Linux-64bit-glibc-2.3.6
elif [ "${PARAVIEW_VERSION:0:3}" = "4.4" ]; then
	PARAVIEW_BUILD=Qt4-Linux-64bit
elif [ "${PARAVIEW_VERSION:0:1}" = "5" ]; then
	PARAVIEW_BUILD=Qt4-OpenGL2-MPI-Linux-64bit
fi

./build_paraview.sh $PARAVIEW_VERSION $PARAVIEW_BUILD