TARGET=libSDLPVR_image.a

KOS_CFLAGS+= -DLOAD_BMP=YES -DLOAD_GIF=YES -DLOAD_LBM=YES -DLOAD_PCX=YES -DLOAD_PNM=YES -DLOAD_TGA=YES -DLOAD_XCF=YES -DLOAD_XXX=YES -DLOAD_PNG=YES -DLOAD_PVR=1 -I../kos-ports/include/SDL -I../include/zlib-1.2.3 -I../libpng-1.2.8

all: $(TARGET)


include $(KOS_BASE)/Makefile.rules

OBJS = IMG_gif.o IMG_jpg.o IMG_bmp.o IMG_lbm.o IMG_png.o  IMG_tga.o  IMG_xcf.o  IMG_xxx.o IMG_pcx.o  IMG_pnm.o  IMG_tif.o  IMG_xpm.o IMG.o IMG_pvr.o

$(TARGET): $(OBJS)
	rm -f $(KOS_BASE)/addons/lib/dreamcast/$(TARGET)
	$(KOS_AR) rcs $(KOS_BASE)/addons/lib/dreamcast/$(TARGET) $(OBJS)
	$(KOS_RANLIB) $(KOS_BASE)/addons/lib/dreamcast/$(TARGET)

clean:
	rm -f $(OBJS)
