# Install script for directory: /root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/root/Concurrent-Server-Pro/27-timerfd/build/debug-install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/root/Concurrent-Server-Pro/27-timerfd/build/debug/lib/libmuduo_base.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/muduo/base" TYPE FILE FILES
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/Atomic.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/BlockingQueue.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/BoundedBlockingQueue.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/Condition.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/CountDownLatch.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/CurrentThread.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/Exception.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/FileUtil.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/LogFile.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/LogStream.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/Logging.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/Mutex.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/ProcessInfo.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/Singleton.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/StringPiece.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/Thread.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/ThreadLocal.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/ThreadLocalSingleton.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/ThreadPool.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/Timestamp.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/Types.h"
    "/root/Concurrent-Server-Pro/27-timerfd/jmuduo/muduo/base/copyable.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/root/Concurrent-Server-Pro/27-timerfd/build/debug/muduo/base/tests/cmake_install.cmake")

endif()

