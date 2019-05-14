let rec length = function 
  | [] -> 0
  | h::t -> 1 + length t

(* 
  Uses a constant amount of stack memory regardless of list size. (tail-recursive)
 *)
let rec length_tail_recursive l = 
  let rec length_inner n = function
    | [] -> n 
    | _::t -> length_inner (n+1) t
  in length_inner 0 l

(* 
  Solution names length_inner -> aux
 *)