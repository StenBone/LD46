//
// Created by sten_bone on 4/20/20.
//

#ifndef LD46_GAME_H
#define LD46_GAME_H

#include <SDL2/SDL.h>
#include "Constants.h"

class Game {

private:
    bool isRunning;
    SDL_Window *window;
    SDL_Renderer *renderer;
    bool board[BOARD_WIDTH][BOARD_HEIGHT] = {false};

    unsigned int CellNeighborsCount(int cell_x, int cell_y);
    void UpdateBoard();

public:
    Game() { this->isRunning = false; }
    ~Game();

    bool IsRunning() const {return this->isRunning;}

    void Init(const unsigned int width, const unsigned int height);
    void ProcessInput();
    void Update();
    void Render();
};


#endif //LD46_GAME_H
