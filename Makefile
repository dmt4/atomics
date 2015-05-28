#############################################################################
# Makefile for building: atomics
# Generated by qmake (2.01a) (Qt 4.7.4) on: Mon Jan 30 04:22:58 2012
# Project:  atomics.pro
# Template: app
# Command: /usr/bin/qmake PREFIX=/usr -o Makefile atomics.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -O2 -g -Wno-psabi -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -O2 -g -Wno-psabi -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/linux-g++-maemo -I. -I/targets/HARMATTAN_ARMEL/usr/include/qt4/QtCore -I/targets/HARMATTAN_ARMEL/usr/include/qt4/QtNetwork -I/targets/HARMATTAN_ARMEL/usr/include/qt4/QtGui -I/targets/HARMATTAN_ARMEL/usr/include/qt4 -I/targets/HARMATTAN_ARMEL/usr/include/qt4/QtSensors -I/targets/HARMATTAN_ARMEL/usr/include/qt4/QtSystemInfo -I/targets/HARMATTAN_ARMEL/usr/include/qt4 -I/targets/HARMATTAN_ARMEL/usr/include/qt4/QtMobility -I.
LINK          = g++
LFLAGS        = -Wl,-O1 -Wl,-rpath,/usr/lib
LIBS          = $(SUBLIBS)  -L/usr/lib -L/usr/lib -lQtSystemInfo -lQtSensors -lQtGui -lQtNetwork -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		mv.cpp \
		srf.cpp moc_mv.cpp \
		moc_srf.cpp
OBJECTS       = main.o \
		mv.o \
		srf.o \
		moc_mv.o \
		moc_srf.o
DIST          = /targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/g++.conf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/unix.conf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/linux.conf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/qconfig.pri \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt_config.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/default_pre.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/release.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/default_post.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/mobility.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/warn_on.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/moc.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/resources.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/uic.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/yacc.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/lex.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		atomics.pro
QMAKE_TARGET  = atomics
DESTDIR       = 
TARGET        = atomics

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: atomics.pro  /targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/linux-g++-maemo/qmake.conf /targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/g++.conf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/unix.conf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/linux.conf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/qconfig.pri \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt_config.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/default_pre.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/release.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/default_post.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/mobility.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/warn_on.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/moc.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/resources.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/uic.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/yacc.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/lex.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/libQtGui.prl \
		/usr/lib/libQtNetwork.prl \
		/usr/lib/libQtCore.prl
	$(QMAKE) PREFIX=/usr -o Makefile atomics.pro
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/g++.conf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/unix.conf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/linux.conf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/qconfig.pri:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt_functions.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt_config.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/default_pre.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/release.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/default_post.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/mobility.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/warn_on.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/unix/thread.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/moc.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/resources.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/uic.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/yacc.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/lex.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/libQtGui.prl:
/usr/lib/libQtNetwork.prl:
/usr/lib/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) PREFIX=/usr -o Makefile atomics.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/atomics1.0.0 || $(MKDIR) .tmp/atomics1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/atomics1.0.0/ && $(COPY_FILE) --parents mv.h srf.h .tmp/atomics1.0.0/ && $(COPY_FILE) --parents main.cpp mv.cpp srf.cpp .tmp/atomics1.0.0/ && (cd `dirname .tmp/atomics1.0.0` && $(TAR) atomics1.0.0.tar atomics1.0.0 && $(COMPRESS) atomics1.0.0.tar) && $(MOVE) `dirname .tmp/atomics1.0.0`/atomics1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/atomics1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_mv.cpp moc_srf.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mv.cpp moc_srf.cpp
moc_mv.cpp: srf.h \
		mv.h
	/usr/bin/moc $(DEFINES) $(INCPATH) mv.h -o moc_mv.cpp

moc_srf.cpp: srf.h
	/usr/bin/moc $(DEFINES) $(INCPATH) srf.h -o moc_srf.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean 

####### Compile

main.o: main.cpp mv.h \
		srf.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

mv.o: mv.cpp mv.h \
		srf.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mv.o mv.cpp

srf.o: srf.cpp srf.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o srf.o srf.cpp

moc_mv.o: moc_mv.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mv.o moc_mv.cpp

moc_srf.o: moc_srf.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_srf.o moc_srf.cpp

####### Install

install_target: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/opt/atomics/bin/ || $(MKDIR) $(INSTALL_ROOT)/opt/atomics/bin/ 
	-$(INSTALL_PROGRAM) "$(QMAKE_TARGET)" "$(INSTALL_ROOT)/opt/atomics/bin/$(QMAKE_TARGET)"

uninstall_target:  FORCE
	-$(DEL_FILE) "$(INSTALL_ROOT)/opt/atomics/bin/$(QMAKE_TARGET)"
	-$(DEL_DIR) $(INSTALL_ROOT)/opt/atomics/bin/ 


install_launcher: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/usr/share/applications/ || $(MKDIR) $(INSTALL_ROOT)/usr/share/applications/ 
	-$(INSTALL_FILE) /home/pashov_d/atomics-col/atomics-0.0.1/atomics.desktop $(INSTALL_ROOT)/usr/share/applications/


uninstall_launcher:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/usr/share/applications/atomics.desktop
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/share/applications/ 


install_icon: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/usr/share/themes/base/meegotouch/icons/ || $(MKDIR) $(INSTALL_ROOT)/usr/share/themes/base/meegotouch/icons/ 
	-$(INSTALL_FILE) /home/pashov_d/atomics-col/atomics-0.0.1/atomics.svg $(INSTALL_ROOT)/usr/share/themes/base/meegotouch/icons/


uninstall_icon:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/usr/share/themes/base/meegotouch/icons/atomics.svg
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/share/themes/base/meegotouch/icons/ 


install:  install_target install_launcher install_icon  FORCE

uninstall: uninstall_target uninstall_launcher uninstall_icon   FORCE

FORCE:
