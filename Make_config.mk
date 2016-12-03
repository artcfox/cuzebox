############################
# Makefile - configuration #
############################
#
#  Copyright (C) 2016
#    Sandor Zsuga (Jubatian)
#  Uzem (the base of CUzeBox) is copyright (C)
#    David Etherton,
#    Eric Anderton,
#    Alec Bourque (Uze),
#    Filipe Rinaldi,
#    Sandor Zsuga (Jubatian),
#    Matt Pandina (Artcfox)
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#
#
# Alter this file according to your system to build the thing
#
#
#
# Target operating system. This will define how the process will go
# according to the os's features. Currently supported:
#  linux
#  windows_mingw
#  emscripten
#
TSYS=linux
#
#
# A few paths in case they would be necessary. Leave them alone unless
# it is necessary to modify.
#
# For a Windows build, you might need locating SDL2 here. When doing a cross
# compile from (Debian) Linux to 32 bit Windows, the followings might work
# assuming that a development library was downloaded from libsdl.org:
#
#CC_INC=SDL2-2.0.4/i686-w64-mingw32/include
#CC_LIB=SDL2-2.0.4/i686-w64-mingw32/lib
#CCOMP=i686-w64-mingw32-gcc
#
CC_BIN=
CC_INC=
CC_LIB=
#
#
# In case a test build (debug) is necessary, give 'test' here. It enables
# extra assertions, and compiles the program with no optimizations, debug
# symbols enabled.
#
GO=
#
#
# Should the video capture feature be built in? Note that it requires ffmpeg
# and it is not possible to have it in the Emscripten build.
#
FLAG_VCAP=0
#
#
# Initial display: Game only (1) or show the emulator interface (0) (currently
# memory occupation & sync signals). The F3 key may toggle it runtime.
#
FLAG_DISPLAY_GAMEONLY=0
#
#
# Initial display size: A "small" (1) display is faster (it can be resized,
# but quality is low). The F2 key may toggle it runtime.
#
FLAG_DISPLAY_SMALL=0
#
#
# Initial state of frame merging: Enabling merging (1) makes certain games
# flickering less (notably which use some sprite cycling algorithms to get
# around limitations) while making the emulation running somewhat slower.
# The F7 key may toggle it runtime.
#
FLAG_DISPLAY_FRAMEMERGE=1
