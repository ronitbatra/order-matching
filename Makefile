# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ronit/desktop/Projects/order-matching

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/ronit/desktop/Projects/order-matching

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake cache editor..."
	/opt/homebrew/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/opt/homebrew/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/ronit/desktop/Projects/order-matching/CMakeFiles /Users/ronit/desktop/Projects/order-matching//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/ronit/desktop/Projects/order-matching/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named matching_engine

# Build rule for target.
matching_engine: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 matching_engine
.PHONY : matching_engine

# fast build rule for target.
matching_engine/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine.dir/build.make CMakeFiles/matching_engine.dir/build
.PHONY : matching_engine/fast

#=============================================================================
# Target rules for targets named order_benchmark

# Build rule for target.
order_benchmark: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 order_benchmark
.PHONY : order_benchmark

# fast build rule for target.
order_benchmark/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/order_benchmark.dir/build.make CMakeFiles/order_benchmark.dir/build
.PHONY : order_benchmark/fast

#=============================================================================
# Target rules for targets named network_benchmark

# Build rule for target.
network_benchmark: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 network_benchmark
.PHONY : network_benchmark

# fast build rule for target.
network_benchmark/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/network_benchmark.dir/build.make CMakeFiles/network_benchmark.dir/build
.PHONY : network_benchmark/fast

#=============================================================================
# Target rules for targets named order_book_test

# Build rule for target.
order_book_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 order_book_test
.PHONY : order_book_test

# fast build rule for target.
order_book_test/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/order_book_test.dir/build.make CMakeFiles/order_book_test.dir/build
.PHONY : order_book_test/fast

#=============================================================================
# Target rules for targets named matching_engine_test

# Build rule for target.
matching_engine_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 matching_engine_test
.PHONY : matching_engine_test

# fast build rule for target.
matching_engine_test/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine_test.dir/build.make CMakeFiles/matching_engine_test.dir/build
.PHONY : matching_engine_test/fast

benchmarks/network_benchmark.o: benchmarks/network_benchmark.cpp.o
.PHONY : benchmarks/network_benchmark.o

# target to build an object file
benchmarks/network_benchmark.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/network_benchmark.dir/build.make CMakeFiles/network_benchmark.dir/benchmarks/network_benchmark.cpp.o
.PHONY : benchmarks/network_benchmark.cpp.o

benchmarks/network_benchmark.i: benchmarks/network_benchmark.cpp.i
.PHONY : benchmarks/network_benchmark.i

# target to preprocess a source file
benchmarks/network_benchmark.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/network_benchmark.dir/build.make CMakeFiles/network_benchmark.dir/benchmarks/network_benchmark.cpp.i
.PHONY : benchmarks/network_benchmark.cpp.i

benchmarks/network_benchmark.s: benchmarks/network_benchmark.cpp.s
.PHONY : benchmarks/network_benchmark.s

# target to generate assembly for a file
benchmarks/network_benchmark.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/network_benchmark.dir/build.make CMakeFiles/network_benchmark.dir/benchmarks/network_benchmark.cpp.s
.PHONY : benchmarks/network_benchmark.cpp.s

benchmarks/order_matching_benchmark.o: benchmarks/order_matching_benchmark.cpp.o
.PHONY : benchmarks/order_matching_benchmark.o

# target to build an object file
benchmarks/order_matching_benchmark.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/order_benchmark.dir/build.make CMakeFiles/order_benchmark.dir/benchmarks/order_matching_benchmark.cpp.o
.PHONY : benchmarks/order_matching_benchmark.cpp.o

benchmarks/order_matching_benchmark.i: benchmarks/order_matching_benchmark.cpp.i
.PHONY : benchmarks/order_matching_benchmark.i

# target to preprocess a source file
benchmarks/order_matching_benchmark.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/order_benchmark.dir/build.make CMakeFiles/order_benchmark.dir/benchmarks/order_matching_benchmark.cpp.i
.PHONY : benchmarks/order_matching_benchmark.cpp.i

benchmarks/order_matching_benchmark.s: benchmarks/order_matching_benchmark.cpp.s
.PHONY : benchmarks/order_matching_benchmark.s

# target to generate assembly for a file
benchmarks/order_matching_benchmark.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/order_benchmark.dir/build.make CMakeFiles/order_benchmark.dir/benchmarks/order_matching_benchmark.cpp.s
.PHONY : benchmarks/order_matching_benchmark.cpp.s

src/main.o: src/main.cpp.o
.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine.dir/build.make CMakeFiles/matching_engine.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine.dir/build.make CMakeFiles/matching_engine.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine.dir/build.make CMakeFiles/matching_engine.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

src/matching_engine.o: src/matching_engine.cpp.o
.PHONY : src/matching_engine.o

# target to build an object file
src/matching_engine.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine.dir/build.make CMakeFiles/matching_engine.dir/src/matching_engine.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/order_benchmark.dir/build.make CMakeFiles/order_benchmark.dir/src/matching_engine.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine_test.dir/build.make CMakeFiles/matching_engine_test.dir/src/matching_engine.cpp.o
.PHONY : src/matching_engine.cpp.o

src/matching_engine.i: src/matching_engine.cpp.i
.PHONY : src/matching_engine.i

# target to preprocess a source file
src/matching_engine.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine.dir/build.make CMakeFiles/matching_engine.dir/src/matching_engine.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/order_benchmark.dir/build.make CMakeFiles/order_benchmark.dir/src/matching_engine.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine_test.dir/build.make CMakeFiles/matching_engine_test.dir/src/matching_engine.cpp.i
.PHONY : src/matching_engine.cpp.i

src/matching_engine.s: src/matching_engine.cpp.s
.PHONY : src/matching_engine.s

# target to generate assembly for a file
src/matching_engine.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine.dir/build.make CMakeFiles/matching_engine.dir/src/matching_engine.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/order_benchmark.dir/build.make CMakeFiles/order_benchmark.dir/src/matching_engine.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine_test.dir/build.make CMakeFiles/matching_engine_test.dir/src/matching_engine.cpp.s
.PHONY : src/matching_engine.cpp.s

src/network.o: src/network.cpp.o
.PHONY : src/network.o

# target to build an object file
src/network.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine.dir/build.make CMakeFiles/matching_engine.dir/src/network.cpp.o
.PHONY : src/network.cpp.o

src/network.i: src/network.cpp.i
.PHONY : src/network.i

# target to preprocess a source file
src/network.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine.dir/build.make CMakeFiles/matching_engine.dir/src/network.cpp.i
.PHONY : src/network.cpp.i

src/network.s: src/network.cpp.s
.PHONY : src/network.s

# target to generate assembly for a file
src/network.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine.dir/build.make CMakeFiles/matching_engine.dir/src/network.cpp.s
.PHONY : src/network.cpp.s

src/order_book.o: src/order_book.cpp.o
.PHONY : src/order_book.o

# target to build an object file
src/order_book.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine.dir/build.make CMakeFiles/matching_engine.dir/src/order_book.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/order_benchmark.dir/build.make CMakeFiles/order_benchmark.dir/src/order_book.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/order_book_test.dir/build.make CMakeFiles/order_book_test.dir/src/order_book.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine_test.dir/build.make CMakeFiles/matching_engine_test.dir/src/order_book.cpp.o
.PHONY : src/order_book.cpp.o

src/order_book.i: src/order_book.cpp.i
.PHONY : src/order_book.i

# target to preprocess a source file
src/order_book.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine.dir/build.make CMakeFiles/matching_engine.dir/src/order_book.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/order_benchmark.dir/build.make CMakeFiles/order_benchmark.dir/src/order_book.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/order_book_test.dir/build.make CMakeFiles/order_book_test.dir/src/order_book.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine_test.dir/build.make CMakeFiles/matching_engine_test.dir/src/order_book.cpp.i
.PHONY : src/order_book.cpp.i

src/order_book.s: src/order_book.cpp.s
.PHONY : src/order_book.s

# target to generate assembly for a file
src/order_book.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine.dir/build.make CMakeFiles/matching_engine.dir/src/order_book.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/order_benchmark.dir/build.make CMakeFiles/order_benchmark.dir/src/order_book.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/order_book_test.dir/build.make CMakeFiles/order_book_test.dir/src/order_book.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine_test.dir/build.make CMakeFiles/matching_engine_test.dir/src/order_book.cpp.s
.PHONY : src/order_book.cpp.s

tests/matching_engine_test.o: tests/matching_engine_test.cpp.o
.PHONY : tests/matching_engine_test.o

# target to build an object file
tests/matching_engine_test.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine_test.dir/build.make CMakeFiles/matching_engine_test.dir/tests/matching_engine_test.cpp.o
.PHONY : tests/matching_engine_test.cpp.o

tests/matching_engine_test.i: tests/matching_engine_test.cpp.i
.PHONY : tests/matching_engine_test.i

# target to preprocess a source file
tests/matching_engine_test.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine_test.dir/build.make CMakeFiles/matching_engine_test.dir/tests/matching_engine_test.cpp.i
.PHONY : tests/matching_engine_test.cpp.i

tests/matching_engine_test.s: tests/matching_engine_test.cpp.s
.PHONY : tests/matching_engine_test.s

# target to generate assembly for a file
tests/matching_engine_test.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/matching_engine_test.dir/build.make CMakeFiles/matching_engine_test.dir/tests/matching_engine_test.cpp.s
.PHONY : tests/matching_engine_test.cpp.s

tests/order_book_test.o: tests/order_book_test.cpp.o
.PHONY : tests/order_book_test.o

# target to build an object file
tests/order_book_test.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/order_book_test.dir/build.make CMakeFiles/order_book_test.dir/tests/order_book_test.cpp.o
.PHONY : tests/order_book_test.cpp.o

tests/order_book_test.i: tests/order_book_test.cpp.i
.PHONY : tests/order_book_test.i

# target to preprocess a source file
tests/order_book_test.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/order_book_test.dir/build.make CMakeFiles/order_book_test.dir/tests/order_book_test.cpp.i
.PHONY : tests/order_book_test.cpp.i

tests/order_book_test.s: tests/order_book_test.cpp.s
.PHONY : tests/order_book_test.s

# target to generate assembly for a file
tests/order_book_test.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/order_book_test.dir/build.make CMakeFiles/order_book_test.dir/tests/order_book_test.cpp.s
.PHONY : tests/order_book_test.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... matching_engine"
	@echo "... matching_engine_test"
	@echo "... network_benchmark"
	@echo "... order_benchmark"
	@echo "... order_book_test"
	@echo "... benchmarks/network_benchmark.o"
	@echo "... benchmarks/network_benchmark.i"
	@echo "... benchmarks/network_benchmark.s"
	@echo "... benchmarks/order_matching_benchmark.o"
	@echo "... benchmarks/order_matching_benchmark.i"
	@echo "... benchmarks/order_matching_benchmark.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/matching_engine.o"
	@echo "... src/matching_engine.i"
	@echo "... src/matching_engine.s"
	@echo "... src/network.o"
	@echo "... src/network.i"
	@echo "... src/network.s"
	@echo "... src/order_book.o"
	@echo "... src/order_book.i"
	@echo "... src/order_book.s"
	@echo "... tests/matching_engine_test.o"
	@echo "... tests/matching_engine_test.i"
	@echo "... tests/matching_engine_test.s"
	@echo "... tests/order_book_test.o"
	@echo "... tests/order_book_test.i"
	@echo "... tests/order_book_test.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

