#Plan seed
day = Plan.create(name: "Today", duration: 1)

#Day seed
day_plan = Day.create(
    plan_id: 1, 
    name: "Todays", 
    target_calories: 2000,
    total_calories: 1350
    )

#Meal seed
breakfast = Meal.create(
    day_id: 1,
    name: "British Omelette",
    dish: "Breakfast",
    dish_type: "Hot Breakfast",
    origin: "Ancient Iran",
    cuisine: "Breakfast",
    diet: "Dairy",
    description: "Beaten Eggs, wrapped around fillings",
    image: "",
    cooking_instructions: "Beat eggs and fry for 2mins, flip mixture when slides in the pan, fill with your choice of fillings and fold.",
    calories: 300
)

lunch = Meal.create(
    day_id: 1,
    name: "Bacon Butty",
    dish: "Lunch",
    dish_type: "Hot Sandwhich",
    origin: "United Kingdon",
    cuisine: "Sandwhich",
    diet: "Meat",
    description: "Crispy Fried Bacon between two slices of bread.",
    image: "",
    cooking_instructions: "Fry Bacon until crispy and insert into your favourite bread.",
    calories: 400
)

dinner = Meal.create(
    day_id: 1,
    name: "Fish and Chips",
    dish: "Dinner",
    dish_type: "Hot Dinner",
    origin: "United Kingdom",
    cuisine: "Fish",
    diet: "Seafood",
    description: "Deep Fried Fish Fillet, Served With Chips and Mushy Peas.",
    image: "",
    cooking_instructions: "Beat eggs and add milk and flour, dip your fish fillets into your mixture and fry at a high temp.",
    calories: 450

#Ingredient seed

egg = Ingredient.create(
    name: "Eggs",
    description: "Fresh Whole Range Chicken Eggs.",
    calories: 155
)

cheese = Ingredient.create(
    name: "Cheddar Cheese",
    description: "Mature Cheddar Cheese",
    calories: 402
)

bacon = Ingredient.create(
    name: "Unsmoked Bacon",
    description: "Unsmoked Back Bacon",
    calories: 150
)

bread = Ingredient.create(
    name: "Tiger Bread",
    description: "Fresh Tiger Bread",
    calories: 252
)

lettuce = Ingredient.create(
    name: "Lettuce",
    description: "Fresh Lettuce",
    calories: 8
)

tomato = Ingredient.create(
    name: "Fresh Tomato",
    description: "Fresh Tomato",
    calories: 18
)

butter = Ingredient.create(
    name: "Butter",
    description: "Butter",
    calories: 717
)

cod = Ingredient.create(
    name: "Fresh Cod Fillet",
    description: "Fresh Fillet of Cod Fish",
    calories: 82
)

flour = Ingredient.create(
    name: "Flour",
    description: "Flour",
    calories: 82
)

milk = Ingredient.create(
    name: "Semi-Skimmed Milk",
    description: "Fresh Semi-Skimmed Milk",
    calories: 47
)

potato = Ingredient.create(
    name: "Fresh Garden Potatoes",
    description: "Full Potatoes",
    calories: 77
)

#Recipe seed

breakfast_eggs = Recipe.create(
    meal_id: 1,
    ingredient_id: 1,
    ingredient_quantity: 2
)

lunch_bacon = Recipe.create(
    meal_id: 2,
    ingredient_id: 3,
    ingredient_quantity: 3
)

lunch_bread = Recipe.create(
    meal_id: 2,
    ingredient_id: 4,
    ingredient_quantity: 2
)

lunch_lettuce = Recipe.create(
    meal_id: 2,
    ingredient_id: 5,
    ingredient_quantity: 1
)

lunch_tomato = Recipe.create(
    meal_id: 2,
    ingredient_id: 6,
    ingredient_quantity: 1
)

dinner_fish = Recipe.create(
    meal_id: 3,
    ingredient_id: 8,
    ingredient_quantity: 1
)

dinner_chips = Recipe.create(
    meal_id: 3,
    ingredient_id: 11,
    ingredient_quantity: 3
)