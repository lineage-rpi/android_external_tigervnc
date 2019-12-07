LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := cxx

LOCAL_SRC_FILES :=  \
    os/Mutex.cxx \
    os/Thread.cxx \
    os/os.cxx \
    rdr/Exception.cxx \
    rdr/FdInStream.cxx \
    rdr/FdOutStream.cxx \
    rdr/FileInStream.cxx \
    rdr/HexInStream.cxx \
    rdr/HexOutStream.cxx \
    rdr/InStream.cxx \
    rdr/RandomStream.cxx \
    rdr/TLSException.cxx \
    rdr/TLSInStream.cxx \
    rdr/TLSOutStream.cxx \
    rdr/ZlibInStream.cxx \
    rdr/ZlibOutStream.cxx \
    network/Socket.cxx \
    network/TcpSocket.cxx \
    network/UnixSocket.cxx \
    Xregion/Region.c

LOCAL_SRC_FILES +=  \
    rfb/Blacklist.cxx \
    rfb/CConnection.cxx \
    rfb/ClientParams.cxx \
    rfb/CMsgHandler.cxx \
    rfb/CMsgReader.cxx \
    rfb/CMsgWriter.cxx \
    rfb/CSecurityPlain.cxx \
    rfb/CSecurityStack.cxx \
    rfb/CSecurityVeNCrypt.cxx \
    rfb/CSecurityVncAuth.cxx \
    rfb/ComparingUpdateTracker.cxx \
    rfb/Configuration.cxx \
    rfb/Congestion.cxx \
    rfb/CopyRectDecoder.cxx \
    rfb/Cursor.cxx \
    rfb/DecodeManager.cxx \
    rfb/Decoder.cxx \
    rfb/d3des.c \
    rfb/EncodeManager.cxx \
    rfb/Encoder.cxx \
    rfb/HextileDecoder.cxx \
    rfb/HextileEncoder.cxx \
    rfb/JpegCompressor.cxx \
    rfb/JpegDecompressor.cxx \
    rfb/KeyRemapper.cxx \
    rfb/LogWriter.cxx \
    rfb/Logger.cxx \
    rfb/Logger_file.cxx \
    rfb/Logger_stdio.cxx \
    rfb/Password.cxx \
    rfb/PixelBuffer.cxx \
    rfb/PixelFormat.cxx \
    rfb/RREEncoder.cxx \
    rfb/RREDecoder.cxx \
    rfb/RawDecoder.cxx \
    rfb/RawEncoder.cxx \
    rfb/Region.cxx \
    rfb/SConnection.cxx \
    rfb/SMsgHandler.cxx \
    rfb/SMsgReader.cxx \
    rfb/SMsgWriter.cxx \
    rfb/ServerCore.cxx \
    rfb/Security.cxx \
    rfb/SecurityServer.cxx \
    rfb/SecurityClient.cxx \
    rfb/SSecurityPlain.cxx \
    rfb/SSecurityStack.cxx \
    rfb/SSecurityVncAuth.cxx \
    rfb/SSecurityVeNCrypt.cxx \
    rfb/ScaleFilters.cxx \
    rfb/Timer.cxx \
    rfb/TightDecoder.cxx \
    rfb/TightEncoder.cxx \
    rfb/TightJPEGEncoder.cxx \
    rfb/UpdateTracker.cxx \
    rfb/VNCSConnectionST.cxx \
    rfb/VNCServerST.cxx \
    rfb/ZRLEEncoder.cxx \
    rfb/ZRLEDecoder.cxx \
    rfb/encodings.cxx \
    rfb/util.cxx \
    rfb/Logger_android.cxx

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)

#LOCAL_CFLAGS := -O0 -g
LOCAL_CFLAGS := -Ofast
#LOCAL_CFLAGS += -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -Rpass-analysis=loop-vectorize
LOCAL_CFLAGS += -Wall -Wformat=2 -DNDEBUG -UNDEBUG -Wno-ignored-qualifiers -Werror
LOCAL_CFLAGS += -Wno-unused-parameter -Wno-implicit-fallthrough

LOCAL_CPPFLAGS := -Ofast -std=c++11 -fexceptions -frtti

LOCAL_SHARED_LIBRARIES := \
    libjpeg \
    libz

LOCAL_MODULE := libtigervnc
LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)
