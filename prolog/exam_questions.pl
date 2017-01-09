/* January 2016, Autumn 2015 */
noah([],[],[]).
noah([H1|T1],[H2|T2],[H1,H2|T3]) :- noah(T1, T2, T3).

/* Autumn 2016 */
tr([], []).
tr([[]|_], []).
tr(M, [Hs|M1]) :- maplist(head, M, Hs), maplist(tail, M, Ts),
    tr(Ts, M1).

/* January 2015 */
doublemember(_,[]).
doublemember(X, [H|T]) :-  testfunction(X,[H|T],0).
 
testFunction(_,[],_).
testfunction(_,[],Z) :- (Z>=2). 
testfunction(X,[H|T],Z) :- 
	(X = H) -> 
		(Q=Z+1), testfunction(X,T,Q)
	; 
	testfunction(X,T,Z).


/* January 2014
	noahDouble([1,2,3,4],[[1,2],[3,4]]).
*/
noahDouble([],[]).
noahDouble([H1, H2 | T], [[H1, H2]| T2]) :-
	noahDouble(T, T2).
