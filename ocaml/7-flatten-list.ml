type 'a node =
  | One of 'a 
  | Many of 'a node list 

let rec flatten (l: 'a node list) = 
  let rec flatten_inner acc s = 
    match s with 
    | [] -> acc 
    | One x :: t -> flatten_inner (x :: acc) t 
    | Many l :: t -> flatten_inner (flatten_inner acc l) t 
  in List. rev (flatten_inner [] l)



let test_val = [ 
  Many [ 
    Many [ One "c" ; One "d" ] ;
    One "b" ;
    One "e" 
  ] 
];;