//
// Created by sten_bone on 4/20/20.
//

#ifndef LD46_CONSTANTS_H
#define LD46_CONSTANTS_H


const unsigned int WINDOW_WIDTH = 800;
const unsigned int WINDOW_HEIGHT = 600;

const unsigned int CELL_SIZE = 40; // height/width in pixels
const unsigned int BOARD_WIDTH = WINDOW_WIDTH / CELL_SIZE;
const unsigned int BOARD_HEIGHT = WINDOW_HEIGHT / CELL_SIZE;

const unsigned int FPS = 60;
const unsigned int FRAME_TARGET_TIME = 	1000 / FPS; // in milliseconds


#endif //LD46_CONSTANTS_H
