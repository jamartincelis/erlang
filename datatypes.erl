-module(datatypes).
-export([tuple/0,
				map/0,
				list/0]).

% tuple
tuple() ->
		P = {john,24,{june,25}}, 
		io:fwrite("~w~n",[tuple_size(P)]).

% map
map() ->
	M1 = #{name=>javier,age=>25},
	io:fwrite("~w~n",[map_size(M1)]).

% list
list() ->
	L = [10,20,30],
	io:fwrite("~w~n",[length(L)]).
	