let rec last (l: 'a list): 'a option = 
  match l with 
    [] -> None
  | [x] -> Some x
  | _::t -> last t


(* 
Solution
 *)

let rec last_solution = function 
  | [] -> None 
  | [x] -> Some x 
  | _::t -> last_solution t


(* 
You can use the function keyword to match on the last argument of a function. No need for match ... with 
It also seems that the general form for pattern matching includes the | on every line, whereas I always seem to skip the first one. 
Question: What's the difference?
 *)