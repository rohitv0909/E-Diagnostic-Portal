candidate( may, 15 ). 
candidate( may, 16 ). 
candidate( may, 19 ). 
candidate( june, 17 ). 
candidate( june, 18 ). 
candidate( july, 14 ). 
candidate( july, 16 ). 
candidate( august, 14 ). 
candidate( august, 15). 
candidate( august, 17 ). 

month( Month ) :- 
        member( Month, [may,june,july,august] ). 

day( Day ) :- 
        between( 15, 19, Day ). 



albert1( Month ) :- 
        month( Month ), 
        forall( 
                candidate(Month, Day), 
                \+ unique_solution( candidate(_Month1, Day) ) 
                ). 



bernard( Day ) :- 
        day( Day ), 
        unique_solution(  
                candidate(Month, Day), 
                albert1(Month) 
                ) . 



albert2( Month, Day ) :- 
        albert1( Month ), 
        unique_solution( (candidate(Month, Day), 
                bernard(Day) ) ). 


solution( Month, Day ) :- 
        unique_solution( albert2(Month, Day) ). 
