# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pkr/pkr-work/MultiBaselineStereo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pkr/pkr-work/MultiBaselineStereo/build

# Include any dependencies generated for this target.
include CMakeFiles/mav.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mav.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mav.dir/flags.make

CMakeFiles/mav.dir/serial_port.cpp.o: CMakeFiles/mav.dir/flags.make
CMakeFiles/mav.dir/serial_port.cpp.o: ../serial_port.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pkr/pkr-work/MultiBaselineStereo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mav.dir/serial_port.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mav.dir/serial_port.cpp.o -c /home/pkr/pkr-work/MultiBaselineStereo/serial_port.cpp

CMakeFiles/mav.dir/serial_port.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mav.dir/serial_port.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pkr/pkr-work/MultiBaselineStereo/serial_port.cpp > CMakeFiles/mav.dir/serial_port.cpp.i

CMakeFiles/mav.dir/serial_port.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mav.dir/serial_port.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pkr/pkr-work/MultiBaselineStereo/serial_port.cpp -o CMakeFiles/mav.dir/serial_port.cpp.s

CMakeFiles/mav.dir/serial_port.cpp.o.requires:

.PHONY : CMakeFiles/mav.dir/serial_port.cpp.o.requires

CMakeFiles/mav.dir/serial_port.cpp.o.provides: CMakeFiles/mav.dir/serial_port.cpp.o.requires
	$(MAKE) -f CMakeFiles/mav.dir/build.make CMakeFiles/mav.dir/serial_port.cpp.o.provides.build
.PHONY : CMakeFiles/mav.dir/serial_port.cpp.o.provides

CMakeFiles/mav.dir/serial_port.cpp.o.provides.build: CMakeFiles/mav.dir/serial_port.cpp.o


CMakeFiles/mav.dir/autopilot_interface.cpp.o: CMakeFiles/mav.dir/flags.make
CMakeFiles/mav.dir/autopilot_interface.cpp.o: ../autopilot_interface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pkr/pkr-work/MultiBaselineStereo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/mav.dir/autopilot_interface.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mav.dir/autopilot_interface.cpp.o -c /home/pkr/pkr-work/MultiBaselineStereo/autopilot_interface.cpp

CMakeFiles/mav.dir/autopilot_interface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mav.dir/autopilot_interface.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pkr/pkr-work/MultiBaselineStereo/autopilot_interface.cpp > CMakeFiles/mav.dir/autopilot_interface.cpp.i

CMakeFiles/mav.dir/autopilot_interface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mav.dir/autopilot_interface.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pkr/pkr-work/MultiBaselineStereo/autopilot_interface.cpp -o CMakeFiles/mav.dir/autopilot_interface.cpp.s

CMakeFiles/mav.dir/autopilot_interface.cpp.o.requires:

.PHONY : CMakeFiles/mav.dir/autopilot_interface.cpp.o.requires

CMakeFiles/mav.dir/autopilot_interface.cpp.o.provides: CMakeFiles/mav.dir/autopilot_interface.cpp.o.requires
	$(MAKE) -f CMakeFiles/mav.dir/build.make CMakeFiles/mav.dir/autopilot_interface.cpp.o.provides.build
.PHONY : CMakeFiles/mav.dir/autopilot_interface.cpp.o.provides

CMakeFiles/mav.dir/autopilot_interface.cpp.o.provides.build: CMakeFiles/mav.dir/autopilot_interface.cpp.o


# Object files for target mav
mav_OBJECTS = \
"CMakeFiles/mav.dir/serial_port.cpp.o" \
"CMakeFiles/mav.dir/autopilot_interface.cpp.o"

# External object files for target mav
mav_EXTERNAL_OBJECTS =

libmav.a: CMakeFiles/mav.dir/serial_port.cpp.o
libmav.a: CMakeFiles/mav.dir/autopilot_interface.cpp.o
libmav.a: CMakeFiles/mav.dir/build.make
libmav.a: CMakeFiles/mav.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pkr/pkr-work/MultiBaselineStereo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libmav.a"
	$(CMAKE_COMMAND) -P CMakeFiles/mav.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mav.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mav.dir/build: libmav.a

.PHONY : CMakeFiles/mav.dir/build

CMakeFiles/mav.dir/requires: CMakeFiles/mav.dir/serial_port.cpp.o.requires
CMakeFiles/mav.dir/requires: CMakeFiles/mav.dir/autopilot_interface.cpp.o.requires

.PHONY : CMakeFiles/mav.dir/requires

CMakeFiles/mav.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mav.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mav.dir/clean

CMakeFiles/mav.dir/depend:
	cd /home/pkr/pkr-work/MultiBaselineStereo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pkr/pkr-work/MultiBaselineStereo /home/pkr/pkr-work/MultiBaselineStereo /home/pkr/pkr-work/MultiBaselineStereo/build /home/pkr/pkr-work/MultiBaselineStereo/build /home/pkr/pkr-work/MultiBaselineStereo/build/CMakeFiles/mav.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mav.dir/depend
