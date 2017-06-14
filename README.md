## Set-Up

Clone this repository, then:

```bash
bundle install

rspec #to run tests

pry / irb #to run the program

```
## Instructions

In your chosen REPL:
```bash
require './lib/game'
game = Game.new # to instantiate a new game
game.place(row, column) # enter the desired place to place your piece
# example
game.place(0,0) # would put your piece in the top left space
```

## User Stories

As a player,
So I can play a game of Tic Tac Toe(TTT),
I need an empty 3 x 3 board to play on.

As a player,
So I can play a game of TTT,
I want to be able to place my 'O' or 'X' on an empty space on the board.

As a player,
So I can play a meaningful game of TTT,
The game needs to take turns between 'O' and 'X'.

As a player,
So I can win in a game of TTT,
The game needs to recognise three in a row ('O' or 'X').

As a player,
So I can draw in a game of TTT,
The game needs to recognise a draw.
