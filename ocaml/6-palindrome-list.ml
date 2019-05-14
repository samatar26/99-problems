let rev l = 
  let rec rev_inner acc = function 
    | [] -> acc 
    | h::t -> rev_inner (h::acc) t 
  in rev_inner [] l 

let is_palindrome l = rev l = l