# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2017.2.3\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2017.2.3\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\postn\Documents\CPP\Huffman

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\postn\Documents\CPP\Huffman\cmake-build-release

# Include any dependencies generated for this target.
include utility/CMakeFiles/Huffman.dir/depend.make

# Include the progress variables for this target.
include utility/CMakeFiles/Huffman.dir/progress.make

# Include the compile flags for this target's objects.
include utility/CMakeFiles/Huffman.dir/flags.make

utility/CMakeFiles/Huffman.dir/main.cpp.obj: utility/CMakeFiles/Huffman.dir/flags.make
utility/CMakeFiles/Huffman.dir/main.cpp.obj: utility/CMakeFiles/Huffman.dir/includes_CXX.rsp
utility/CMakeFiles/Huffman.dir/main.cpp.obj: ../utility/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object utility/CMakeFiles/Huffman.dir/main.cpp.obj"
	cd /d C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\utility && C:\PROGRA~4\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Huffman.dir\main.cpp.obj -c C:\Users\postn\Documents\CPP\Huffman\utility\main.cpp

utility/CMakeFiles/Huffman.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Huffman.dir/main.cpp.i"
	cd /d C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\utility && C:\PROGRA~4\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\postn\Documents\CPP\Huffman\utility\main.cpp > CMakeFiles\Huffman.dir\main.cpp.i

utility/CMakeFiles/Huffman.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Huffman.dir/main.cpp.s"
	cd /d C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\utility && C:\PROGRA~4\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\postn\Documents\CPP\Huffman\utility\main.cpp -o CMakeFiles\Huffman.dir\main.cpp.s

utility/CMakeFiles/Huffman.dir/main.cpp.obj.requires:

.PHONY : utility/CMakeFiles/Huffman.dir/main.cpp.obj.requires

utility/CMakeFiles/Huffman.dir/main.cpp.obj.provides: utility/CMakeFiles/Huffman.dir/main.cpp.obj.requires
	$(MAKE) -f utility\CMakeFiles\Huffman.dir\build.make utility/CMakeFiles/Huffman.dir/main.cpp.obj.provides.build
.PHONY : utility/CMakeFiles/Huffman.dir/main.cpp.obj.provides

utility/CMakeFiles/Huffman.dir/main.cpp.obj.provides.build: utility/CMakeFiles/Huffman.dir/main.cpp.obj


utility/CMakeFiles/Huffman.dir/file_reader.cpp.obj: utility/CMakeFiles/Huffman.dir/flags.make
utility/CMakeFiles/Huffman.dir/file_reader.cpp.obj: utility/CMakeFiles/Huffman.dir/includes_CXX.rsp
utility/CMakeFiles/Huffman.dir/file_reader.cpp.obj: ../utility/file_reader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object utility/CMakeFiles/Huffman.dir/file_reader.cpp.obj"
	cd /d C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\utility && C:\PROGRA~4\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Huffman.dir\file_reader.cpp.obj -c C:\Users\postn\Documents\CPP\Huffman\utility\file_reader.cpp

utility/CMakeFiles/Huffman.dir/file_reader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Huffman.dir/file_reader.cpp.i"
	cd /d C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\utility && C:\PROGRA~4\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\postn\Documents\CPP\Huffman\utility\file_reader.cpp > CMakeFiles\Huffman.dir\file_reader.cpp.i

utility/CMakeFiles/Huffman.dir/file_reader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Huffman.dir/file_reader.cpp.s"
	cd /d C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\utility && C:\PROGRA~4\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\postn\Documents\CPP\Huffman\utility\file_reader.cpp -o CMakeFiles\Huffman.dir\file_reader.cpp.s

utility/CMakeFiles/Huffman.dir/file_reader.cpp.obj.requires:

.PHONY : utility/CMakeFiles/Huffman.dir/file_reader.cpp.obj.requires

utility/CMakeFiles/Huffman.dir/file_reader.cpp.obj.provides: utility/CMakeFiles/Huffman.dir/file_reader.cpp.obj.requires
	$(MAKE) -f utility\CMakeFiles\Huffman.dir\build.make utility/CMakeFiles/Huffman.dir/file_reader.cpp.obj.provides.build
.PHONY : utility/CMakeFiles/Huffman.dir/file_reader.cpp.obj.provides

utility/CMakeFiles/Huffman.dir/file_reader.cpp.obj.provides.build: utility/CMakeFiles/Huffman.dir/file_reader.cpp.obj


utility/CMakeFiles/Huffman.dir/file_writer.cpp.obj: utility/CMakeFiles/Huffman.dir/flags.make
utility/CMakeFiles/Huffman.dir/file_writer.cpp.obj: utility/CMakeFiles/Huffman.dir/includes_CXX.rsp
utility/CMakeFiles/Huffman.dir/file_writer.cpp.obj: ../utility/file_writer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object utility/CMakeFiles/Huffman.dir/file_writer.cpp.obj"
	cd /d C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\utility && C:\PROGRA~4\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Huffman.dir\file_writer.cpp.obj -c C:\Users\postn\Documents\CPP\Huffman\utility\file_writer.cpp

utility/CMakeFiles/Huffman.dir/file_writer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Huffman.dir/file_writer.cpp.i"
	cd /d C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\utility && C:\PROGRA~4\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\postn\Documents\CPP\Huffman\utility\file_writer.cpp > CMakeFiles\Huffman.dir\file_writer.cpp.i

utility/CMakeFiles/Huffman.dir/file_writer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Huffman.dir/file_writer.cpp.s"
	cd /d C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\utility && C:\PROGRA~4\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\postn\Documents\CPP\Huffman\utility\file_writer.cpp -o CMakeFiles\Huffman.dir\file_writer.cpp.s

utility/CMakeFiles/Huffman.dir/file_writer.cpp.obj.requires:

.PHONY : utility/CMakeFiles/Huffman.dir/file_writer.cpp.obj.requires

utility/CMakeFiles/Huffman.dir/file_writer.cpp.obj.provides: utility/CMakeFiles/Huffman.dir/file_writer.cpp.obj.requires
	$(MAKE) -f utility\CMakeFiles\Huffman.dir\build.make utility/CMakeFiles/Huffman.dir/file_writer.cpp.obj.provides.build
.PHONY : utility/CMakeFiles/Huffman.dir/file_writer.cpp.obj.provides

utility/CMakeFiles/Huffman.dir/file_writer.cpp.obj.provides.build: utility/CMakeFiles/Huffman.dir/file_writer.cpp.obj


utility/CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.obj: utility/CMakeFiles/Huffman.dir/flags.make
utility/CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.obj: utility/CMakeFiles/Huffman.dir/includes_CXX.rsp
utility/CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.obj: ../utility/file_compressor_decompressor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object utility/CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.obj"
	cd /d C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\utility && C:\PROGRA~4\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Huffman.dir\file_compressor_decompressor.cpp.obj -c C:\Users\postn\Documents\CPP\Huffman\utility\file_compressor_decompressor.cpp

utility/CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.i"
	cd /d C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\utility && C:\PROGRA~4\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\postn\Documents\CPP\Huffman\utility\file_compressor_decompressor.cpp > CMakeFiles\Huffman.dir\file_compressor_decompressor.cpp.i

utility/CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.s"
	cd /d C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\utility && C:\PROGRA~4\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\postn\Documents\CPP\Huffman\utility\file_compressor_decompressor.cpp -o CMakeFiles\Huffman.dir\file_compressor_decompressor.cpp.s

utility/CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.obj.requires:

.PHONY : utility/CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.obj.requires

utility/CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.obj.provides: utility/CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.obj.requires
	$(MAKE) -f utility\CMakeFiles\Huffman.dir\build.make utility/CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.obj.provides.build
.PHONY : utility/CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.obj.provides

utility/CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.obj.provides.build: utility/CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.obj


# Object files for target Huffman
Huffman_OBJECTS = \
"CMakeFiles/Huffman.dir/main.cpp.obj" \
"CMakeFiles/Huffman.dir/file_reader.cpp.obj" \
"CMakeFiles/Huffman.dir/file_writer.cpp.obj" \
"CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.obj"

# External object files for target Huffman
Huffman_EXTERNAL_OBJECTS =

utility/Huffman.exe: utility/CMakeFiles/Huffman.dir/main.cpp.obj
utility/Huffman.exe: utility/CMakeFiles/Huffman.dir/file_reader.cpp.obj
utility/Huffman.exe: utility/CMakeFiles/Huffman.dir/file_writer.cpp.obj
utility/Huffman.exe: utility/CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.obj
utility/Huffman.exe: utility/CMakeFiles/Huffman.dir/build.make
utility/Huffman.exe: library/libhuffman_lib.a
utility/Huffman.exe: utility/CMakeFiles/Huffman.dir/linklibs.rsp
utility/Huffman.exe: utility/CMakeFiles/Huffman.dir/objects1.rsp
utility/Huffman.exe: utility/CMakeFiles/Huffman.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable Huffman.exe"
	cd /d C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\utility && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Huffman.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
utility/CMakeFiles/Huffman.dir/build: utility/Huffman.exe

.PHONY : utility/CMakeFiles/Huffman.dir/build

utility/CMakeFiles/Huffman.dir/requires: utility/CMakeFiles/Huffman.dir/main.cpp.obj.requires
utility/CMakeFiles/Huffman.dir/requires: utility/CMakeFiles/Huffman.dir/file_reader.cpp.obj.requires
utility/CMakeFiles/Huffman.dir/requires: utility/CMakeFiles/Huffman.dir/file_writer.cpp.obj.requires
utility/CMakeFiles/Huffman.dir/requires: utility/CMakeFiles/Huffman.dir/file_compressor_decompressor.cpp.obj.requires

.PHONY : utility/CMakeFiles/Huffman.dir/requires

utility/CMakeFiles/Huffman.dir/clean:
	cd /d C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\utility && $(CMAKE_COMMAND) -P CMakeFiles\Huffman.dir\cmake_clean.cmake
.PHONY : utility/CMakeFiles/Huffman.dir/clean

utility/CMakeFiles/Huffman.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\postn\Documents\CPP\Huffman C:\Users\postn\Documents\CPP\Huffman\utility C:\Users\postn\Documents\CPP\Huffman\cmake-build-release C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\utility C:\Users\postn\Documents\CPP\Huffman\cmake-build-release\utility\CMakeFiles\Huffman.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : utility/CMakeFiles/Huffman.dir/depend
