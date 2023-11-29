symptom(fever, flu).
symptom(cough, flu).
symptom(sore_throat, flu).
symptom(rash, allergy).
symptom(runny_nose, cold).
symptom(headache, cold).
symptom(fatigue, cold).
 
diagnose_disease(Symptoms, Disease) :-
    findall(Disease, (member(Symptom, Symptoms), symptom(Symptom, Disease)), Diseases),
    list_to_set(Diseases, UniqueDiseases),
    length(UniqueDiseases, NumDiseases),
    NumDiseases == 1,
    member(Disease, UniqueDiseases).