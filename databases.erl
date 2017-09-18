-module(databases). 
-export([connect/0,create/0,insert/0,select/0,where/0,update/0,delete/0,describe/0,count/0]). 

connect() ->
   odbc:start(), 
   {ok, Ref} = odbc:connect("DSN = PostgreSQL30;UID = admin;PWD = xxxx", []), 
   io:fwrite("~p",[Ref]).

create() -> 
   odbc:start(), 
   {ok, Ref} = odbc:connect("DSN = PostgreSQL30; UID = admin;PWD = xxxx", []), 
   odbc:sql_query(Ref, "CREATE TABLE clientes (id bigserial NOT NULL, nombre character varying(255), 
   descripcion character varying(255), numero character varying(255), status character varying(255))").

insert() -> 
   odbc:start(), 
   {ok, Ref} = odbc:connect("DSN = usersqlserver; UID = admin;PWD = xxxx", []), 
   io:fwrite("~p",[odbc:sql_query(Ref, 
   "INSERT INTO clientes VALUES(1, 'BBVA', 'Banco Provincial', '(0212) 123456', 'Activo')")]).

select() ->
   odbc:start(), 
   {ok, Ref} = odbc:connect("DSN = PostgreSQL30; UID = admin;PWD = xxxx", []), 
   io:fwrite("~p",[odbc:sql_query(Ref, "SELECT * FROM clientes") ]).	 

where() -> 
   odbc:start(), 
   {ok, Ref} = odbc:connect("DSN=PostgreSQL30; UID=admin;PWD=xxxx", []), 
   io:fwrite("~p",[ odbc:param_query(Ref, "SELECT * FROM clientes WHERE status=?", 
   [{{sql_char, 255}, ["Activo"]}])]).

update() -> 
   odbc:start(), 
   {ok, Ref} = odbc:connect("DSN = PostgreSQL30; UID = admin;PWD = xxxx", []), 
   io:fwrite("~p",[ odbc:sql_query(Ref, "
      UPDATE clientes SET status = 'Inactivo' WHERE id= 3")]).
			
delete() -> 
   odbc:start(), 
   {ok, Ref} = odbc:connect("DSN = PostgreSQL30; UID = admin;PWD = xxxx", []), 
   io:fwrite("~p",[ odbc:sql_query(Ref, "DELETE clientes WHERE id= 3")]).
	 
describe() -> 
   odbc:start(), 
   {ok, Ref} = odbc:connect("DSN = PostgreSQL30; UID = admin;PWD = xxxx", []), 
   io:fwrite("~p",[odbc:describe_table(Ref, "clientes")]).

count() ->
   odbc:start(), 
   {ok, Ref} = odbc:connect("DSN = PostgreSQL30; UID = admin;PWD = xxxx", []), 
   io:fwrite("~p",[odbc:select_count(Ref, "SELECT * FROM EMPLOYEE")]).