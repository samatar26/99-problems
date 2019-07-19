let pack l = 
  let rec pack_inner l sl = 
    match l with 
    | a :: (b :: _ as tl) -> 
      if a = b then pack_inner tl (a :: sl)
      else (a :: sl) :: pack_inner tl [] 
    | [x] -> [x ::sl]
    | [] -> []
  in 
  pack_inner l [] 


(* Tail-recursive solution *)
let pack l = 
  let rec pack_inner s curr acc = 
    match s with 
    | []  -> []
    | [x] -> (x :: curr) :: acc
    | a :: (b :: _ as tl) -> 
      if a = b then pack_inner tl (a :: curr) acc
      else pack_inner tl [] ((a :: curr) :: acc)
  in 
  List.rev ( pack_inner l [] [])