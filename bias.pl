% Head predicates
head_pred(valid_grab_action,2).
head_pred(valid_release_action,2).

% Body predicates
body_pred(robot_free,1).
body_pred(robot_at,3).
body_pred(object_at,4).
body_pred(robot_holding,2).
body_pred(goal_at,4).
body_pred(object_color,2).

% Types
type(valid_grab_action,(object,state)).
type(valid_release_action,(object,state)).
type(robot_free,(state)).
type(robot_at,(state,coord,coord)).
type(object_at,(object,coord,coord,state)).
type(robot_holding,(state,color)).
type(goal_at,(color,coord,coord,state)).
type(object_color,(object,color)).

% Directions
direction(valid_grab_action,(in,in)).
direction(valid_release_action,(in,in)).
direction(robot_free,(in)).
direction(robot_at,(in,in,in)).
direction(object_at,(in,in,in,in)).
direction(robot_holding,(in,out)).
direction(goal_at,(in,in,in,in)).
direction(object_color,(in,out)).

% Additional directions for state handling
direction(state,(in)).
direction(coord,(in)).
direction(color,(in)).

% Constants
coord(0).
coord(1).
color(red).
color(blue).
color(green).
color(yellow).
object(o1).
object(o2).
object(o3).
object(o4).

% Settings
max_vars(6).
max_body(6).