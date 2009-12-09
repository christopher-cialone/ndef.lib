##
# This file is part of the libndef project.
#
# Copyright (C) 2009, Emanuele Bertoldi (Card Tech srl).
#
# This program is free software: you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as published by the
# Free Software Foundation, either version 3 of the License, or (at your
# option) any later version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
# more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>
#
# $Revision$
# $Date$
##

NDEF_INCDIR = ../../include/lib
NDEF_LIBDIR = ../../lib

PUBLIC_HEADERS = $$NDEF_INCDIR/libndef_global.h \
    $$NDEF_INCDIR/ndefrecord.h \
    $$NDEF_INCDIR/ndefmessage.h \
    $$NDEF_INCDIR/ndefrecordtype.h

QT -= gui
TARGET = ndef
TEMPLATE = lib
DEFINES += NDEF_LIBRARY
INCLUDEPATH += $$NDEF_INCDIR
HEADERS += $$PUBLIC_HEADERS
SOURCES += ndefrecord.cpp \
    ndefmessage.cpp \
    ndefrecordtype.cpp
DESTDIR = $$NDEF_LIBDIR

unix: {
    # install
    target.path = /usr/local/lib
    INSTALLS += target

    incfiles.path = /usr/local/include/ndef
    incfiles.files = $$PUBLIC_HEADERS
    INSTALLS += incfiles
}