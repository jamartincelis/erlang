-module(guards). 
-export([display/1,start/0]). 

display(N) when N > 10 ->   
	io:fwrite("greater then 10~n"); 
display(N) when N < 10 -> 
	io:fwrite("Less than 10~n"). 

display2() -> 
   N = 9, 
   if 
      N > 10 -> 
         io:fwrite("N is greater than 10~n"); 
      true -> 
         io:fwrite("N is less than 10~n") 
   end.

display3() -> 
   A = 9, 
   case A of {A} when A>10 -> 
      io:fwrite("The value of A is greater than 10~n"); _ -> 
      io:fwrite("The value of A is less than 10~n") 
   end.	 

display4(N) when N > 10 , is_integer(N) -> 
   io:fwrite("greater then 10~n"); 
display4(N) when N < 10 -> 
   io:fwrite("Less than 10~n"). 
	 
start() -> 
   display(11),
	 display2(),
	 display3(),
	 display4(11).