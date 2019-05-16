# Pattern matching list 

When looking at multiple elements of a list, you can return any part of the list like so:

```ocaml 
 let rec f (l: 'a list) = 
  match l with 
  | a::(b::c as t) -> f t 
```