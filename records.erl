-module(records). 
-export([start/0]). 
-record(person, {name = "", address}). 
-record(employee, {person, id}).

accessRecord() -> 
   P = #person{name="John",address="A"},
	 io:fwrite("~p~n",[P#person.address]), 
   io:fwrite("~p~n",[P#person.name]).

updateRecord() -> 
   P = #person{name = "John",address = "B"}, 
   P1 = P#person{name = "Dan"}, %update name to Dan
   io:fwrite("~p~n",[P1#person.address]), 
   io:fwrite("~p~n",[P1#person.name]).

nested() -> 
   P =#employee{person=#person{name="John",address="A"},id=1}, 
   io:fwrite("~p~n",[P#employee.id]).

start () ->
	accessRecord(),
	updateRecord(),
	nested().