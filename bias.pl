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

% Type definitions
type(valid_grab_action,(object,list)).
type(valid_release_action,(object,list)).
type(robot_free,(list)).
type(robot_at,(list,coord,coord)).
type(object_at,(object,coord,coord,list)).
type(robot_holding,(list,color)).
type(goal_at,(color,coord,coord,list)).
type(object_color,(object,color)).

% Mode declarations
:- modeh(1,valid_grab_action(+object,+list)).
:- modeh(1,valid_release_action(+object,+list)).
:- modeb(1,robot_free(+list)).
:- modeb(1,robot_at(+list,+coord,+coord)).
:- modeb(1,object_at(+object,+coord,+coord,+list)).
:- modeb(1,robot_holding(+list,-color)).
:- modeb(1,goal_at(+color,+coord,+coord,+list)).
:- modeb(1,object_color(+object,-color)).

% Base types
base(coord, (0,1)).
base(color, (red,blue,green,yellow)).
base(object, (o1,o2,o3,o4)).

% Settings
max_vars(6).
max_body(6).