diet_recommendation(hypertension, 'Low sodium diet, rich in fruits and vegetables.').
diet_recommendation(diabetes, 'Balanced diet with controlled carbohydrate intake.').
diet_recommendation(cholesterol, 'Low cholesterol and saturated fat diet.').
diet_recommendation(celiac_disease, 'Gluten-free diet.').
diet_recommendation(vegetarian, 'Plant-based diet with adequate protein sources.').
diet_recommendation(vegan, 'No animal products; plant-based diet.').
diet_recommendation(weight_loss, 'Calorie deficit with balanced nutrition.').
diet_recommendation(weight_gain, 'Calorie surplus with a focus on protein intake.').
diet_recommendation(general_health, 'Balanced diet with a variety of nutrients.').
diet_recommendation(unknown_condition, 'Consult with a healthcare professional for personalized advice.').
 
get_diet_recommendation(Disease, Recommendation) :-
    diet_recommendation(Disease, Recommendation), !.

get_diet_recommendation(_, 'No specific recommendation found. Consult with a healthcare professional.').