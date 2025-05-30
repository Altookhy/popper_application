% Head predicates
head_pred(valid_place_action,4).
head_pred(valid_grab_action,2).
head_pred(valid_release_action,2).

% Body predicates
body_pred(cell_available,3).
body_pred(object_color,2).
body_pred(cell,3).
body_pred(robot_free,1).
body_pred(robot_at,3).
body_pred(object_at,4).
body_pred(robot_holding,2).
body_pred(goal_at,4).

% Types
type(valid_place_action,(object,coord,coord,list)).
type(cell_available,(coord,coord,list)).
type(object_color,(object,color)).
type(cell,(coord,coord,color)).
type(valid_grab_action,(object,state)).
type(valid_release_action,(object,state)).
type(robot_free,(state)).
type(robot_at,(state,coord,coord)).
type(object_at,(object,coord,coord,state)).
type(robot_holding,(state,color)).
type(goal_at,(color,coord,coord,state)).

% Directions
direction(valid_place_action,(in,in,in,in)).
direction(cell_available,(in,in,in)).
direction(object_color,(in,out)).
direction(cell,(in,in,out)).
direction(valid_grab_action,(in,in)).
direction(valid_release_action,(in,in)).
direction(robot_free,(in)).
direction(robot_at,(in,in,in)).
direction(object_at,(in,in,in,in)).
direction(robot_holding,(in,in)).
direction(goal_at,(in,in,in,in)).

% Constants
object(o1).
object(o2).
object(o3).
object(o4).
coord(0).
coord(1).
color(red).
color(blue).
color(green).
color(yellow).

% Settings
max_vars(6).
max_body(6).