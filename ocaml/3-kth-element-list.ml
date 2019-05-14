let rec find_nth (n: int) = function 
  | [] -> None
  | h::t -> 
    if n = 1
    then Some h 
    else find_nth (n-1) t