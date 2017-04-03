SHELL=/bin/sh

CC=g++
CFLAGS= -std=c++11 -c -Wall
gCFLAGS =  -std=c++11 -c -Wall -g
LIBS=  -lSDL2 \
-lSDL2_image \
-lSDL2_ttf \
-lGL \
-lGLU \
-lGLEW \
-lgsl \
-lgslcblas \
-lopenal \
-lalut \
-lSDL2_mixer \
-lchronious \
-lboost_system \
-lboost_chrono \
-lasound 

SRC=$(wildcard src/*.cpp)
HDR=$(wildcard hdr/*.h)

#Release
SCDS: $(SRC:src/%.cpp=obj/%.o)
	$(CC) $^ -o $@ -L ~/Z_main/AppResearch/xvclib/ $(LIBS)

obj/%.o: src/%.cpp
	$(CC) $(CFLAGS) -I hdr/ $< -o $@ 

#Debug
gSCDS: $(SRC:src/%.cpp=obj/g%.o)
	$(CC) $^ -o $@ -L ~/Z_main/AppResearch/xvclib/ $(LIBS)

obj/g%.o: src/%.cpp
	$(CC) $(gCFLAGS) -I hdr/ $< -o $@ 



clean:
	rm -f SCDS gSCDS obj/*.o







