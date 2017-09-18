-module(processes). 
-export([start/0, call/2]). 

call(Arg1, Arg2) -> 
   io:format("~p ~p~n", [Arg1, Arg2]). 
start() -> 
   Pid = spawn(?MODULE, call, ["hello", "process"]), 
   io:fwrite("~p",[Pid]).