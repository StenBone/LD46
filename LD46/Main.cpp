#include <iostream>
#include "Game.h"
#include "Constants.h"

int main() {

    Game* game = new Game();
    game->Init(WINDOW_WIDTH, WINDOW_HEIGHT);

    while (game->IsRunning())
    {
        game->ProcessInput();
        game->Update();
        game->Render();
    }

    delete game;
    return 0;
}
