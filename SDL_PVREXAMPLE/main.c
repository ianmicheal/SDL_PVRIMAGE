

//Example BY Ian Micheal 2020
#include <kos.h>
#include <SDL.h>    
#include <SDL_image.h> 
#include <stdlib.h> 

extern uint8 romdisk[];
KOS_INIT_ROMDISK(romdisk);
int main(int argc, char *argv[])   { 
   Uint32 flags = SDL_SWSURFACE|SDL_FULLSCREEN; 
   if(SDL_Init(SDL_INIT_VIDEO) < 0)   { 
      return -1; 
   } 

SDL_Surface * screen; 
SDL_Surface * image; 

screen = SDL_SetVideoMode(640, 480, 16, flags); 
//image  =IMG_Load("/cd/image.pvr");  //load PVR power of 2* example 256x256 512x512 etc using SDL
image  =IMG_Load("/rd/image.pvr");  //load PVR power of 2* example 256x256 512x512 etc using SDL
//image  = SDL_LoadBMP("/cd/image.bmp");  //load bmp using SDL
//image  = IMG_Load("image.jpg"); //load jpg  using SDL_image

/* Puting image on the screen up*/ 
SDL_BlitSurface(image, NULL, screen, NULL); 
 SDL_Flip(screen);
 SDL_Delay(10000);
 
 }
