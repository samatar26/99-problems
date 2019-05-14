let rec rev = function 
  | [] -> []
  | h::t -> rev t @ [h]

(* 
  Unfortunately the append operator isn't a constant operation 
  as it's runtime is dependent on the length of the list on the left of the operator. 
 *)

let rev_tail_recursive l = 
  let rec rev_inner acc = function  
    | [] -> acc
    | h::t -> rev_inner (h::acc) t
  in rev_inner [] l
