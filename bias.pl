head_pred(valid_place_action,4).
body_pred(object_color,2).
body_pred(cell,3).
body_pred(object_available,2).
body_pred(cell_available,3).

% New type declarations
type(robot_free(state)).
type(robot_holding(state,color)).
type(robot_at(state,x,y)).
type(object_at(object,x,y,state)).
type(goal_at(color,x,y,state)).

% Types
type(valid_place_action,(object,coord,coord,state)).
type(object_color,(object,color)).
type(cell,(coord,coord,color)).
type(object_available,(object,state)).
type(cell_available,(coord,coord,state)).

% Direction declarations for grab action
direction(robot_free(+)).
direction(robot_at(+,+,+)).
direction(object_at(+,+,+,+)).

% Direction declarations for release action
direction(robot_holding(+,+)).
direction(goal_at(+,+,+,+)).

% Directions
direction(valid_place_action,(in,in,in,in)).
direction(object_color,(in,out)).
direction(cell,(in,in,out)).
direction(object_available,(in,in)).
direction(cell_available,(in,in,in)).

% Mode declarations for grab action
head_pred(valid_grab_action,2).
body_pred(robot_free,1).
body_pred(robot_at,3).
body_pred(object_at,4).

% Mode declarations for release action
head_pred(valid_release_action,2).
body_pred(robot_holding,2).
body_pred(goal_at,4).

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

max_vars(6).
max_body(6).