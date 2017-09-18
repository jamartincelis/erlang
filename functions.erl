-module(functions). 
-export([add/1,add/2,add/3,anonymous/0,start/0]). 

% Guard sequences
add(X) when X>3 -> 
   io:fwrite("~w~n",[X]). 
	 
add(X,Y) -> 
   Z = X+Y, 
   io:fwrite("~w~n",[Z]). 

% Multiple Arguments
add(X,Y,Z) -> 
   A = X+Y+Z, 
   io:fwrite("~w~n",[A]). 

% Anonymous Functions	 
anonymous () -> 
   Fn = fun() -> 
      io:fwrite("Anonymous Function") end, 
   Fn().	 
   
start() -> 
	 add(4),
   add(5,6),
	 add(5,6,7),
	 anonymous().

