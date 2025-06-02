head_pred(valid_place_action,4).
body_pred(object_color,2).
body_pred(cell,3).
body_pred(object_available,2).
body_pred(cell_available,3).

% Types
type(valid_place_action,(object,coord,coord,state)).
type(object_color,(object,color)).
type(cell,(coord,coord,color)).
type(object_available,(object,state)).
type(cell_available,(coord,coord,state)).

% Directions
direction(valid_place_action,(in,in,in,in)).
direction(object_color,(in,out)).
direction(cell,(in,in,out)).
direction(object_available,(in,in)).
direction(cell_available,(in,in,in)).

% Constants
% 2x2 grid objects
object(o1).
object(o2).
object(o3).
object(o4).
% 3x3 grid objects
object(o5).
object(o6).
object(o7).
object(o8).
object(o9).
% 4x4 grid objects
object(o10).
object(o11).
object(o12).
object(o13).
object(o14).
object(o15).
object(o16).

% 2x2 grid coordinates
coord(0).
coord(1).
% 3x3 grid coordinates
coord(2).
% 4x4 grid coordinates
coord(3).

color(red).
color(blue).
color(green).
color(yellow).

max_vars(6).
max_body(6).  


% --------------------------------------------
% head_pred(valid_place_action,4).
% body_pred(object_color,2).
% type(object_color,(object,color)).
% direction(object_color,(in,out)).
% max_body(3).
% --------------------------------------------

