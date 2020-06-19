//
// Created by sten_bone on 4/20/20.
//

#include <iostream>
#include <vector>
#include "Game.h"

Game::~Game() {
    // Clean up SDL
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
}

void Game::Init(const unsigned int width, const unsigned int height) {
    if (isRunning != false) {
        return;
    }

    if (SDL_Init(SDL_INIT_EVERYTHING) != 0) {
        std::cerr << "Error initializing SDL." << std::endl;
        return;
    }

    window = SDL_CreateWindow(
            NULL,
            SDL_WINDOWPOS_CENTERED,
            SDL_WINDOWPOS_CENTERED,
            width,
            height,
            SDL_WINDOW_BORDERLESS
    );

    if (!window) {
        std::cerr << "Error creating SDL window." << std::endl;
        return;
    }

    renderer = SDL_CreateRenderer(window, -1, 0);
    if (!renderer) {
        std::cerr << "Error creating SDL renderer." << std::endl;
        return;
    }

    isRunning = true;
    return;
}


void Game::ProcessInput() {
    SDL_Event event;
    SDL_PollEvent(&event);
    switch(event.type) {
        case SDL_QUIT: {
            isRunning = false;
            break;
        }
        case SDL_KEYDOWN: {
            if (event.key.keysym.sym == SDLK_ESCAPE) {
                isRunning = false;
            }
            else if(event.key.keysym.sym == SDLK_SPACE) {
                UpdateBoard();
            }
            break;
        }
        case SDL_MOUSEBUTTONUP: {
            //Get mouse position
            int x, y;
            SDL_GetMouseState( &x, &y );
            board[x / CELL_SIZE][ y / CELL_SIZE] = true;
            break;
        }
        default: {
            break;
        }
    }
}

void Game::Update() {



}

void Game::Render() {
    // Double buffer
    // One gets displayed while one gets drawn
    SDL_SetRenderDrawColor(renderer, 21, 21, 21, SDL_ALPHA_OPAQUE); // grey
    SDL_RenderClear(renderer); // clears back buffer

    std::vector<SDL_Rect> rects_to_draw;

    // from board to SDL_Rects
    for (int x = 0; x < BOARD_WIDTH; x++) {
        for (int y = 0; y < BOARD_HEIGHT; y++) {
            if ( board[x][y] == true) {
                SDL_Rect temp {x * (int)CELL_SIZE, y * (int)CELL_SIZE, CELL_SIZE, CELL_SIZE};
                rects_to_draw.push_back(temp);
            }
        }
    }

    // Draw Cells
    SDL_SetRenderDrawColor(renderer, 255, 255, 255, SDL_ALPHA_OPAQUE);
    SDL_RenderFillRects(renderer, rects_to_draw.data(), rects_to_draw.size());


    // Draw Game Board
    SDL_SetRenderDrawColor(renderer, 30, 255, 30, SDL_ALPHA_OPAQUE);
    for (int x = 1; x < BOARD_WIDTH; x++)
    {
        unsigned int x_coord = x * CELL_SIZE;
        SDL_RenderDrawLine(renderer, x_coord, 0, x_coord, WINDOW_HEIGHT);
    }

    for (int y = 1; y < BOARD_WIDTH; y++)
    {
        unsigned int y_coord = y * CELL_SIZE;
        SDL_RenderDrawLine(renderer, 0, y_coord, WINDOW_WIDTH, y_coord);
    }


    SDL_RenderPresent(renderer); // swap buffers
}

unsigned int Game::CellNeighborsCount(int cell_x, int cell_y) {

    unsigned int count = 0;
    unsigned int x_start = cell_x - 1, y_start = cell_y - 1, x_end =  cell_x + 1, y_end = cell_y + 1;

    for (int x = x_start; x <= x_end; x++) {
        for (int y = y_start; y <= y_end; y++) {
            if (!(x == cell_x && y == cell_y) && board[x][y] == true) { // todo this does not work - (x != cell_x && y != cell_y && board[x][y] == true)
                count++;
            }
        }
    }
    return count;
} // todo it was returning 3 becuase I forgot to add a return!!!! WHAT!!!!

void Game::UpdateBoard() {

    unsigned int neighbor_count = 0;

    std::cout << "--------------------" << std::endl;
    for (int x = 1; x < BOARD_WIDTH; x++) {
        for (int y = 1; y < BOARD_HEIGHT; y++) {

            neighbor_count = CellNeighborsCount(x, y);

            if (neighbor_count > 0)
            {
                std::cout << "x:" << x << ", y:" << y << ", count:" <<  neighbor_count << std::endl;
            }
            //neighbor_count = 2 || neighbor_count == 3 Lives
            //neighbor_count < 2 Dies Isolation
            //neighbor_count > 3 Dies Over-Population

            // todo Enums for the board, not just true and false. Easier to read
            if ((neighbor_count < 2 || neighbor_count > 3) && board[x][y] == true) //Dies Isolation
            {
                board[x][y] = false;
            }
            else if (neighbor_count == 3 && board[x][y] == false) //Birth
            {
                board[x][y] = true;
            }
        }
    }
    std::cout << "+++++++++++++++++++" << std::endl;
}
