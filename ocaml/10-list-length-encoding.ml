(* https://en.wikipedia.org/wiki/Run-length_encoding *)

let encode l = 
  let rec aux count acc = function 
    | a :: (b :: _ as tl) -> 
      if a = b then aux (count + 1) acc tl
      else aux 0 ((count + 1, a) :: acc) tl 
    | [x] ->
      (count + 1, x) :: acc
    | [] -> [] 
  in List.rev (aux 0 [] l)