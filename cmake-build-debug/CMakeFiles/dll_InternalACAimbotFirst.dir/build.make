# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.1.5\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.1.5\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\myGit\dll_InternalACAimbotFirst

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\myGit\dll_InternalACAimbotFirst\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\dll_InternalACAimbotFirst.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\dll_InternalACAimbotFirst.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\dll_InternalACAimbotFirst.dir\flags.make

CMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.obj: CMakeFiles\dll_InternalACAimbotFirst.dir\flags.make
CMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.obj: ..\library.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\myGit\dll_InternalACAimbotFirst\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dll_InternalACAimbotFirst.dir/library.cpp.obj"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1410~1.250\bin\HostX86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.obj /FdCMakeFiles\dll_InternalACAimbotFirst.dir\ /FS -c C:\myGit\dll_InternalACAimbotFirst\library.cpp
<<

CMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dll_InternalACAimbotFirst.dir/library.cpp.i"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1410~1.250\bin\HostX86\x86\cl.exe > CMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\myGit\dll_InternalACAimbotFirst\library.cpp
<<

CMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dll_InternalACAimbotFirst.dir/library.cpp.s"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1410~1.250\bin\HostX86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.s /c C:\myGit\dll_InternalACAimbotFirst\library.cpp
<<

CMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.obj.requires:

.PHONY : CMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.obj.requires

CMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.obj.provides: CMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.obj.requires
	$(MAKE) -f CMakeFiles\dll_InternalACAimbotFirst.dir\build.make /nologo -$(MAKEFLAGS) CMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.obj.provides.build
.PHONY : CMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.obj.provides

CMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.obj.provides.build: CMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.obj


# Object files for target dll_InternalACAimbotFirst
dll_InternalACAimbotFirst_OBJECTS = \
"CMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.obj"

# External object files for target dll_InternalACAimbotFirst
dll_InternalACAimbotFirst_EXTERNAL_OBJECTS =

dll_InternalACAimbotFirst.dll: CMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.obj
dll_InternalACAimbotFirst.dll: CMakeFiles\dll_InternalACAimbotFirst.dir\build.make
dll_InternalACAimbotFirst.dll: CMakeFiles\dll_InternalACAimbotFirst.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\myGit\dll_InternalACAimbotFirst\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library dll_InternalACAimbotFirst.dll"
	"C:\Program Files\JetBrains\CLion 2018.1.5\bin\cmake\bin\cmake.exe" -E vs_link_dll --intdir=CMakeFiles\dll_InternalACAimbotFirst.dir --manifests  -- C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1410~1.250\bin\HostX86\x86\link.exe /nologo @CMakeFiles\dll_InternalACAimbotFirst.dir\objects1.rsp @<<
 /out:dll_InternalACAimbotFirst.dll /implib:dll_InternalACAimbotFirst.lib /pdb:C:\myGit\dll_InternalACAimbotFirst\cmake-build-debug\dll_InternalACAimbotFirst.pdb /dll /version:0.0 /machine:X86 /debug /INCREMENTAL kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib  
<<

# Rule to build all files generated by this target.
CMakeFiles\dll_InternalACAimbotFirst.dir\build: dll_InternalACAimbotFirst.dll

.PHONY : CMakeFiles\dll_InternalACAimbotFirst.dir\build

CMakeFiles\dll_InternalACAimbotFirst.dir\requires: CMakeFiles\dll_InternalACAimbotFirst.dir\library.cpp.obj.requires

.PHONY : CMakeFiles\dll_InternalACAimbotFirst.dir\requires

CMakeFiles\dll_InternalACAimbotFirst.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\dll_InternalACAimbotFirst.dir\cmake_clean.cmake
.PHONY : CMakeFiles\dll_InternalACAimbotFirst.dir\clean

CMakeFiles\dll_InternalACAimbotFirst.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\myGit\dll_InternalACAimbotFirst C:\myGit\dll_InternalACAimbotFirst C:\myGit\dll_InternalACAimbotFirst\cmake-build-debug C:\myGit\dll_InternalACAimbotFirst\cmake-build-debug C:\myGit\dll_InternalACAimbotFirst\cmake-build-debug\CMakeFiles\dll_InternalACAimbotFirst.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\dll_InternalACAimbotFirst.dir\depend

