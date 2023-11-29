dob(john, '1990-05-15').
dob(susan, '1985-10-22').
dob(mike, '1978-03-08').
dob(lisa, '1995-12-03').

get_dob(Name, DOB) :-
    dob(Name, DOB).
 born_in_year(Year, Names) :-
    findall(Name, (dob(Name, DOB), sub_atom(DOB, 0, 4, _, Year)), Names).