# KallistiOS ##version##
#
# libkmg Makefile
# Copyright (c)2003 Dan Potter

TARGET = libkmg.a
OBJS = kmg.o

defaultall: create_kos_link $(OBJS) subdirs linklib

include $(KOS_BASE)/addons/Makefile.prefab

# creates the kos link to the headers
create_kos_link:
	rm -f ../include/kmg
	ln -s ../libkmg/include ../include/kmg

