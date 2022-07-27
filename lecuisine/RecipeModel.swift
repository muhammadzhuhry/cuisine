//
//  RecipeModel.swift
//  lecuisine
//
//  Created by Muhammad Zhuhry on 24/07/22.
//

import Foundation

struct RecipeModel: Identifiable {
    let id: Int
    let name: String
    let image: String
    let ingridient: [IngridientModel]
    let steps: [String]
    let timers: [Int]
}

struct IngridientModel: Hashable {
    let quantity: String
    let name: String
}

let RecipeData = [
    RecipeModel(
        id: 1,
        name: "Crock Pot Roast",
        image: "food-1",
        ingridient: [
            IngridientModel(
                quantity: "1", name: "Beef roast"
            ),
            IngridientModel(
                quantity: "1 pkg", name: "Brown gravy mix"
            ),
            IngridientModel(
                quantity: "1 pkg", name: "Dried Italian salad dressing mix"
            ),
            IngridientModel(
                quantity: "1 pkg", name: "Dry ranch dressing mix"
            ),
            IngridientModel(
                quantity: "1/2 cup", name: "Water"
            )
        ],
        steps: [
            "Place beef roast in crock pot.",
            "Mix the dried mixes together in a bowl and sprinkle over the roast.",
            "Pour the water around the roast.",
            "Cook on low for 7-9 hours."
        ],
        timers: [
            0,
            0,
            0,
            420
        ]
    ),
    RecipeModel(
        id: 2,
        name: "Roasted Asparagus",
        image: "food-3",
        ingridient: [
            IngridientModel(
                quantity: "1 lb", name: "Asparagus"
            ),
            IngridientModel(
                quantity: "1 1/2 tbsp", name: "Olive oil"
            ),
            IngridientModel(
                quantity: "1/2 tsp", name: "Kosher Salt"
            )
        ],
        steps: [
            "Preheat oven to 425°F.",
            "Cut off the woody bottom part of the asparagus spears and discard.",
            "With a vegetable peeler, peel off the skin on the bottom 2-3 inches of the spears (this keeps the asparagus from being all.\",string.\", and if you eat asparagus you know what I mean by that).",
            "Place asparagus on foil-lined baking sheet and drizzle with olive oil.",
            "Sprinkle with salt.",
            "With your hands, roll the asparagus around until they are evenly coated with oil and salt.",
            "Roast for 10-15 minutes, depending on the thickness of your stalks and how tender you like them.",
            "They should be tender when pierced with the tip of a knife.",
            "The tips of the spears will get very brown but watch them to prevent burning.",
            "They are great plain, but sometimes I serve them with a light vinaigrette if we need something acidic to balance out our meal."
        ],
        timers: [
            0,
            0,
            0,
            0,
            0,
            0,
            10,
            0,
            0,
            0
        ]
    ),
    RecipeModel(
        id: 3,
        name: "Curried Lentils and Rice",
        image: "food-2",
        ingridient: [
            IngridientModel(
                quantity: "1 quart", name: "Beef broth"
            ),
            IngridientModel(
                quantity: "1 cup", name: "Dried green lentils"
            ),
            IngridientModel(
                quantity: "1/2 cup", name: "Basmati rice"
            ),
            IngridientModel(
                quantity: "1 tsp", name: "Curry Powder"
            ),
            IngridientModel(
                quantity: "1 tsp", name: "Salt"
            )
        ],
        steps: [
            "Bring broth to a low boil.",
            "Add curry powder and salt.",
            "Cook lentils for 20 minutes.",
            "Add rice and simmer for 20 minutes.",
            "Enjoy!"
        ],
        timers: [
            0,
            0,
            20,
            20,
            0
        ]
    ),
    RecipeModel(
        id: 4,
        name: "Big Night Pizza",
        image: "food-4",
        ingridient: [
            IngridientModel(
                quantity: "5 tsp", name: "Yeast"
            ),
            IngridientModel(
                quantity: "5 cup", name: "Flour"
            ),
            IngridientModel(
                quantity: "4 tsp", name: "Vegetable oil"
            ),
            IngridientModel(
                quantity: "2 tsp", name: "Sugar"
            ),
            IngridientModel(
                quantity: "2 tsp", name: "Salt"
            ),
            IngridientModel(
                quantity: "2 cup", name: "Hot water"
            ),
            IngridientModel(
                quantity: "1/4 cup", name: "Pizza sauce"
            ),
            IngridientModel(
                quantity: "3/4 cup", name: "Mozzarella cheese"
            )
        ],
        steps: [
            "Add hot water to yeast in a large bowl and let sit for 15 minutes.",
            "Mix in oil, sugar, salt, and flour and let sit for 1 hour.",
            "Knead the dough and spread onto a pan.",
            "Spread pizza sauce and sprinkle cheese.",
            "Add any optional toppings as you wish.",
            "Bake at 400 deg Fahrenheit for 15 minutes.",
            "Enjoy!"
        ],
        timers: [
            15,
            60,
            0,
            0,
            0,
            15,
            0
        ]
    )
]
