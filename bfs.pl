edge(a, b).
edge(a, c).
edge(b, d).
edge(c, e).
edge(c, f).
edge(d, g).
edge(e, h).
 
bfs(Start, Goal) :-
    bfs([Start], [], Goal).

 
bfs([Goal | _], _, Goal) :-
    write('Goal reached: '), write(Goal), nl.

 
bfs([Current | Rest], Visited, Goal) :-
    findall(Next,
            (edge(Current, Next), \+ member(Next, Visited)),
            Neighbors),
    append(Rest, Neighbors, Queue),
    write('Visiting: '), write(Current), nl,
    bfs(Queue, [Current | Visited], Goal).