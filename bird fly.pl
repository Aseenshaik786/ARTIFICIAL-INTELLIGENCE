can_fly(sparrow).
can_fly(eagle).
can_fly(albatross).

cannot_fly(penguin).
cannot_fly(ostrich).

 
fly_ability(Bird) :-
    can_fly(Bird),
    write(Bird), write(' can fly.'), nl.

fly_ability(Bird) :-
    cannot_fly(Bird),
    write(Bird), write(' cannot fly.'), nl.
