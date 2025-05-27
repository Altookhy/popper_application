% ============================================
% Background Knowledge for Color Matching Task
% ============================================
% This file contains the core knowledge about blocks, 
% cells, and their colors for the learning task.

% Dynamic predicates
:- dynamic cell/3.    % cell(X, Y, Color)
:- dynamic block/2.   % block(BlockID, Color)

block(b1, yellow).
block(b2, blue).
block(b3, orange).
block(b4, red).
block(b5, magenta).

% Grid cells and their colors
cell_has_color(0, 0, yellow).   % Position (0,0) is yellow
cell_has_color(0, 1, blue).
cell_has_color(0, 2, orange).
cell_has_color(1, 0, red).
cell_has_color(1, 1, orange).
cell_has_color(1, 2, red).
cell_has_color(2, 0, magenta).
cell_has_color(2, 1, blue).
cell_has_color(2, 2, yellow).

% grid validation
valid_coord(X, Y) :-
    X >= 0, X =< 2,
    Y >= 0, Y =< 2.
