/* Chris Vejsada */
/* PL3 */

/* Facts */
vegetable(carrot)		
vegetable(broccoli)
fruit(orange)
fruit(banana)
isOrange(orange)
isOrange(orange)
isOrange(car)

/* Rules */

Food(X, Y) :- hasSeeds(X), noSeeds(Y)
hasSeeds(X) :- fruit(X)
noSeeds(Y) :- vegetable(Y)

/* Goal */
?- food(X, Y), isOrange(X).

