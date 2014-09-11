
main(_) ->
  io:fwrite("~p~n", [lists:sum([X || X <- lists:seq(0, 999), (X rem 3 =:= 0) or (X rem 5 =:= 0)])]).
