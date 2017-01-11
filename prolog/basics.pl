/* loves is the predicate */
loves(romeo, juliet).
loves(juliet, romeo) :- loves(romeo, juliet).

/* facts */
male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).

female(alice).
female(betsy).
female(diana).

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).
parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).
parent(bob, carl).
parent(bob, charlie).

/* rules */
happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).
near_water(bob).
near_water(bill).

runs(albert) :- happy(albert).
dances(alice) :- happy(alice), with_albert(alice).

does_alice_dance :- dances(alice),
	write('When Alice is happy and with Albert, she dances').

swims(bob) :- happy(bob), near_water(bob).
swims(bill) :- happy(bill).
swims(bill) :- near_water(bill).

get_grandchild :- parent(albert, X), 
				parent(X, Y), 
				write('Albert\'s Grandchild: '), 
				write(Y), nl.

get_grandparent :- parent(X, carl), 
				parent(X, charlie), 
				format('~w ~s grandparent ~n', [X, "is the"]).

brother(bob, bill).

grandparent(X, Y) :- parent(Z, X), parent(Y, Z).

blushes(X) :- human(X).
human(cieran).

/* 	Tybalt stabs Mercutio with a sword.
	Romeo hates X, if X stabs Mercutio with a sword. */
stabs(tybalt, mercutio, sword).
hates(romeo, X) :- stabs(X, mercutio, sword).

/* anonymous variable */
what_grade(5) :-
	write('Go to Kindergarten').
what_grade(6) :-
	write('Go to First Grade').
what_grade(Other) :-
	Grade is Other - 5,
	format('Go to grade ~w', [Grade]).

/* structures */
has(albert, olive). /* but what is olive? */
owns(albert, pet(cat, olive)).

customer(tom, smith, 20.55).
customer(sally, smith, 120.55).

getBalance(FName, LName) :- 
	customer(FName, LName, Bal), 
	write(FName), tab(1), 
		format('~w owes us $~2f ~n', [LName, Bal]).

vertical(line(point(X, Y), point(X, Y2))).
horizontal(line(point(X, Y), point(X2, Y))).

/* practicing trace/debugging */
warm_blooded(penguin).
warm_blooded(human).
produce_milk(penguin).
produce_milk(human).
have_feathers(penguin).
have_hair(human).

mammal(X) :- 
	warm_blooded(X), 
	produce_milk(X), 
	have_hair(X).

/* recursion */
related(X, Y) :-
	parent(X, Y). 

related(X, Y) :-
	parent(X, Z),
	related(Z, Y).

/* math functions */
double_digit(X, Y) :-
	Y is X*2.

isEven(X) :- Y is X//2, X=:=2*Y.
my_isEven(X) :- 0 is mod(X, 2).
my_isOdd(X) :- 1 is mod(X, 2).

/* looping with recursion */

count_to_10(10) :- write(10), nl.
count_to_10(X) :- write(X), nl, Y is X+1, count_to_10(Y).

decrementByOne(Low, High) :-
	between(Low, High, Y),
	Z is High - Y,
	write(Z), nl.

incrementByOne(Low, High) :-
	between(Low, High, Y),
	Z is Low + Y,
	write(Z), nl.

guess_num :- loop(start).
loop(15) :- write('you got it fam!').
loop(X) :- 
	X \= 15,
	write('guess a number: '),
	read(Guess),
	write(Guess),
	write(' is not the number'), nl,
	loop(Guess).

/* changing the database */
/*
:- dynamic(father/2).
:- dynamic(likes/2).
:- dynamic(friend/2).
:- dynamic(stabs/3).

father(lord_montague, romeo).
father(lord_capulet, juliet).

likes(mercutio, dancing).
likes(benvolio, dancing).
likes(romeo, dancing).
likes(romeo, juliet).
likes(juliet, romeo).
likes(juliet, dancing).

friend(romeo, mercutio).
friend(romeo, benvolio).

stabs(tybalt, mercutio, sword).
stabs(romeo, tybalt, sword).
*/

/* lists */
write_list([]).
write_list([Head|Tail]) :-
	write(Head), nl,
	write_list(Tail).

/* strings */
join_str(Str1, Str2, Str3) :-
	name(Str1, StrList1),
	name(Str2, StrList2),
	append(StrList1, StrList2, StrList3),
	name(Str3, StrList3).


palindrome(L) :-
	reverse(L, L).



