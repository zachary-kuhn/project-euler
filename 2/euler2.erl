
solve(Previous, Current, Sum) when Current rem 2 =:= 0 ->
  solve(Current, Previous + Current, Sum + Current);
solve(_, Current, Sum) when Current > 4000000 -> Sum;
solve(Previous, Current, Sum) ->
  solve(Current, Previous + Current, Sum).

main(_) ->
  io:fwrite("~p~n", [solve(0, 1, 0)]).
