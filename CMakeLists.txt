cmake_minimum_required(VERSION 3.10)
project(dll_InternalACAimbotFirst)

set(CMAKE_CXX_STANDARD 17)

add_library(dll_InternalACAimbotFirst SHARED library.cpp library.h)