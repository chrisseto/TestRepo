#pragma once
#include "SDL.h"
#include "SDL_image.h"

//Screen attributes
const int SCREEN_WIDTH = 640;
const int SCREEN_HEIGHT = 480;
const int SCREEN_BPP = 32;

//The frame rate
const int FRAMES_PER_SECOND = 20;

//Tile constants
const int TILE_WIDTH = 40;
const int TILE_HEIGHT = 40;
const int TILE_SPRITES = 15;

//The different tile sprites
const int TILE_DESERT1 = 0;
const int TILE_GRASS3 = 1;//Desert3
const int TILE_GRASS1 = 2;
const int TILE_CENTER = 3;
const int TILE_TOP = 4;
const int TILE_TOPRIGHT = 5;
const int TILE_RIGHT = 6;
const int TILE_BOTTOMRIGHT = 7;
const int TILE_BOTTOM = 8;
const int TILE_BOTTOMLEFT = 9;
const int TILE_LEFT = 10;
const int TILE_TOPLEFT = 11;
const int TILE_DESERT2 = 12;
const int TILE_DESERT3 = 14;
const int TILE_GRASS2 = 15;

//Sprite from the tile sheet
extern SDL_Rect clips[ TILE_SPRITES ];
enum Allegiance
{
	Allie,
	Neutral,
	Enemy
};