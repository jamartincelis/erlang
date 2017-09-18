-module(include). 
-export([start/0]). 
-include("person.hrl").
-include("macro.hrl"). 

start() -> 
   P = #person{name = "John",id = 1}, 
   io:fwrite("~p~n",[P#person.id]), 
   io:fwrite("~p~n",[P#person.name]),
	 io:fwrite("~w",[?macro1(1,2)]).