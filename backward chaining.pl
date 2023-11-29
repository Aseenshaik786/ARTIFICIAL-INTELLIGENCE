has_fever(john).
has_cough(john).
has_runny_nose(john).

 
flu(X) :- has_fever(X), has_cough(X).
cold(X) :- has_runny_nose(X), has_cough(X).
allergy(X) :- \+flu(X), \+cold(X).
 
diagnose(X, flu) :- has_fever(X), has_cough(X), write(X), write(' has the flu.'), nl.
diagnose(X, cold) :- has_runny_nose(X), has_cough(X), write(X), write(' has a cold.'), nl.
diagnose(X, allergy) :- \+flu(X), \+cold(X), write(X), write(' has an allergy.'), nl.