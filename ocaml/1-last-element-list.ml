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
 *)