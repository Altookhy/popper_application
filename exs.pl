:- discontiguous neg/1.
:- discontiguous pos/1.

% ============================================
% Examples for Color Matching Game
% ============================================
% This file contains positive and negative examples
% of valid moves in the Color Matching Game.

% Positive examples: valid placements (object and cell colors match, both available)
pos(valid_place_action(o1,0,0,[])).
pos(valid_place_action(o2,0,1,[])).
pos(valid_place_action(o3,1,0,[])).
pos(valid_place_action(o4,1,1,[])).

% Negative examples: color mismatch, object/cell not available
neg(valid_place_action(o1,0,1,[])). % o1 is red, cell is blue
neg(valid_place_action(o2,1,0,[])). % o2 is blue, cell is green
neg(valid_place_action(o3,1,1,[])). % o3 is green, cell is yellow
neg(valid_place_action(o4,0,0,[])). % o4 is yellow, cell is red

% Negative: object already placed
neg(valid_place_action(o1,0,0,[placed(o1,0,0)])).

% Negative: cell already occupied
neg(valid_place_action(o2,0,1,[placed(_,0,1)])).

% Additional positive examples
pos(valid_place_action(o1,0,0,[])). % already present
pos(valid_place_action(o2,0,1,[])). % already present
pos(valid_place_action(o3,1,0,[])). % already present
pos(valid_place_action(o4,1,1,[])). % already present

% Place o1 after o2 is placed elsewhere
pos(valid_place_action(o1,0,0,[placed(o2,1,1)])).
% Place o2 after o1 is placed elsewhere
pos(valid_place_action(o2,0,1,[placed(o1,1,0)])).
% Place o3 after o4 is placed elsewhere
pos(valid_place_action(o3,1,0,[placed(o4,0,1)])).
% Place o4 after o3 is placed elsewhere
pos(valid_place_action(o4,1,1,[placed(o3,0,0)])).

% Place o1 when other objects are placed but not at (0,0)
pos(valid_place_action(o1,0,0,[placed(o2,1,1), placed(o3,1,0)])).

% Additional negative examples
neg(valid_place_action(o1,0,1,[placed(o2,0,1)])). % cell (0,1) already occupied
neg(valid_place_action(o2,0,1,[placed(o2,0,1)])). % o2 already placed
neg(valid_place_action(o3,1,0,[placed(o3,1,0)])). % o3 already placed
neg(valid_place_action(o4,1,1,[placed(o4,1,1)])). % o4 already placed
neg(valid_place_action(o1,0,0,[placed(o1,0,0)])). % o1 already placed at (0,0)
neg(valid_place_action(o2,0,1,[placed(o1,0,1)])). % cell (0,1) occupied by o1
neg(valid_place_action(o3,1,0,[placed(o2,1,0)])). % cell (1,0) occupied by o2
neg(valid_place_action(o4,1,1,[placed(o3,1,1)])). % cell (1,1) occupied by o3
neg(valid_place_action(o1,2,2,[])). % out of bounds
neg(valid_place_action(o2,-1,0,[])). % out of bounds
neg(valid_place_action(o3,0,-1,[])). % out of bounds
neg(valid_place_action(o4,2,0,[])). % out of bounds

% ============================================
% Examples for 3x3 grid (commented out)
% ============================================
% Positive examples: valid placements for 3x3 grid
% pos(valid_place_action(o1,0,0,[])).
% pos(valid_place_action(o2,0,1,[])).
% pos(valid_place_action(o3,0,2,[])).
% pos(valid_place_action(o4,1,0,[])).
% pos(valid_place_action(o5,1,1,[])).
% pos(valid_place_action(o6,1,2,[])).
% pos(valid_place_action(o7,2,0,[])).
% pos(valid_place_action(o8,2,1,[])).
% pos(valid_place_action(o9,2,2,[])).

% Negative examples: invalid placements for 3x3 grid
% neg(valid_place_action(o1,0,1,[])).
% neg(valid_place_action(o2,1,0,[])).
% neg(valid_place_action(o3,2,1,[])).
% neg(valid_place_action(o4,0,2,[])).
% neg(valid_place_action(o5,1,2,[])).
% neg(valid_place_action(o6,2,0,[])).
% neg(valid_place_action(o7,2,2,[])).
% neg(valid_place_action(o8,0,0,[])).
% neg(valid_place_action(o9,1,1,[])).

% ============================================
% Examples for 4x4 grid (commented out)
% ============================================
% Positive examples: valid placements for 4x4 grid
% pos(valid_place_action(o1,0,0,[])).
% pos(valid_place_action(o2,0,1,[])).
% pos(valid_place_action(o3,0,2,[])).
% pos(valid_place_action(o4,0,3,[])).
% pos(valid_place_action(o5,1,0,[])).
% pos(valid_place_action(o6,1,1,[])).
% pos(valid_place_action(o7,1,2,[])).
% pos(valid_place_action(o8,1,3,[])).
% pos(valid_place_action(o9,2,0,[])).
% pos(valid_place_action(o10,2,1,[])).
% pos(valid_place_action(o11,2,2,[])).
% pos(valid_place_action(o12,2,3,[])).
% pos(valid_place_action(o13,3,0,[])).
% pos(valid_place_action(o14,3,1,[])).
% pos(valid_place_action(o15,3,2,[])).
% pos(valid_place_action(o16,3,3,[])).

% Negative examples: invalid placements for 4x4 grid
% neg(valid_place_action(o1,0,1,[])).
% neg(valid_place_action(o2,1,0,[])).
% neg(valid_place_action(o3,2,1,[])).
% neg(valid_place_action(o4,3,0,[])).
% neg(valid_place_action(o5,0,2,[])).
% neg(valid_place_action(o6,1,3,[])).
% neg(valid_place_action(o7,2,2,[])).
% neg(valid_place_action(o8,3,1,[])).
% neg(valid_place_action(o9,0,3,[])).
% neg(valid_place_action(o10,1,2,[])).
% neg(valid_place_action(o11,2,3,[])).
% neg(valid_place_action(o12,3,2,[])).
% neg(valid_place_action(o13,0,0,[])).
% neg(valid_place_action(o14,1,1,[])).
% neg(valid_place_action(o15,2,0,[])).
% neg(valid_place_action(o16,3,3,[])).