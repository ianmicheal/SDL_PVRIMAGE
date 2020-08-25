#
# SDLDC Image display example using SDL + SDL IMAGE AND SDL IMAGE PVR
# (c)2003/2020 Ian micheal 
#   

TARGET = SDLDC1.elf
OBJS =  main.o





all: rm-elf $(TARGET)

include $(KOS_BASE)/Makefile.rules

KOS_CFLAGS += -ml -m4-single-only -pipe -I../kos-ports/include/SDL -I../include/zlib-1.2.3 -I../libpng-1.2.8

clean:
	-rm -f $(TARGET) $(OBJS) romdisk.*

rm-elf:
	-rm -f $(TARGET) romdisk.*

$(TARGET): $(OBJS) romdisk.o
	$(KOS_CC) $(KOS_CFLAGS) $(KOS_LDFLAGS) -o $(TARGET) $(KOS_START) \
		$(OBJS) romdisk.o $(OBJEXTRA) -L$(KOS_BASE)/lib -lgcc   -lSDL -lSDLPVR_image -lpng -lz -ljpeg  -lSDL -loggvorbisplay -ltremor -lm  $(KOS_LIBS)

romdisk.img:
	$(KOS_GENROMFS) -f romdisk.img -d romdisk -v

romdisk.o: romdisk.img
	$(KOS_BASE)/utils/bin2o/bin2o romdisk.img romdisk romdisk.o

run: $(TARGET)
	$(KOS_LOADER) $(TARGET)


