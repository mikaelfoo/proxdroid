TOP_PATH := $(call my-dir)/..

###########
# Lib USB #
###########

#LOCAL_PATH := $(TOP_PATH)/libusb

#include $(CLEAR_VARS)

#LOCAL_CFLAGS := \
#-DHAVE_CONFIG_H

#LOCAL_SRC_FILES := \
#usb.c \
#error.c \
#descriptors.c \
#linux.c \

#LOCAL_MODULE := libusb
#include $(BUILD_SHARED_LIBRARY)

###########
# TermCap #
###########

LOCAL_PATH := $(TOP_PATH)/termcap

include $(CLEAR_VARS)

LOCAL_CFLAGS := \
-DHAVE_STRING_H=1 \
-DHAVE_UNISTD_H=1 \
-DSTDC_HEADERS=1 \
-DTERMCAP_FILE=\"/etc/termcap\"

LOCAL_SRC_FILES := \
termcap.c \
tparam.c \
version.c

LOCAL_MODULE := libtermcap
include $(BUILD_SHARED_LIBRARY)

################
# Lib ReadLine #
################

LOCAL_PATH := $(TOP_PATH)/readline

include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := libtermcap

LOCAL_CFLAGS := \
-DHAVE_CONFIG_H \
-DRL_LIBRARY_VERSION='"6.2"' \

LOCAL_SRC_FILES := \
readline.c \
vi_mode.c \
funmap.c \
keymaps.c \
parens.c \
search.c \
rltty.c \
complete.c \
bind.c \
isearch.c \
display.c \
signals.c \
util.c \
kill.c \
undo.c \
macro.c \
input.c \
callback.c \
terminal.c \
text.c \
nls.c \
misc.c \
compat.c \
xfree.c \
xmalloc.c \
history.c \
histexpand.c \
histfile.c \
histsearch.c \
shell.c \
mbutil.c \
tilde.c

LOCAL_MODULE := libreadline
include $(BUILD_SHARED_LIBRARY)

#############
# Proxmark3 #
#############

LOCAL_PATH := $(TOP_PATH)/proxmark3

include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := libusb libtermcap libreadline

LOCAL_CFLAGS := -std=c99 -DCMIN=1 -DCTIME=0

LOCAL_C_INCLUDES := \
$(LOCAL_PATH)/include \
$(LOCAL_PATH)/common \
$(LOCAL_PATH)/client \
$(LOCAL_PATH)/client/loclass \
$(LOCAL_PATH)/client/hid-flasher \
$(LOCAL_PATH)/zlib \
$(LOCAL_PATH)/liblua \
$(TOP_PATH)/ \
$(TOP_PATH)/libusb

LOCAL_SRC_FILES := \
client/nonce2key/crapto1.c \
client/nonce2key/crypto1.c \
client/nonce2key/nonce2key.c \
client/loclass/cipher.c \
client/loclass/cipherutils.c \
client/loclass/des.c \
client/loclass/elite_crack.c \
client/loclass/fileutils.c \
client/loclass/ikeys.c \
common/iso14443crc.c \
common/iso15693tools.c \
common/crc16.c \
common/crc.c \
common/crc32.c \
common/crc64.c \
common/lfdemod.c \
common/protocols.c \
common/default_version.c \
common/sha1.c \
liblua/lapi.c \
liblua/lauxlib.c \
liblua/lbaselib.c \
liblua/lbitlib.c \
liblua/lcode.c \
liblua/lcorolib.c \
liblua/lctype.c \
liblua/ldblib.c \
liblua/ldebug.c \
liblua/ldo.c \
liblua/ldump.c \
liblua/lfunc.c \
liblua/lgc.c \
liblua/linit.c \
liblua/liolib.c \
liblua/llex.c \
liblua/lmathlib.c \
liblua/lmem.c \
liblua/loadlib.c \
liblua/lobject.c \
liblua/lopcodes.c \
liblua/loslib.c \
liblua/lparser.c \
liblua/lstate.c \
liblua/lstring.c \
liblua/lstrlib.c \
liblua/ltable.c \
liblua/ltablib.c \
liblua/ltm.c \
liblua/lundump.c \
liblua/lvm.c \
liblua/lzio.c \
client/aes.c \
client/mifarehost.c \
client/data.c \
client/graph.c \
client/ui.c \
client/uart.c \
client/util.c \
client/cmddata.c \
client/cmdhf.c \
client/cmdhf14a.c \
client/cmdhf14b.c \
client/cmdhf15.c \
client/cmdhfepa.c \
client/cmdhficlass.c \
client/cmdhflegic.c \
client/cmdhfmf.c \
client/cmdhfmfu.c \
client/cmdhftopaz.c \
client/cmdhw.c \
client/cmdlf.c \
client/cmdlfawid.c \
client/cmdlfem4x.c \
client/cmdlfhid.c \
client/cmdlfhitag.c \
client/cmdlfio.c \
client/cmdlfti.c \
client/cmdlfviking.c \
client/cmdparser.c \
client/cmdmain.c \
client/cmdscript.c \
client/cmdlft55xx.c \
client/cmdlfpcf7931.c \
client/pm3_binlib.c \
client/pm3_bitlib.c \
client/guidummy.c \
client/sleep.c \
client/scripting.c \
client/proxmark3.c

LOCAL_MODULE := proxmark3
include $(BUILD_EXECUTABLE)

