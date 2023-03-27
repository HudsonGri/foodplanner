BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "users" (
	"id"	integer,
	"name"	TEXT,
	"email"	TEXT,
	"skill_level"	INTEGER,
	"cuisine_choices"	TEXT,
	"recipes"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "users" VALUES (1,'Michael T','michael.t@gmail.com',2,'mexican','{
   "Easy Shrimp Scampi":{
      "vegetarian":false,
      "vegan":false,
      "glutenFree":true,
      "dairyFree":false,
      "veryHealthy":false,
      "cheap":false,
      "veryPopular":false,
      "sustainable":false,
      "lowFodmap":false,
      "weightWatcherSmartPoints":7,
      "gaps":"no",
      "preparationMinutes":-1,
      "cookingMinutes":-1,
      "aggregateLikes":27,
      "healthScore":2,
      "creditsText":"Foodista.com – The Cooking Encyclopedia Everyone Can Edit",
      "license":"CC BY 3.0",
      "sourceName":"Foodista",
      "pricePerServing":306.85,
      "extendedIngredients":[
         {
            "id":1001,
            "aisle":"Milk, Eggs, Other Dairy",
            "image":"butter-sliced.jpg",
            "consistency":"SOLID",
            "name":"butter",
            "nameClean":"butter",
            "original":"4 tablespoons butter",
            "originalName":"butter",
            "amount":4.0,
            "unit":"tablespoons",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               }
            }
         },
         {
            "id":10511297,
            "aisle":"Produce",
            "image":"parsley.jpg",
            "consistency":"SOLID",
            "name":"parsley",
            "nameClean":"fresh parsley",
            "original":"2 tablespoons fresh parsley",
            "originalName":"fresh parsley",
            "amount":2.0,
            "unit":"tablespoons",
            "meta":[
               "fresh"
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               }
            }
         },
         {
            "id":11215,
            "aisle":"Produce",
            "image":"garlic.png",
            "consistency":"SOLID",
            "name":"garlic",
            "nameClean":"garlic",
            "original":"6 cloves garlic, minced",
            "originalName":"garlic, minced",
            "amount":6.0,
            "unit":"cloves",
            "meta":[
               "minced"
            ],
            "measures":{
               "us":{
                  "amount":6.0,
                  "unitShort":"cloves",
                  "unitLong":"cloves"
               },
               "metric":{
                  "amount":6.0,
                  "unitShort":"cloves",
                  "unitLong":"cloves"
               }
            }
         },
         {
            "id":9152,
            "aisle":"Produce",
            "image":"lemon-juice.jpg",
            "consistency":"LIQUID",
            "name":"lemon juice",
            "nameClean":"lemon juice",
            "original":"2 tablespoons lemon juice",
            "originalName":"lemon juice",
            "amount":2.0,
            "unit":"tablespoons",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               }
            }
         },
         {
            "id":4053,
            "aisle":"Oil, Vinegar, Salad Dressing",
            "image":"olive-oil.jpg",
            "consistency":"LIQUID",
            "name":"olive oil",
            "nameClean":"olive oil",
            "original":"1 tablespoon olive oil",
            "originalName":"olive oil",
            "amount":1.0,
            "unit":"tablespoon",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"Tbsp",
                  "unitLong":"Tbsp"
               },
               "metric":{
                  "amount":1.0,
                  "unitShort":"Tbsp",
                  "unitLong":"Tbsp"
               }
            }
         },
         {
            "id":1002030,
            "aisle":"Spices and Seasonings",
            "image":"pepper.jpg",
            "consistency":"SOLID",
            "name":"pepper",
            "nameClean":"black pepper",
            "original":"1/4 teaspoon pepper",
            "originalName":"pepper",
            "amount":0.25,
            "unit":"teaspoon",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.25,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               },
               "metric":{
                  "amount":0.25,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               }
            }
         },
         {
            "id":2047,
            "aisle":"Spices and Seasonings",
            "image":"salt.jpg",
            "consistency":"SOLID",
            "name":"salt",
            "nameClean":"table salt",
            "original":"1/2 teaspoon salt",
            "originalName":"salt",
            "amount":0.5,
            "unit":"teaspoon",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.5,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               },
               "metric":{
                  "amount":0.5,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               }
            }
         },
         {
            "id":15270,
            "aisle":"Seafood",
            "image":"shrimp.png",
            "consistency":"SOLID",
            "name":"shrimp",
            "nameClean":"shrimp",
            "original":"1 pound shrimp, shelled",
            "originalName":"shrimp, shelled",
            "amount":1.0,
            "unit":"pound",
            "meta":[
               "shelled"
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"lb",
                  "unitLong":"pound"
               },
               "metric":{
                  "amount":453.592,
                  "unitShort":"g",
                  "unitLong":"grams"
               }
            }
         },
         {
            "id":14106,
            "aisle":"Alcoholic Beverages",
            "image":"white-wine.jpg",
            "consistency":"LIQUID",
            "name":"white wine",
            "nameClean":"dry white wine",
            "original":"1/2 cup white wine",
            "originalName":"white wine",
            "amount":0.5,
            "unit":"cup",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.5,
                  "unitShort":"cups",
                  "unitLong":"cups"
               },
               "metric":{
                  "amount":118.294,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         }
      ],
      "id":642096,
      "title":"Easy Shrimp Scampi",
      "readyInMinutes":45,
      "servings":4,
      "sourceUrl":"http://www.foodista.com/recipe/PVM55SR7/shrimp-scampi",
      "image":"https://spoonacular.com/recipeImages/642096-556x370.jpg",
      "imageType":"jpg",
      "summary":"Easy Shrimp Scampi is a Mediterranean main course. This recipe serves 4 and costs $3.07 per serving. One portion of this dish contains roughly <b>23g of protein</b>, <b>15g of fat</b>, and a total of <b>262 calories</b>. This recipe from Foodista has 27 fans. If you have butter, salt, olive oil, and a few other ingredients on hand, you can make it. It is a good option if you\\''re following a <b>gluten free, primal, and pescatarian</b> diet. From preparation to the plate, this recipe takes around <b>45 minutes</b>. Taking all factors into account, this recipe <b>earns a spoonacular score of 45%</b>, which is pretty good. Similar recipes are <a href=\"https://spoonacular.com/recipes/easy-shrimp-scampi-443814\">Easy Shrimp Scampi</a>, <a href=\"https://spoonacular.com/recipes/easy-shrimp-scampi-894437\">Easy Shrimp Scampi</a>, and <a href=\"https://spoonacular.com/recipes/easy-shrimp-scampi-1258445\">Easy Shrimp Scampi</a>.",
      "cuisines":[
         "Mediterranean",
         "Italian",
         "European"
      ],
      "dishTypes":[
         "lunch",
         "main course",
         "main dish",
         "dinner"
      ],
      "diets":[
         "gluten free",
         "primal",
         "pescatarian"
      ],
      "occasions":[
         
      ],
      "instructions":"<ol><li>In a large skillet, melt butter and oil. Add garlic and saute 30 seconds.</li><li>Stir in wine and lemon juice and cook 1 minute.</li><li>Stir in shrimp, parsley, salt and pepper. Cook 2-3 minutes over high heat, stir constantly.</li><li>Serve with pasta or rice.</li></ol>",
      "analyzedInstructions":[
         {
            "name":"",
            "steps":[
               {
                  "number":1,
                  "step":"In a large skillet, melt butter and oil.",
                  "ingredients":[
                     {
                        "id":1001,
                        "name":"butter",
                        "localizedName":"butter",
                        "image":"butter-sliced.jpg"
                     },
                     {
                        "id":4582,
                        "name":"cooking oil",
                        "localizedName":"cooking oil",
                        "image":"vegetable-oil.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404645,
                        "name":"frying pan",
                        "localizedName":"frying pan",
                        "image":"pan.png"
                     }
                  ]
               },
               {
                  "number":2,
                  "step":"Add garlic and saute 30 seconds.Stir in wine and lemon juice and cook 1 minute.Stir in shrimp, parsley, salt and pepper. Cook 2-3 minutes over high heat, stir constantly.",
                  "ingredients":[
                     {
                        "id":1102047,
                        "name":"salt and pepper",
                        "localizedName":"salt and pepper",
                        "image":"salt-and-pepper.jpg"
                     },
                     {
                        "id":9152,
                        "name":"lemon juice",
                        "localizedName":"lemon juice",
                        "image":"lemon-juice.jpg"
                     },
                     {
                        "id":11297,
                        "name":"parsley",
                        "localizedName":"parsley",
                        "image":"parsley.jpg"
                     },
                     {
                        "id":11215,
                        "name":"garlic",
                        "localizedName":"garlic",
                        "image":"garlic.png"
                     },
                     {
                        "id":15270,
                        "name":"shrimp",
                        "localizedName":"shrimp",
                        "image":"shrimp.png"
                     },
                     {
                        "id":14084,
                        "name":"wine",
                        "localizedName":"wine",
                        "image":"red-wine.jpg"
                     }
                  ],
                  "equipment":[
                     
                  ],
                  "length":{
                     "number":4,
                     "unit":"minutes"
                  }
               },
               {
                  "number":3,
                  "step":"Serve with pasta or rice.",
                  "ingredients":[
                     {
                        "id":20420,
                        "name":"pasta",
                        "localizedName":"pasta",
                        "image":"fusilli.jpg"
                     },
                     {
                        "id":20444,
                        "name":"rice",
                        "localizedName":"rice",
                        "image":"uncooked-white-rice.png"
                     }
                  ],
                  "equipment":[
                     
                  ]
               }
            ]
         }
      ],
      "originalId":"None",
      "spoonacularSourceUrl":"https://spoonacular.com/easy-shrimp-scampi-642096"
   },
   "Butternut Squash Gnocchi With Whiskey Cream Sauce":{
      "vegetarian":false,
      "vegan":false,
      "glutenFree":false,
      "dairyFree":false,
      "veryHealthy":false,
      "cheap":false,
      "veryPopular":false,
      "sustainable":false,
      "lowFodmap":false,
      "weightWatcherSmartPoints":16,
      "gaps":"no",
      "preparationMinutes":-1,
      "cookingMinutes":-1,
      "aggregateLikes":72,
      "healthScore":13,
      "creditsText":"Foodista.com – The Cooking Encyclopedia Everyone Can Edit",
      "license":"CC BY 3.0",
      "sourceName":"Foodista",
      "pricePerServing":402.9,
      "extendedIngredients":[
         {
            "id":11485,
            "aisle":"Produce",
            "image":"butternut-squash.jpg",
            "consistency":"SOLID",
            "name":"butternut squash",
            "nameClean":"butternut squash",
            "original":"1 small butternut squash, about 1 lb.",
            "originalName":"butternut squash, about 1 lb",
            "amount":1.0,
            "unit":"small",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"small",
                  "unitLong":"small"
               },
               "metric":{
                  "amount":1.0,
                  "unitShort":"small",
                  "unitLong":"small"
               }
            }
         },
         {
            "id":1033,
            "aisle":"Cheese",
            "image":"parmesan.jpg",
            "consistency":"SOLID",
            "name":"parmesan cheese",
            "nameClean":"parmesan",
            "original":"½ cup Parmesan cheese",
            "originalName":"Parmesan cheese",
            "amount":0.5,
            "unit":"cup",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.5,
                  "unitShort":"cups",
                  "unitLong":"cups"
               },
               "metric":{
                  "amount":118.294,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         },
         {
            "id":2010,
            "aisle":"Spices and Seasonings",
            "image":"cinnamon.jpg",
            "consistency":"SOLID",
            "name":"nutmeg",
            "nameClean":"cinnamon",
            "original":"¾ tsp. nutmeg, cinnamon, or ginger",
            "originalName":"nutmeg, cinnamon, or ginger",
            "amount":0.75,
            "unit":"tsp",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.75,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               },
               "metric":{
                  "amount":0.75,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               }
            }
         },
         {
            "id":2047,
            "aisle":"Spices and Seasonings",
            "image":"salt.jpg",
            "consistency":"SOLID",
            "name":"salt",
            "nameClean":"table salt",
            "original":"1 tsp. salt",
            "originalName":"salt",
            "amount":1.0,
            "unit":"tsp",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"tsp",
                  "unitLong":"teaspoon"
               },
               "metric":{
                  "amount":1.0,
                  "unitShort":"tsp",
                  "unitLong":"teaspoon"
               }
            }
         },
         {
            "id":10211821,
            "aisle":"Produce",
            "image":"bell-pepper-orange.png",
            "consistency":"SOLID",
            "name":"bell pepper",
            "nameClean":"bell pepper",
            "original":"Pepper to taste",
            "originalName":"Pepper to taste",
            "amount":4.0,
            "unit":"servings",
            "meta":[
               "to taste"
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               }
            }
         },
         {
            "id":1123,
            "aisle":"Milk, Eggs, Other Dairy",
            "image":"egg.png",
            "consistency":"SOLID",
            "name":"eggs",
            "nameClean":"egg",
            "original":"2 eggs",
            "originalName":"eggs",
            "amount":2.0,
            "unit":"",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"",
                  "unitLong":""
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"",
                  "unitLong":""
               }
            }
         },
         {
            "id":1001,
            "aisle":"Milk, Eggs, Other Dairy",
            "image":"butter-sliced.jpg",
            "consistency":"SOLID",
            "name":"butter",
            "nameClean":"butter",
            "original":"3 Tb. butter",
            "originalName":"butter",
            "amount":3.0,
            "unit":"Tb",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":3.0,
                  "unitShort":"Tb",
                  "unitLong":"Tbs"
               },
               "metric":{
                  "amount":3.0,
                  "unitShort":"Tb",
                  "unitLong":"Tbs"
               }
            }
         },
         {
            "id":20081,
            "aisle":"Baking",
            "image":"flour.png",
            "consistency":"SOLID",
            "name":"flour",
            "nameClean":"wheat flour",
            "original":"2 Tb. flour",
            "originalName":"flour",
            "amount":2.0,
            "unit":"Tb",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"Tb",
                  "unitLong":"Tbs"
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"Tb",
                  "unitLong":"Tbs"
               }
            }
         },
         {
            "id":11677,
            "aisle":"Produce",
            "image":"shallots.jpg",
            "consistency":"SOLID",
            "name":"shallots",
            "nameClean":"shallot",
            "original":"2 shallots, finely diced",
            "originalName":"shallots, finely diced",
            "amount":2.0,
            "unit":"",
            "meta":[
               "diced",
               "finely"
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"",
                  "unitLong":""
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"",
                  "unitLong":""
               }
            }
         },
         {
            "id":11215,
            "aisle":"Produce",
            "image":"garlic.png",
            "consistency":"SOLID",
            "name":"garlic",
            "nameClean":"garlic",
            "original":"4 cloves garlic, minced",
            "originalName":"garlic, minced",
            "amount":4.0,
            "unit":"cloves",
            "meta":[
               "minced"
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"cloves",
                  "unitLong":"cloves"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"cloves",
                  "unitLong":"cloves"
               }
            }
         },
         {
            "id":6172,
            "aisle":"Canned and Jarred",
            "image":"chicken-broth.png",
            "consistency":"LIQUID",
            "name":"chicken stock",
            "nameClean":"chicken stock",
            "original":"2 cups chicken stock",
            "originalName":"chicken stock",
            "amount":2.0,
            "unit":"cups",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"cups",
                  "unitLong":"cups"
               },
               "metric":{
                  "amount":473.176,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         },
         {
            "id":10014037,
            "aisle":"Alcoholic Beverages",
            "image":"bourbon.png",
            "consistency":"LIQUID",
            "name":"bourbon",
            "nameClean":"bourbon",
            "original":"1 cup bourbon",
            "originalName":"bourbon",
            "amount":1.0,
            "unit":"cup",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"cup",
                  "unitLong":"cup"
               },
               "metric":{
                  "amount":236.588,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         },
         {
            "id":1053,
            "aisle":"Milk, Eggs, Other Dairy",
            "image":"fluid-cream.jpg",
            "consistency":"LIQUID",
            "name":"heavy cream",
            "nameClean":"cream",
            "original":"1/3 cup heavy cream",
            "originalName":"heavy cream",
            "amount":0.33333334,
            "unit":"cup",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.333,
                  "unitShort":"cups",
                  "unitLong":"cups"
               },
               "metric":{
                  "amount":78.863,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         },
         {
            "id":1102047,
            "aisle":"Spices and Seasonings",
            "image":"salt-and-pepper.jpg",
            "consistency":"SOLID",
            "name":"salt and pepper",
            "nameClean":"salt and pepper",
            "original":"Salt and pepper",
            "originalName":"Salt and pepper",
            "amount":4.0,
            "unit":"servings",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               }
            }
         },
         {
            "id":1012049,
            "aisle":"Produce",
            "image":"thyme.jpg",
            "consistency":"SOLID",
            "name":"thyme leaves",
            "nameClean":"fresh thyme",
            "original":"Fresh thyme leaves for garnish",
            "originalName":"Fresh thyme leaves for garnish",
            "amount":4.0,
            "unit":"servings",
            "meta":[
               "fresh",
               "for garnish"
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               }
            }
         }
      ],
      "id":636599,
      "title":"Butternut Squash Gnocchi With Whiskey Cream Sauce",
      "readyInMinutes":45,
      "servings":4,
      "sourceUrl":"https://www.foodista.com/recipe/PVYSZMS6/butternut-squash-gnocchi-with-whiskey-cream-sauce",
      "image":"https://spoonacular.com/recipeImages/636599-556x370.jpg",
      "imageType":"jpg",
      "summary":"Butternut Squash Gnocchi With Whiskey Cream Sauce is a main course that serves 4. One serving contains <b>539 calories</b>, <b>14g of protein</b>, and <b>23g of fat</b>. For <b>$4.03 per serving</b>, this recipe <b>covers 27%</b> of your daily requirements of vitamins and minerals. This recipe from Foodista has 72 fans. From preparation to the plate, this recipe takes around <b>45 minutes</b>. If you have eggs, parmesan cheese, heavy cream, and a few other ingredients on hand, you can make it. A few people really liked this Mediterranean dish. All things considered, we decided this recipe <b>deserves a spoonacular score of 60%</b>. This score is pretty good. Users who liked this recipe also liked <a href=\"https://spoonacular.com/recipes/butternut-squash-gnocchi-with-whiskey-cream-sauce-77415\">Butternut Squash Gnocchi With Whiskey Cream Sauce</a>, <a href=\"https://spoonacular.com/recipes/butternut-squash-gnocchi-with-whiskey-cream-sauce-552216\">Butternut Squash Gnocchi with Whiskey Cream Sauce</a>, and <a href=\"https://spoonacular.com/recipes/butternut-squash-and-sage-cream-sauce-1202417\">Butternut Squash and Sage Cream Sauce</a>.",
      "cuisines":[
         "Mediterranean",
         "Italian",
         "European"
      ],
      "dishTypes":[
         "side dish",
         "lunch",
         "main course",
         "main dish",
         "dinner"
      ],
      "diets":[
         
      ],
      "occasions":[
         
      ],
      "instructions":"Preheat the oven to 450 degrees F. Cut the squach in half. Remove the seeds and lay on a oiled, rimmed baking sheets. Roast the squash until soft30-40 minutes.\nScoop the flesh of the squash out and place it in the food processor. Puree until completely smooth.\nMix the pureed squash with Parmesan cheese, nutmeg, salt, pepper and eggs. Then add the flour into the mixture and work together by hand. It will be very sticky.\nOnce smooth, flour a work surface and a large piece of parchment paper. Flour your hands and grab a handful of dough. Roll into a long strip, about  inch wide. Cut the strip into  pieces.\nThis is the tricky part~ Place each piece in the palm of your hand (or on the cutting board) and gently roll with a fork to create ridges. Place each piece on the floured parchment paper and repeat with the rest of the dough.\nBring a large pot of water to boil. Boil half the gnocchi, then remove and repeat. With each batch, boil until all the gnocchi floatsabout 5 minutes.\nMeanwhile, heat another large skillet over medium heat. Add the butter and flour, whisk until smooth.\nThen add the shallots and garlic. Saute for 3 minutes.\nThen add the bourbon and chicken stock.\nWhisk and raise heat. Bring the sauce to a boil. Allow the sauce to reduce down to a thin gravy-like consistency. Then lower the heat to medium-low and add the cream. Salt and pepper to tasteusually about 1 tsp. of salt.\nOnce the gnocchi are finished cooking, remove them with a skimmer and place them directly into the cream sauce. Stir to coat.\nServe the gnocchi warm and garnish with fresh thyme leaves! Serves 4.\nIf the cream sauce thickens too much, add a little water from the gnocchi pot to thin it out!",
      "analyzedInstructions":[
         {
            "name":"",
            "steps":[
               {
                  "number":1,
                  "step":"Preheat the oven to 450 degrees F.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     {
                        "id":404784,
                        "name":"oven",
                        "localizedName":"oven",
                        "image":"oven.jpg",
                        "temperature":{
                           "number":450.0,
                           "unit":"Fahrenheit"
                        }
                     }
                  ]
               },
               {
                  "number":2,
                  "step":"Cut the squach in half.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":3,
                  "step":"Remove the seeds and lay on a oiled, rimmed baking sheets. Roast the squash until soft30-40 minutes.",
                  "ingredients":[
                     {
                        "id":10011485,
                        "name":"squash",
                        "localizedName":"squash",
                        "image":"butternut-squash.jpg"
                     },
                     {
                        "id":93818,
                        "name":"seeds",
                        "localizedName":"seeds",
                        "image":"sunflower-seeds.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404727,
                        "name":"baking sheet",
                        "localizedName":"baking sheet",
                        "image":"baking-sheet.jpg"
                     }
                  ],
                  "length":{
                     "number":40,
                     "unit":"minutes"
                  }
               },
               {
                  "number":4,
                  "step":"Scoop the flesh of the squash out and place it in the food processor. Puree until completely smooth.",
                  "ingredients":[
                     {
                        "id":10011485,
                        "name":"squash",
                        "localizedName":"squash",
                        "image":"butternut-squash.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404771,
                        "name":"food processor",
                        "localizedName":"food processor",
                        "image":"food-processor.png"
                     }
                  ]
               },
               {
                  "number":5,
                  "step":"Mix the pureed squash with Parmesan cheese, nutmeg, salt, pepper and eggs. Then add the flour into the mixture and work together by hand. It will be very sticky.",
                  "ingredients":[
                     {
                        "id":1033,
                        "name":"parmesan",
                        "localizedName":"parmesan",
                        "image":"parmesan.jpg"
                     },
                     {
                        "id":2025,
                        "name":"nutmeg",
                        "localizedName":"nutmeg",
                        "image":"ground-nutmeg.jpg"
                     },
                     {
                        "id":1002030,
                        "name":"pepper",
                        "localizedName":"pepper",
                        "image":"pepper.jpg"
                     },
                     {
                        "id":10011485,
                        "name":"squash",
                        "localizedName":"squash",
                        "image":"butternut-squash.jpg"
                     },
                     {
                        "id":20081,
                        "name":"all purpose flour",
                        "localizedName":"all purpose flour",
                        "image":"flour.png"
                     },
                     {
                        "id":1123,
                        "name":"egg",
                        "localizedName":"egg",
                        "image":"egg.png"
                     },
                     {
                        "id":2047,
                        "name":"salt",
                        "localizedName":"salt",
                        "image":"salt.jpg"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":6,
                  "step":"Once smooth, flour a work surface and a large piece of parchment paper. Flour your hands and grab a handful of dough.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"dough",
                        "localizedName":"dough",
                        "image":"pizza-dough"
                     },
                     {
                        "id":20081,
                        "name":"all purpose flour",
                        "localizedName":"all purpose flour",
                        "image":"flour.png"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404770,
                        "name":"baking paper",
                        "localizedName":"baking paper",
                        "image":"baking-paper.jpg"
                     }
                  ]
               },
               {
                  "number":7,
                  "step":"Roll into a long strip, about  inch wide.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"roll",
                        "localizedName":"roll",
                        "image":"dinner-yeast-rolls.jpg"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":8,
                  "step":"Cut the strip into  pieces.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":9,
                  "step":"This is the tricky part~",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":10,
                  "step":"Place each piece in the palm of your hand (or on the cutting board) and gently roll with a fork to create ridges.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"roll",
                        "localizedName":"roll",
                        "image":"dinner-yeast-rolls.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404716,
                        "name":"cutting board",
                        "localizedName":"cutting board",
                        "image":"cutting-board.jpg"
                     }
                  ]
               },
               {
                  "number":11,
                  "step":"Place each piece on the floured parchment paper and repeat with the rest of the dough.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"dough",
                        "localizedName":"dough",
                        "image":"pizza-dough"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404770,
                        "name":"baking paper",
                        "localizedName":"baking paper",
                        "image":"baking-paper.jpg"
                     }
                  ]
               },
               {
                  "number":12,
                  "step":"Bring a large pot of water to boil. Boil half the gnocchi, then remove and repeat. With each batch, boil until all the gnocchi floatsabout 5 minutes.",
                  "ingredients":[
                     {
                        "id":98853,
                        "name":"gnocchi",
                        "localizedName":"gnocchi",
                        "image":"gnocchi-isolated.jpg"
                     },
                     {
                        "id":14412,
                        "name":"water",
                        "localizedName":"water",
                        "image":"water.png"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404752,
                        "name":"pot",
                        "localizedName":"pot",
                        "image":"stock-pot.jpg"
                     }
                  ],
                  "length":{
                     "number":5,
                     "unit":"minutes"
                  }
               },
               {
                  "number":13,
                  "step":"Meanwhile, heat another large skillet over medium heat.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     {
                        "id":404645,
                        "name":"frying pan",
                        "localizedName":"frying pan",
                        "image":"pan.png"
                     }
                  ]
               },
               {
                  "number":14,
                  "step":"Add the butter and flour, whisk until smooth.",
                  "ingredients":[
                     {
                        "id":1001,
                        "name":"butter",
                        "localizedName":"butter",
                        "image":"butter-sliced.jpg"
                     },
                     {
                        "id":20081,
                        "name":"all purpose flour",
                        "localizedName":"all purpose flour",
                        "image":"flour.png"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404661,
                        "name":"whisk",
                        "localizedName":"whisk",
                        "image":"whisk.png"
                     }
                  ]
               },
               {
                  "number":15,
                  "step":"Then add the shallots and garlic.",
                  "ingredients":[
                     {
                        "id":11677,
                        "name":"shallot",
                        "localizedName":"shallot",
                        "image":"shallots.jpg"
                     },
                     {
                        "id":11215,
                        "name":"garlic",
                        "localizedName":"garlic",
                        "image":"garlic.png"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":16,
                  "step":"Saute for 3 minutes.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ],
                  "length":{
                     "number":3,
                     "unit":"minutes"
                  }
               },
               {
                  "number":17,
                  "step":"Then add the bourbon and chicken stock.",
                  "ingredients":[
                     {
                        "id":6172,
                        "name":"chicken stock",
                        "localizedName":"chicken stock",
                        "image":"chicken-broth.png"
                     },
                     {
                        "id":10014037,
                        "name":"bourbon",
                        "localizedName":"bourbon",
                        "image":"bourbon.png"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":18,
                  "step":"Whisk and raise heat. Bring the sauce to a boil. Allow the sauce to reduce down to a thin gravy-like consistency. Then lower the heat to medium-low and add the cream. Salt and pepper to tasteusually about 1 tsp. of salt.",
                  "ingredients":[
                     {
                        "id":1102047,
                        "name":"salt and pepper",
                        "localizedName":"salt and pepper",
                        "image":"salt-and-pepper.jpg"
                     },
                     {
                        "id":1053,
                        "name":"cream",
                        "localizedName":"cream",
                        "image":"fluid-cream.jpg"
                     },
                     {
                        "id":6997,
                        "name":"gravy",
                        "localizedName":"gravy",
                        "image":"gravy.jpg"
                     },
                     {
                        "id":0,
                        "name":"sauce",
                        "localizedName":"sauce",
                        "image":""
                     },
                     {
                        "id":2047,
                        "name":"salt",
                        "localizedName":"salt",
                        "image":"salt.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404661,
                        "name":"whisk",
                        "localizedName":"whisk",
                        "image":"whisk.png"
                     }
                  ]
               },
               {
                  "number":19,
                  "step":"Once the gnocchi are finished cooking, remove them with a skimmer and place them directly into the cream sauce. Stir to coat.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"cream sauce",
                        "localizedName":"cream sauce",
                        "image":""
                     },
                     {
                        "id":98853,
                        "name":"gnocchi",
                        "localizedName":"gnocchi",
                        "image":"gnocchi-isolated.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":405894,
                        "name":"skimmer",
                        "localizedName":"skimmer",
                        "image":"skimmer-spoon.jpg"
                     }
                  ]
               },
               {
                  "number":20,
                  "step":"Serve the gnocchi warm and garnish with fresh thyme leaves!",
                  "ingredients":[
                     {
                        "id":1012049,
                        "name":"fresh thyme",
                        "localizedName":"fresh thyme",
                        "image":"thyme.jpg"
                     },
                     {
                        "id":98853,
                        "name":"gnocchi",
                        "localizedName":"gnocchi",
                        "image":"gnocchi-isolated.jpg"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":21,
                  "step":"Serves",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":22,
                  "step":"If the cream sauce thickens too much, add a little water from the gnocchi pot to thin it out!",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"cream sauce",
                        "localizedName":"cream sauce",
                        "image":""
                     },
                     {
                        "id":98853,
                        "name":"gnocchi",
                        "localizedName":"gnocchi",
                        "image":"gnocchi-isolated.jpg"
                     },
                     {
                        "id":14412,
                        "name":"water",
                        "localizedName":"water",
                        "image":"water.png"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404752,
                        "name":"pot",
                        "localizedName":"pot",
                        "image":"stock-pot.jpg"
                     }
                  ]
               }
            ]
         }
      ],
      "originalId":"None",
      "spoonacularSourceUrl":"https://spoonacular.com/butternut-squash-gnocchi-with-whiskey-cream-sauce-636599"
   }
}');
INSERT INTO "users" VALUES (2,'Hudson G','hudsongriffith@gmail.com',2,'italian','{
   "Easy Shrimp Scampi":{
      "vegetarian":false,
      "vegan":false,
      "glutenFree":true,
      "dairyFree":false,
      "veryHealthy":false,
      "cheap":false,
      "veryPopular":false,
      "sustainable":false,
      "lowFodmap":false,
      "weightWatcherSmartPoints":7,
      "gaps":"no",
      "preparationMinutes":-1,
      "cookingMinutes":-1,
      "aggregateLikes":27,
      "healthScore":2,
      "creditsText":"Foodista.com – The Cooking Encyclopedia Everyone Can Edit",
      "license":"CC BY 3.0",
      "sourceName":"Foodista",
      "pricePerServing":306.85,
      "extendedIngredients":[
         {
            "id":1001,
            "aisle":"Milk, Eggs, Other Dairy",
            "image":"butter-sliced.jpg",
            "consistency":"SOLID",
            "name":"butter",
            "nameClean":"butter",
            "original":"4 tablespoons butter",
            "originalName":"butter",
            "amount":4.0,
            "unit":"tablespoons",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               }
            }
         },
         {
            "id":10511297,
            "aisle":"Produce",
            "image":"parsley.jpg",
            "consistency":"SOLID",
            "name":"parsley",
            "nameClean":"fresh parsley",
            "original":"2 tablespoons fresh parsley",
            "originalName":"fresh parsley",
            "amount":2.0,
            "unit":"tablespoons",
            "meta":[
               "fresh"
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               }
            }
         },
         {
            "id":11215,
            "aisle":"Produce",
            "image":"garlic.png",
            "consistency":"SOLID",
            "name":"garlic",
            "nameClean":"garlic",
            "original":"6 cloves garlic, minced",
            "originalName":"garlic, minced",
            "amount":6.0,
            "unit":"cloves",
            "meta":[
               "minced"
            ],
            "measures":{
               "us":{
                  "amount":6.0,
                  "unitShort":"cloves",
                  "unitLong":"cloves"
               },
               "metric":{
                  "amount":6.0,
                  "unitShort":"cloves",
                  "unitLong":"cloves"
               }
            }
         },
         {
            "id":9152,
            "aisle":"Produce",
            "image":"lemon-juice.jpg",
            "consistency":"LIQUID",
            "name":"lemon juice",
            "nameClean":"lemon juice",
            "original":"2 tablespoons lemon juice",
            "originalName":"lemon juice",
            "amount":2.0,
            "unit":"tablespoons",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               }
            }
         },
         {
            "id":4053,
            "aisle":"Oil, Vinegar, Salad Dressing",
            "image":"olive-oil.jpg",
            "consistency":"LIQUID",
            "name":"olive oil",
            "nameClean":"olive oil",
            "original":"1 tablespoon olive oil",
            "originalName":"olive oil",
            "amount":1.0,
            "unit":"tablespoon",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"Tbsp",
                  "unitLong":"Tbsp"
               },
               "metric":{
                  "amount":1.0,
                  "unitShort":"Tbsp",
                  "unitLong":"Tbsp"
               }
            }
         },
         {
            "id":1002030,
            "aisle":"Spices and Seasonings",
            "image":"pepper.jpg",
            "consistency":"SOLID",
            "name":"pepper",
            "nameClean":"black pepper",
            "original":"1/4 teaspoon pepper",
            "originalName":"pepper",
            "amount":0.25,
            "unit":"teaspoon",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.25,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               },
               "metric":{
                  "amount":0.25,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               }
            }
         },
         {
            "id":2047,
            "aisle":"Spices and Seasonings",
            "image":"salt.jpg",
            "consistency":"SOLID",
            "name":"salt",
            "nameClean":"table salt",
            "original":"1/2 teaspoon salt",
            "originalName":"salt",
            "amount":0.5,
            "unit":"teaspoon",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.5,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               },
               "metric":{
                  "amount":0.5,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               }
            }
         },
         {
            "id":15270,
            "aisle":"Seafood",
            "image":"shrimp.png",
            "consistency":"SOLID",
            "name":"shrimp",
            "nameClean":"shrimp",
            "original":"1 pound shrimp, shelled",
            "originalName":"shrimp, shelled",
            "amount":1.0,
            "unit":"pound",
            "meta":[
               "shelled"
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"lb",
                  "unitLong":"pound"
               },
               "metric":{
                  "amount":453.592,
                  "unitShort":"g",
                  "unitLong":"grams"
               }
            }
         },
         {
            "id":14106,
            "aisle":"Alcoholic Beverages",
            "image":"white-wine.jpg",
            "consistency":"LIQUID",
            "name":"white wine",
            "nameClean":"dry white wine",
            "original":"1/2 cup white wine",
            "originalName":"white wine",
            "amount":0.5,
            "unit":"cup",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.5,
                  "unitShort":"cups",
                  "unitLong":"cups"
               },
               "metric":{
                  "amount":118.294,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         }
      ],
      "id":642096,
      "title":"Easy Shrimp Scampi",
      "readyInMinutes":45,
      "servings":4,
      "sourceUrl":"http://www.foodista.com/recipe/PVM55SR7/shrimp-scampi",
      "image":"https://spoonacular.com/recipeImages/642096-556x370.jpg",
      "imageType":"jpg",
      "summary":"Easy Shrimp Scampi is a Mediterranean main course. This recipe serves 4 and costs $3.07 per serving. One portion of this dish contains roughly <b>23g of protein</b>, <b>15g of fat</b>, and a total of <b>262 calories</b>. This recipe from Foodista has 27 fans. If you have butter, salt, olive oil, and a few other ingredients on hand, you can make it. It is a good option if you\\''re following a <b>gluten free, primal, and pescatarian</b> diet. From preparation to the plate, this recipe takes around <b>45 minutes</b>. Taking all factors into account, this recipe <b>earns a spoonacular score of 45%</b>, which is pretty good. Similar recipes are <a href=\"https://spoonacular.com/recipes/easy-shrimp-scampi-443814\">Easy Shrimp Scampi</a>, <a href=\"https://spoonacular.com/recipes/easy-shrimp-scampi-894437\">Easy Shrimp Scampi</a>, and <a href=\"https://spoonacular.com/recipes/easy-shrimp-scampi-1258445\">Easy Shrimp Scampi</a>.",
      "cuisines":[
         "Mediterranean",
         "Italian",
         "European"
      ],
      "dishTypes":[
         "lunch",
         "main course",
         "main dish",
         "dinner"
      ],
      "diets":[
         "gluten free",
         "primal",
         "pescatarian"
      ],
      "occasions":[
         
      ],
      "instructions":"<ol><li>In a large skillet, melt butter and oil. Add garlic and saute 30 seconds.</li><li>Stir in wine and lemon juice and cook 1 minute.</li><li>Stir in shrimp, parsley, salt and pepper. Cook 2-3 minutes over high heat, stir constantly.</li><li>Serve with pasta or rice.</li></ol>",
      "analyzedInstructions":[
         {
            "name":"",
            "steps":[
               {
                  "number":1,
                  "step":"In a large skillet, melt butter and oil.",
                  "ingredients":[
                     {
                        "id":1001,
                        "name":"butter",
                        "localizedName":"butter",
                        "image":"butter-sliced.jpg"
                     },
                     {
                        "id":4582,
                        "name":"cooking oil",
                        "localizedName":"cooking oil",
                        "image":"vegetable-oil.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404645,
                        "name":"frying pan",
                        "localizedName":"frying pan",
                        "image":"pan.png"
                     }
                  ]
               },
               {
                  "number":2,
                  "step":"Add garlic and saute 30 seconds.Stir in wine and lemon juice and cook 1 minute.Stir in shrimp, parsley, salt and pepper. Cook 2-3 minutes over high heat, stir constantly.",
                  "ingredients":[
                     {
                        "id":1102047,
                        "name":"salt and pepper",
                        "localizedName":"salt and pepper",
                        "image":"salt-and-pepper.jpg"
                     },
                     {
                        "id":9152,
                        "name":"lemon juice",
                        "localizedName":"lemon juice",
                        "image":"lemon-juice.jpg"
                     },
                     {
                        "id":11297,
                        "name":"parsley",
                        "localizedName":"parsley",
                        "image":"parsley.jpg"
                     },
                     {
                        "id":11215,
                        "name":"garlic",
                        "localizedName":"garlic",
                        "image":"garlic.png"
                     },
                     {
                        "id":15270,
                        "name":"shrimp",
                        "localizedName":"shrimp",
                        "image":"shrimp.png"
                     },
                     {
                        "id":14084,
                        "name":"wine",
                        "localizedName":"wine",
                        "image":"red-wine.jpg"
                     }
                  ],
                  "equipment":[
                     
                  ],
                  "length":{
                     "number":4,
                     "unit":"minutes"
                  }
               },
               {
                  "number":3,
                  "step":"Serve with pasta or rice.",
                  "ingredients":[
                     {
                        "id":20420,
                        "name":"pasta",
                        "localizedName":"pasta",
                        "image":"fusilli.jpg"
                     },
                     {
                        "id":20444,
                        "name":"rice",
                        "localizedName":"rice",
                        "image":"uncooked-white-rice.png"
                     }
                  ],
                  "equipment":[
                     
                  ]
               }
            ]
         }
      ],
      "originalId":"None",
      "spoonacularSourceUrl":"https://spoonacular.com/easy-shrimp-scampi-642096"
   },
   "Butternut Squash Gnocchi With Whiskey Cream Sauce":{
      "vegetarian":false,
      "vegan":false,
      "glutenFree":false,
      "dairyFree":false,
      "veryHealthy":false,
      "cheap":false,
      "veryPopular":false,
      "sustainable":false,
      "lowFodmap":false,
      "weightWatcherSmartPoints":16,
      "gaps":"no",
      "preparationMinutes":-1,
      "cookingMinutes":-1,
      "aggregateLikes":72,
      "healthScore":13,
      "creditsText":"Foodista.com – The Cooking Encyclopedia Everyone Can Edit",
      "license":"CC BY 3.0",
      "sourceName":"Foodista",
      "pricePerServing":402.9,
      "extendedIngredients":[
         {
            "id":11485,
            "aisle":"Produce",
            "image":"butternut-squash.jpg",
            "consistency":"SOLID",
            "name":"butternut squash",
            "nameClean":"butternut squash",
            "original":"1 small butternut squash, about 1 lb.",
            "originalName":"butternut squash, about 1 lb",
            "amount":1.0,
            "unit":"small",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"small",
                  "unitLong":"small"
               },
               "metric":{
                  "amount":1.0,
                  "unitShort":"small",
                  "unitLong":"small"
               }
            }
         },
         {
            "id":1033,
            "aisle":"Cheese",
            "image":"parmesan.jpg",
            "consistency":"SOLID",
            "name":"parmesan cheese",
            "nameClean":"parmesan",
            "original":"½ cup Parmesan cheese",
            "originalName":"Parmesan cheese",
            "amount":0.5,
            "unit":"cup",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.5,
                  "unitShort":"cups",
                  "unitLong":"cups"
               },
               "metric":{
                  "amount":118.294,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         },
         {
            "id":2010,
            "aisle":"Spices and Seasonings",
            "image":"cinnamon.jpg",
            "consistency":"SOLID",
            "name":"nutmeg",
            "nameClean":"cinnamon",
            "original":"¾ tsp. nutmeg, cinnamon, or ginger",
            "originalName":"nutmeg, cinnamon, or ginger",
            "amount":0.75,
            "unit":"tsp",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.75,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               },
               "metric":{
                  "amount":0.75,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               }
            }
         },
         {
            "id":2047,
            "aisle":"Spices and Seasonings",
            "image":"salt.jpg",
            "consistency":"SOLID",
            "name":"salt",
            "nameClean":"table salt",
            "original":"1 tsp. salt",
            "originalName":"salt",
            "amount":1.0,
            "unit":"tsp",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"tsp",
                  "unitLong":"teaspoon"
               },
               "metric":{
                  "amount":1.0,
                  "unitShort":"tsp",
                  "unitLong":"teaspoon"
               }
            }
         },
         {
            "id":10211821,
            "aisle":"Produce",
            "image":"bell-pepper-orange.png",
            "consistency":"SOLID",
            "name":"bell pepper",
            "nameClean":"bell pepper",
            "original":"Pepper to taste",
            "originalName":"Pepper to taste",
            "amount":4.0,
            "unit":"servings",
            "meta":[
               "to taste"
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               }
            }
         },
         {
            "id":1123,
            "aisle":"Milk, Eggs, Other Dairy",
            "image":"egg.png",
            "consistency":"SOLID",
            "name":"eggs",
            "nameClean":"egg",
            "original":"2 eggs",
            "originalName":"eggs",
            "amount":2.0,
            "unit":"",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"",
                  "unitLong":""
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"",
                  "unitLong":""
               }
            }
         },
         {
            "id":1001,
            "aisle":"Milk, Eggs, Other Dairy",
            "image":"butter-sliced.jpg",
            "consistency":"SOLID",
            "name":"butter",
            "nameClean":"butter",
            "original":"3 Tb. butter",
            "originalName":"butter",
            "amount":3.0,
            "unit":"Tb",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":3.0,
                  "unitShort":"Tb",
                  "unitLong":"Tbs"
               },
               "metric":{
                  "amount":3.0,
                  "unitShort":"Tb",
                  "unitLong":"Tbs"
               }
            }
         },
         {
            "id":20081,
            "aisle":"Baking",
            "image":"flour.png",
            "consistency":"SOLID",
            "name":"flour",
            "nameClean":"wheat flour",
            "original":"2 Tb. flour",
            "originalName":"flour",
            "amount":2.0,
            "unit":"Tb",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"Tb",
                  "unitLong":"Tbs"
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"Tb",
                  "unitLong":"Tbs"
               }
            }
         },
         {
            "id":11677,
            "aisle":"Produce",
            "image":"shallots.jpg",
            "consistency":"SOLID",
            "name":"shallots",
            "nameClean":"shallot",
            "original":"2 shallots, finely diced",
            "originalName":"shallots, finely diced",
            "amount":2.0,
            "unit":"",
            "meta":[
               "diced",
               "finely"
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"",
                  "unitLong":""
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"",
                  "unitLong":""
               }
            }
         },
         {
            "id":11215,
            "aisle":"Produce",
            "image":"garlic.png",
            "consistency":"SOLID",
            "name":"garlic",
            "nameClean":"garlic",
            "original":"4 cloves garlic, minced",
            "originalName":"garlic, minced",
            "amount":4.0,
            "unit":"cloves",
            "meta":[
               "minced"
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"cloves",
                  "unitLong":"cloves"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"cloves",
                  "unitLong":"cloves"
               }
            }
         },
         {
            "id":6172,
            "aisle":"Canned and Jarred",
            "image":"chicken-broth.png",
            "consistency":"LIQUID",
            "name":"chicken stock",
            "nameClean":"chicken stock",
            "original":"2 cups chicken stock",
            "originalName":"chicken stock",
            "amount":2.0,
            "unit":"cups",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"cups",
                  "unitLong":"cups"
               },
               "metric":{
                  "amount":473.176,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         },
         {
            "id":10014037,
            "aisle":"Alcoholic Beverages",
            "image":"bourbon.png",
            "consistency":"LIQUID",
            "name":"bourbon",
            "nameClean":"bourbon",
            "original":"1 cup bourbon",
            "originalName":"bourbon",
            "amount":1.0,
            "unit":"cup",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"cup",
                  "unitLong":"cup"
               },
               "metric":{
                  "amount":236.588,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         },
         {
            "id":1053,
            "aisle":"Milk, Eggs, Other Dairy",
            "image":"fluid-cream.jpg",
            "consistency":"LIQUID",
            "name":"heavy cream",
            "nameClean":"cream",
            "original":"1/3 cup heavy cream",
            "originalName":"heavy cream",
            "amount":0.33333334,
            "unit":"cup",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.333,
                  "unitShort":"cups",
                  "unitLong":"cups"
               },
               "metric":{
                  "amount":78.863,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         },
         {
            "id":1102047,
            "aisle":"Spices and Seasonings",
            "image":"salt-and-pepper.jpg",
            "consistency":"SOLID",
            "name":"salt and pepper",
            "nameClean":"salt and pepper",
            "original":"Salt and pepper",
            "originalName":"Salt and pepper",
            "amount":4.0,
            "unit":"servings",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               }
            }
         },
         {
            "id":1012049,
            "aisle":"Produce",
            "image":"thyme.jpg",
            "consistency":"SOLID",
            "name":"thyme leaves",
            "nameClean":"fresh thyme",
            "original":"Fresh thyme leaves for garnish",
            "originalName":"Fresh thyme leaves for garnish",
            "amount":4.0,
            "unit":"servings",
            "meta":[
               "fresh",
               "for garnish"
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               }
            }
         }
      ],
      "id":636599,
      "title":"Butternut Squash Gnocchi With Whiskey Cream Sauce",
      "readyInMinutes":45,
      "servings":4,
      "sourceUrl":"https://www.foodista.com/recipe/PVYSZMS6/butternut-squash-gnocchi-with-whiskey-cream-sauce",
      "image":"https://spoonacular.com/recipeImages/636599-556x370.jpg",
      "imageType":"jpg",
      "summary":"Butternut Squash Gnocchi With Whiskey Cream Sauce is a main course that serves 4. One serving contains <b>539 calories</b>, <b>14g of protein</b>, and <b>23g of fat</b>. For <b>$4.03 per serving</b>, this recipe <b>covers 27%</b> of your daily requirements of vitamins and minerals. This recipe from Foodista has 72 fans. From preparation to the plate, this recipe takes around <b>45 minutes</b>. If you have eggs, parmesan cheese, heavy cream, and a few other ingredients on hand, you can make it. A few people really liked this Mediterranean dish. All things considered, we decided this recipe <b>deserves a spoonacular score of 60%</b>. This score is pretty good. Users who liked this recipe also liked <a href=\"https://spoonacular.com/recipes/butternut-squash-gnocchi-with-whiskey-cream-sauce-77415\">Butternut Squash Gnocchi With Whiskey Cream Sauce</a>, <a href=\"https://spoonacular.com/recipes/butternut-squash-gnocchi-with-whiskey-cream-sauce-552216\">Butternut Squash Gnocchi with Whiskey Cream Sauce</a>, and <a href=\"https://spoonacular.com/recipes/butternut-squash-and-sage-cream-sauce-1202417\">Butternut Squash and Sage Cream Sauce</a>.",
      "cuisines":[
         "Mediterranean",
         "Italian",
         "European"
      ],
      "dishTypes":[
         "side dish",
         "lunch",
         "main course",
         "main dish",
         "dinner"
      ],
      "diets":[
         
      ],
      "occasions":[
         
      ],
      "instructions":"Preheat the oven to 450 degrees F. Cut the squach in half. Remove the seeds and lay on a oiled, rimmed baking sheets. Roast the squash until soft30-40 minutes.\nScoop the flesh of the squash out and place it in the food processor. Puree until completely smooth.\nMix the pureed squash with Parmesan cheese, nutmeg, salt, pepper and eggs. Then add the flour into the mixture and work together by hand. It will be very sticky.\nOnce smooth, flour a work surface and a large piece of parchment paper. Flour your hands and grab a handful of dough. Roll into a long strip, about  inch wide. Cut the strip into  pieces.\nThis is the tricky part~ Place each piece in the palm of your hand (or on the cutting board) and gently roll with a fork to create ridges. Place each piece on the floured parchment paper and repeat with the rest of the dough.\nBring a large pot of water to boil. Boil half the gnocchi, then remove and repeat. With each batch, boil until all the gnocchi floatsabout 5 minutes.\nMeanwhile, heat another large skillet over medium heat. Add the butter and flour, whisk until smooth.\nThen add the shallots and garlic. Saute for 3 minutes.\nThen add the bourbon and chicken stock.\nWhisk and raise heat. Bring the sauce to a boil. Allow the sauce to reduce down to a thin gravy-like consistency. Then lower the heat to medium-low and add the cream. Salt and pepper to tasteusually about 1 tsp. of salt.\nOnce the gnocchi are finished cooking, remove them with a skimmer and place them directly into the cream sauce. Stir to coat.\nServe the gnocchi warm and garnish with fresh thyme leaves! Serves 4.\nIf the cream sauce thickens too much, add a little water from the gnocchi pot to thin it out!",
      "analyzedInstructions":[
         {
            "name":"",
            "steps":[
               {
                  "number":1,
                  "step":"Preheat the oven to 450 degrees F.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     {
                        "id":404784,
                        "name":"oven",
                        "localizedName":"oven",
                        "image":"oven.jpg",
                        "temperature":{
                           "number":450.0,
                           "unit":"Fahrenheit"
                        }
                     }
                  ]
               },
               {
                  "number":2,
                  "step":"Cut the squach in half.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":3,
                  "step":"Remove the seeds and lay on a oiled, rimmed baking sheets. Roast the squash until soft30-40 minutes.",
                  "ingredients":[
                     {
                        "id":10011485,
                        "name":"squash",
                        "localizedName":"squash",
                        "image":"butternut-squash.jpg"
                     },
                     {
                        "id":93818,
                        "name":"seeds",
                        "localizedName":"seeds",
                        "image":"sunflower-seeds.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404727,
                        "name":"baking sheet",
                        "localizedName":"baking sheet",
                        "image":"baking-sheet.jpg"
                     }
                  ],
                  "length":{
                     "number":40,
                     "unit":"minutes"
                  }
               },
               {
                  "number":4,
                  "step":"Scoop the flesh of the squash out and place it in the food processor. Puree until completely smooth.",
                  "ingredients":[
                     {
                        "id":10011485,
                        "name":"squash",
                        "localizedName":"squash",
                        "image":"butternut-squash.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404771,
                        "name":"food processor",
                        "localizedName":"food processor",
                        "image":"food-processor.png"
                     }
                  ]
               },
               {
                  "number":5,
                  "step":"Mix the pureed squash with Parmesan cheese, nutmeg, salt, pepper and eggs. Then add the flour into the mixture and work together by hand. It will be very sticky.",
                  "ingredients":[
                     {
                        "id":1033,
                        "name":"parmesan",
                        "localizedName":"parmesan",
                        "image":"parmesan.jpg"
                     },
                     {
                        "id":2025,
                        "name":"nutmeg",
                        "localizedName":"nutmeg",
                        "image":"ground-nutmeg.jpg"
                     },
                     {
                        "id":1002030,
                        "name":"pepper",
                        "localizedName":"pepper",
                        "image":"pepper.jpg"
                     },
                     {
                        "id":10011485,
                        "name":"squash",
                        "localizedName":"squash",
                        "image":"butternut-squash.jpg"
                     },
                     {
                        "id":20081,
                        "name":"all purpose flour",
                        "localizedName":"all purpose flour",
                        "image":"flour.png"
                     },
                     {
                        "id":1123,
                        "name":"egg",
                        "localizedName":"egg",
                        "image":"egg.png"
                     },
                     {
                        "id":2047,
                        "name":"salt",
                        "localizedName":"salt",
                        "image":"salt.jpg"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":6,
                  "step":"Once smooth, flour a work surface and a large piece of parchment paper. Flour your hands and grab a handful of dough.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"dough",
                        "localizedName":"dough",
                        "image":"pizza-dough"
                     },
                     {
                        "id":20081,
                        "name":"all purpose flour",
                        "localizedName":"all purpose flour",
                        "image":"flour.png"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404770,
                        "name":"baking paper",
                        "localizedName":"baking paper",
                        "image":"baking-paper.jpg"
                     }
                  ]
               },
               {
                  "number":7,
                  "step":"Roll into a long strip, about  inch wide.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"roll",
                        "localizedName":"roll",
                        "image":"dinner-yeast-rolls.jpg"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":8,
                  "step":"Cut the strip into  pieces.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":9,
                  "step":"This is the tricky part~",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":10,
                  "step":"Place each piece in the palm of your hand (or on the cutting board) and gently roll with a fork to create ridges.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"roll",
                        "localizedName":"roll",
                        "image":"dinner-yeast-rolls.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404716,
                        "name":"cutting board",
                        "localizedName":"cutting board",
                        "image":"cutting-board.jpg"
                     }
                  ]
               },
               {
                  "number":11,
                  "step":"Place each piece on the floured parchment paper and repeat with the rest of the dough.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"dough",
                        "localizedName":"dough",
                        "image":"pizza-dough"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404770,
                        "name":"baking paper",
                        "localizedName":"baking paper",
                        "image":"baking-paper.jpg"
                     }
                  ]
               },
               {
                  "number":12,
                  "step":"Bring a large pot of water to boil. Boil half the gnocchi, then remove and repeat. With each batch, boil until all the gnocchi floatsabout 5 minutes.",
                  "ingredients":[
                     {
                        "id":98853,
                        "name":"gnocchi",
                        "localizedName":"gnocchi",
                        "image":"gnocchi-isolated.jpg"
                     },
                     {
                        "id":14412,
                        "name":"water",
                        "localizedName":"water",
                        "image":"water.png"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404752,
                        "name":"pot",
                        "localizedName":"pot",
                        "image":"stock-pot.jpg"
                     }
                  ],
                  "length":{
                     "number":5,
                     "unit":"minutes"
                  }
               },
               {
                  "number":13,
                  "step":"Meanwhile, heat another large skillet over medium heat.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     {
                        "id":404645,
                        "name":"frying pan",
                        "localizedName":"frying pan",
                        "image":"pan.png"
                     }
                  ]
               },
               {
                  "number":14,
                  "step":"Add the butter and flour, whisk until smooth.",
                  "ingredients":[
                     {
                        "id":1001,
                        "name":"butter",
                        "localizedName":"butter",
                        "image":"butter-sliced.jpg"
                     },
                     {
                        "id":20081,
                        "name":"all purpose flour",
                        "localizedName":"all purpose flour",
                        "image":"flour.png"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404661,
                        "name":"whisk",
                        "localizedName":"whisk",
                        "image":"whisk.png"
                     }
                  ]
               },
               {
                  "number":15,
                  "step":"Then add the shallots and garlic.",
                  "ingredients":[
                     {
                        "id":11677,
                        "name":"shallot",
                        "localizedName":"shallot",
                        "image":"shallots.jpg"
                     },
                     {
                        "id":11215,
                        "name":"garlic",
                        "localizedName":"garlic",
                        "image":"garlic.png"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":16,
                  "step":"Saute for 3 minutes.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ],
                  "length":{
                     "number":3,
                     "unit":"minutes"
                  }
               },
               {
                  "number":17,
                  "step":"Then add the bourbon and chicken stock.",
                  "ingredients":[
                     {
                        "id":6172,
                        "name":"chicken stock",
                        "localizedName":"chicken stock",
                        "image":"chicken-broth.png"
                     },
                     {
                        "id":10014037,
                        "name":"bourbon",
                        "localizedName":"bourbon",
                        "image":"bourbon.png"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":18,
                  "step":"Whisk and raise heat. Bring the sauce to a boil. Allow the sauce to reduce down to a thin gravy-like consistency. Then lower the heat to medium-low and add the cream. Salt and pepper to tasteusually about 1 tsp. of salt.",
                  "ingredients":[
                     {
                        "id":1102047,
                        "name":"salt and pepper",
                        "localizedName":"salt and pepper",
                        "image":"salt-and-pepper.jpg"
                     },
                     {
                        "id":1053,
                        "name":"cream",
                        "localizedName":"cream",
                        "image":"fluid-cream.jpg"
                     },
                     {
                        "id":6997,
                        "name":"gravy",
                        "localizedName":"gravy",
                        "image":"gravy.jpg"
                     },
                     {
                        "id":0,
                        "name":"sauce",
                        "localizedName":"sauce",
                        "image":""
                     },
                     {
                        "id":2047,
                        "name":"salt",
                        "localizedName":"salt",
                        "image":"salt.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404661,
                        "name":"whisk",
                        "localizedName":"whisk",
                        "image":"whisk.png"
                     }
                  ]
               },
               {
                  "number":19,
                  "step":"Once the gnocchi are finished cooking, remove them with a skimmer and place them directly into the cream sauce. Stir to coat.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"cream sauce",
                        "localizedName":"cream sauce",
                        "image":""
                     },
                     {
                        "id":98853,
                        "name":"gnocchi",
                        "localizedName":"gnocchi",
                        "image":"gnocchi-isolated.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":405894,
                        "name":"skimmer",
                        "localizedName":"skimmer",
                        "image":"skimmer-spoon.jpg"
                     }
                  ]
               },
               {
                  "number":20,
                  "step":"Serve the gnocchi warm and garnish with fresh thyme leaves!",
                  "ingredients":[
                     {
                        "id":1012049,
                        "name":"fresh thyme",
                        "localizedName":"fresh thyme",
                        "image":"thyme.jpg"
                     },
                     {
                        "id":98853,
                        "name":"gnocchi",
                        "localizedName":"gnocchi",
                        "image":"gnocchi-isolated.jpg"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":21,
                  "step":"Serves",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":22,
                  "step":"If the cream sauce thickens too much, add a little water from the gnocchi pot to thin it out!",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"cream sauce",
                        "localizedName":"cream sauce",
                        "image":""
                     },
                     {
                        "id":98853,
                        "name":"gnocchi",
                        "localizedName":"gnocchi",
                        "image":"gnocchi-isolated.jpg"
                     },
                     {
                        "id":14412,
                        "name":"water",
                        "localizedName":"water",
                        "image":"water.png"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404752,
                        "name":"pot",
                        "localizedName":"pot",
                        "image":"stock-pot.jpg"
                     }
                  ]
               }
            ]
         }
      ],
      "originalId":"None",
      "spoonacularSourceUrl":"https://spoonacular.com/butternut-squash-gnocchi-with-whiskey-cream-sauce-636599"
   }
}');
INSERT INTO "users" VALUES (4,'Derek Mo','derek.mo7203@gmail.com',2,'gluten,mediterranean','{
   "Easy Shrimp Scampi":{
      "vegetarian":false,
      "vegan":false,
      "glutenFree":true,
      "dairyFree":false,
      "veryHealthy":false,
      "cheap":false,
      "veryPopular":false,
      "sustainable":false,
      "lowFodmap":false,
      "weightWatcherSmartPoints":7,
      "gaps":"no",
      "preparationMinutes":-1,
      "cookingMinutes":-1,
      "aggregateLikes":27,
      "healthScore":2,
      "creditsText":"Foodista.com – The Cooking Encyclopedia Everyone Can Edit",
      "license":"CC BY 3.0",
      "sourceName":"Foodista",
      "pricePerServing":306.85,
      "extendedIngredients":[
         {
            "id":1001,
            "aisle":"Milk, Eggs, Other Dairy",
            "image":"butter-sliced.jpg",
            "consistency":"SOLID",
            "name":"butter",
            "nameClean":"butter",
            "original":"4 tablespoons butter",
            "originalName":"butter",
            "amount":4.0,
            "unit":"tablespoons",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               }
            }
         },
         {
            "id":10511297,
            "aisle":"Produce",
            "image":"parsley.jpg",
            "consistency":"SOLID",
            "name":"parsley",
            "nameClean":"fresh parsley",
            "original":"2 tablespoons fresh parsley",
            "originalName":"fresh parsley",
            "amount":2.0,
            "unit":"tablespoons",
            "meta":[
               "fresh"
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               }
            }
         },
         {
            "id":11215,
            "aisle":"Produce",
            "image":"garlic.png",
            "consistency":"SOLID",
            "name":"garlic",
            "nameClean":"garlic",
            "original":"6 cloves garlic, minced",
            "originalName":"garlic, minced",
            "amount":6.0,
            "unit":"cloves",
            "meta":[
               "minced"
            ],
            "measures":{
               "us":{
                  "amount":6.0,
                  "unitShort":"cloves",
                  "unitLong":"cloves"
               },
               "metric":{
                  "amount":6.0,
                  "unitShort":"cloves",
                  "unitLong":"cloves"
               }
            }
         },
         {
            "id":9152,
            "aisle":"Produce",
            "image":"lemon-juice.jpg",
            "consistency":"LIQUID",
            "name":"lemon juice",
            "nameClean":"lemon juice",
            "original":"2 tablespoons lemon juice",
            "originalName":"lemon juice",
            "amount":2.0,
            "unit":"tablespoons",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               }
            }
         },
         {
            "id":4053,
            "aisle":"Oil, Vinegar, Salad Dressing",
            "image":"olive-oil.jpg",
            "consistency":"LIQUID",
            "name":"olive oil",
            "nameClean":"olive oil",
            "original":"1 tablespoon olive oil",
            "originalName":"olive oil",
            "amount":1.0,
            "unit":"tablespoon",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"Tbsp",
                  "unitLong":"Tbsp"
               },
               "metric":{
                  "amount":1.0,
                  "unitShort":"Tbsp",
                  "unitLong":"Tbsp"
               }
            }
         },
         {
            "id":1002030,
            "aisle":"Spices and Seasonings",
            "image":"pepper.jpg",
            "consistency":"SOLID",
            "name":"pepper",
            "nameClean":"black pepper",
            "original":"1/4 teaspoon pepper",
            "originalName":"pepper",
            "amount":0.25,
            "unit":"teaspoon",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.25,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               },
               "metric":{
                  "amount":0.25,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               }
            }
         },
         {
            "id":2047,
            "aisle":"Spices and Seasonings",
            "image":"salt.jpg",
            "consistency":"SOLID",
            "name":"salt",
            "nameClean":"table salt",
            "original":"1/2 teaspoon salt",
            "originalName":"salt",
            "amount":0.5,
            "unit":"teaspoon",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.5,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               },
               "metric":{
                  "amount":0.5,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               }
            }
         },
         {
            "id":15270,
            "aisle":"Seafood",
            "image":"shrimp.png",
            "consistency":"SOLID",
            "name":"shrimp",
            "nameClean":"shrimp",
            "original":"1 pound shrimp, shelled",
            "originalName":"shrimp, shelled",
            "amount":1.0,
            "unit":"pound",
            "meta":[
               "shelled"
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"lb",
                  "unitLong":"pound"
               },
               "metric":{
                  "amount":453.592,
                  "unitShort":"g",
                  "unitLong":"grams"
               }
            }
         },
         {
            "id":14106,
            "aisle":"Alcoholic Beverages",
            "image":"white-wine.jpg",
            "consistency":"LIQUID",
            "name":"white wine",
            "nameClean":"dry white wine",
            "original":"1/2 cup white wine",
            "originalName":"white wine",
            "amount":0.5,
            "unit":"cup",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.5,
                  "unitShort":"cups",
                  "unitLong":"cups"
               },
               "metric":{
                  "amount":118.294,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         }
      ],
      "id":642096,
      "title":"Easy Shrimp Scampi",
      "readyInMinutes":45,
      "servings":4,
      "sourceUrl":"http://www.foodista.com/recipe/PVM55SR7/shrimp-scampi",
      "image":"https://spoonacular.com/recipeImages/642096-556x370.jpg",
      "imageType":"jpg",
      "summary":"Easy Shrimp Scampi is a Mediterranean main course. This recipe serves 4 and costs $3.07 per serving. One portion of this dish contains roughly <b>23g of protein</b>, <b>15g of fat</b>, and a total of <b>262 calories</b>. This recipe from Foodista has 27 fans. If you have butter, salt, olive oil, and a few other ingredients on hand, you can make it. It is a good option if you\\''re following a <b>gluten free, primal, and pescatarian</b> diet. From preparation to the plate, this recipe takes around <b>45 minutes</b>. Taking all factors into account, this recipe <b>earns a spoonacular score of 45%</b>, which is pretty good. Similar recipes are <a href=\"https://spoonacular.com/recipes/easy-shrimp-scampi-443814\">Easy Shrimp Scampi</a>, <a href=\"https://spoonacular.com/recipes/easy-shrimp-scampi-894437\">Easy Shrimp Scampi</a>, and <a href=\"https://spoonacular.com/recipes/easy-shrimp-scampi-1258445\">Easy Shrimp Scampi</a>.",
      "cuisines":[
         "Mediterranean",
         "Italian",
         "European"
      ],
      "dishTypes":[
         "lunch",
         "main course",
         "main dish",
         "dinner"
      ],
      "diets":[
         "gluten free",
         "primal",
         "pescatarian"
      ],
      "occasions":[
         
      ],
      "instructions":"<ol><li>In a large skillet, melt butter and oil. Add garlic and saute 30 seconds.</li><li>Stir in wine and lemon juice and cook 1 minute.</li><li>Stir in shrimp, parsley, salt and pepper. Cook 2-3 minutes over high heat, stir constantly.</li><li>Serve with pasta or rice.</li></ol>",
      "analyzedInstructions":[
         {
            "name":"",
            "steps":[
               {
                  "number":1,
                  "step":"In a large skillet, melt butter and oil.",
                  "ingredients":[
                     {
                        "id":1001,
                        "name":"butter",
                        "localizedName":"butter",
                        "image":"butter-sliced.jpg"
                     },
                     {
                        "id":4582,
                        "name":"cooking oil",
                        "localizedName":"cooking oil",
                        "image":"vegetable-oil.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404645,
                        "name":"frying pan",
                        "localizedName":"frying pan",
                        "image":"pan.png"
                     }
                  ]
               },
               {
                  "number":2,
                  "step":"Add garlic and saute 30 seconds.Stir in wine and lemon juice and cook 1 minute.Stir in shrimp, parsley, salt and pepper. Cook 2-3 minutes over high heat, stir constantly.",
                  "ingredients":[
                     {
                        "id":1102047,
                        "name":"salt and pepper",
                        "localizedName":"salt and pepper",
                        "image":"salt-and-pepper.jpg"
                     },
                     {
                        "id":9152,
                        "name":"lemon juice",
                        "localizedName":"lemon juice",
                        "image":"lemon-juice.jpg"
                     },
                     {
                        "id":11297,
                        "name":"parsley",
                        "localizedName":"parsley",
                        "image":"parsley.jpg"
                     },
                     {
                        "id":11215,
                        "name":"garlic",
                        "localizedName":"garlic",
                        "image":"garlic.png"
                     },
                     {
                        "id":15270,
                        "name":"shrimp",
                        "localizedName":"shrimp",
                        "image":"shrimp.png"
                     },
                     {
                        "id":14084,
                        "name":"wine",
                        "localizedName":"wine",
                        "image":"red-wine.jpg"
                     }
                  ],
                  "equipment":[
                     
                  ],
                  "length":{
                     "number":4,
                     "unit":"minutes"
                  }
               },
               {
                  "number":3,
                  "step":"Serve with pasta or rice.",
                  "ingredients":[
                     {
                        "id":20420,
                        "name":"pasta",
                        "localizedName":"pasta",
                        "image":"fusilli.jpg"
                     },
                     {
                        "id":20444,
                        "name":"rice",
                        "localizedName":"rice",
                        "image":"uncooked-white-rice.png"
                     }
                  ],
                  "equipment":[
                     
                  ]
               }
            ]
         }
      ],
      "originalId":"None",
      "spoonacularSourceUrl":"https://spoonacular.com/easy-shrimp-scampi-642096"
   },
   "Butternut Squash Gnocchi With Whiskey Cream Sauce":{
      "vegetarian":false,
      "vegan":false,
      "glutenFree":false,
      "dairyFree":false,
      "veryHealthy":false,
      "cheap":false,
      "veryPopular":false,
      "sustainable":false,
      "lowFodmap":false,
      "weightWatcherSmartPoints":16,
      "gaps":"no",
      "preparationMinutes":-1,
      "cookingMinutes":-1,
      "aggregateLikes":72,
      "healthScore":13,
      "creditsText":"Foodista.com – The Cooking Encyclopedia Everyone Can Edit",
      "license":"CC BY 3.0",
      "sourceName":"Foodista",
      "pricePerServing":402.9,
      "extendedIngredients":[
         {
            "id":11485,
            "aisle":"Produce",
            "image":"butternut-squash.jpg",
            "consistency":"SOLID",
            "name":"butternut squash",
            "nameClean":"butternut squash",
            "original":"1 small butternut squash, about 1 lb.",
            "originalName":"butternut squash, about 1 lb",
            "amount":1.0,
            "unit":"small",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"small",
                  "unitLong":"small"
               },
               "metric":{
                  "amount":1.0,
                  "unitShort":"small",
                  "unitLong":"small"
               }
            }
         },
         {
            "id":1033,
            "aisle":"Cheese",
            "image":"parmesan.jpg",
            "consistency":"SOLID",
            "name":"parmesan cheese",
            "nameClean":"parmesan",
            "original":"½ cup Parmesan cheese",
            "originalName":"Parmesan cheese",
            "amount":0.5,
            "unit":"cup",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.5,
                  "unitShort":"cups",
                  "unitLong":"cups"
               },
               "metric":{
                  "amount":118.294,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         },
         {
            "id":2010,
            "aisle":"Spices and Seasonings",
            "image":"cinnamon.jpg",
            "consistency":"SOLID",
            "name":"nutmeg",
            "nameClean":"cinnamon",
            "original":"¾ tsp. nutmeg, cinnamon, or ginger",
            "originalName":"nutmeg, cinnamon, or ginger",
            "amount":0.75,
            "unit":"tsp",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.75,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               },
               "metric":{
                  "amount":0.75,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               }
            }
         },
         {
            "id":2047,
            "aisle":"Spices and Seasonings",
            "image":"salt.jpg",
            "consistency":"SOLID",
            "name":"salt",
            "nameClean":"table salt",
            "original":"1 tsp. salt",
            "originalName":"salt",
            "amount":1.0,
            "unit":"tsp",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"tsp",
                  "unitLong":"teaspoon"
               },
               "metric":{
                  "amount":1.0,
                  "unitShort":"tsp",
                  "unitLong":"teaspoon"
               }
            }
         },
         {
            "id":10211821,
            "aisle":"Produce",
            "image":"bell-pepper-orange.png",
            "consistency":"SOLID",
            "name":"bell pepper",
            "nameClean":"bell pepper",
            "original":"Pepper to taste",
            "originalName":"Pepper to taste",
            "amount":4.0,
            "unit":"servings",
            "meta":[
               "to taste"
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               }
            }
         },
         {
            "id":1123,
            "aisle":"Milk, Eggs, Other Dairy",
            "image":"egg.png",
            "consistency":"SOLID",
            "name":"eggs",
            "nameClean":"egg",
            "original":"2 eggs",
            "originalName":"eggs",
            "amount":2.0,
            "unit":"",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"",
                  "unitLong":""
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"",
                  "unitLong":""
               }
            }
         },
         {
            "id":1001,
            "aisle":"Milk, Eggs, Other Dairy",
            "image":"butter-sliced.jpg",
            "consistency":"SOLID",
            "name":"butter",
            "nameClean":"butter",
            "original":"3 Tb. butter",
            "originalName":"butter",
            "amount":3.0,
            "unit":"Tb",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":3.0,
                  "unitShort":"Tb",
                  "unitLong":"Tbs"
               },
               "metric":{
                  "amount":3.0,
                  "unitShort":"Tb",
                  "unitLong":"Tbs"
               }
            }
         },
         {
            "id":20081,
            "aisle":"Baking",
            "image":"flour.png",
            "consistency":"SOLID",
            "name":"flour",
            "nameClean":"wheat flour",
            "original":"2 Tb. flour",
            "originalName":"flour",
            "amount":2.0,
            "unit":"Tb",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"Tb",
                  "unitLong":"Tbs"
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"Tb",
                  "unitLong":"Tbs"
               }
            }
         },
         {
            "id":11677,
            "aisle":"Produce",
            "image":"shallots.jpg",
            "consistency":"SOLID",
            "name":"shallots",
            "nameClean":"shallot",
            "original":"2 shallots, finely diced",
            "originalName":"shallots, finely diced",
            "amount":2.0,
            "unit":"",
            "meta":[
               "diced",
               "finely"
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"",
                  "unitLong":""
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"",
                  "unitLong":""
               }
            }
         },
         {
            "id":11215,
            "aisle":"Produce",
            "image":"garlic.png",
            "consistency":"SOLID",
            "name":"garlic",
            "nameClean":"garlic",
            "original":"4 cloves garlic, minced",
            "originalName":"garlic, minced",
            "amount":4.0,
            "unit":"cloves",
            "meta":[
               "minced"
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"cloves",
                  "unitLong":"cloves"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"cloves",
                  "unitLong":"cloves"
               }
            }
         },
         {
            "id":6172,
            "aisle":"Canned and Jarred",
            "image":"chicken-broth.png",
            "consistency":"LIQUID",
            "name":"chicken stock",
            "nameClean":"chicken stock",
            "original":"2 cups chicken stock",
            "originalName":"chicken stock",
            "amount":2.0,
            "unit":"cups",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"cups",
                  "unitLong":"cups"
               },
               "metric":{
                  "amount":473.176,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         },
         {
            "id":10014037,
            "aisle":"Alcoholic Beverages",
            "image":"bourbon.png",
            "consistency":"LIQUID",
            "name":"bourbon",
            "nameClean":"bourbon",
            "original":"1 cup bourbon",
            "originalName":"bourbon",
            "amount":1.0,
            "unit":"cup",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"cup",
                  "unitLong":"cup"
               },
               "metric":{
                  "amount":236.588,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         },
         {
            "id":1053,
            "aisle":"Milk, Eggs, Other Dairy",
            "image":"fluid-cream.jpg",
            "consistency":"LIQUID",
            "name":"heavy cream",
            "nameClean":"cream",
            "original":"1/3 cup heavy cream",
            "originalName":"heavy cream",
            "amount":0.33333334,
            "unit":"cup",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.333,
                  "unitShort":"cups",
                  "unitLong":"cups"
               },
               "metric":{
                  "amount":78.863,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         },
         {
            "id":1102047,
            "aisle":"Spices and Seasonings",
            "image":"salt-and-pepper.jpg",
            "consistency":"SOLID",
            "name":"salt and pepper",
            "nameClean":"salt and pepper",
            "original":"Salt and pepper",
            "originalName":"Salt and pepper",
            "amount":4.0,
            "unit":"servings",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               }
            }
         },
         {
            "id":1012049,
            "aisle":"Produce",
            "image":"thyme.jpg",
            "consistency":"SOLID",
            "name":"thyme leaves",
            "nameClean":"fresh thyme",
            "original":"Fresh thyme leaves for garnish",
            "originalName":"Fresh thyme leaves for garnish",
            "amount":4.0,
            "unit":"servings",
            "meta":[
               "fresh",
               "for garnish"
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               }
            }
         }
      ],
      "id":636599,
      "title":"Butternut Squash Gnocchi With Whiskey Cream Sauce",
      "readyInMinutes":45,
      "servings":4,
      "sourceUrl":"https://www.foodista.com/recipe/PVYSZMS6/butternut-squash-gnocchi-with-whiskey-cream-sauce",
      "image":"https://spoonacular.com/recipeImages/636599-556x370.jpg",
      "imageType":"jpg",
      "summary":"Butternut Squash Gnocchi With Whiskey Cream Sauce is a main course that serves 4. One serving contains <b>539 calories</b>, <b>14g of protein</b>, and <b>23g of fat</b>. For <b>$4.03 per serving</b>, this recipe <b>covers 27%</b> of your daily requirements of vitamins and minerals. This recipe from Foodista has 72 fans. From preparation to the plate, this recipe takes around <b>45 minutes</b>. If you have eggs, parmesan cheese, heavy cream, and a few other ingredients on hand, you can make it. A few people really liked this Mediterranean dish. All things considered, we decided this recipe <b>deserves a spoonacular score of 60%</b>. This score is pretty good. Users who liked this recipe also liked <a href=\"https://spoonacular.com/recipes/butternut-squash-gnocchi-with-whiskey-cream-sauce-77415\">Butternut Squash Gnocchi With Whiskey Cream Sauce</a>, <a href=\"https://spoonacular.com/recipes/butternut-squash-gnocchi-with-whiskey-cream-sauce-552216\">Butternut Squash Gnocchi with Whiskey Cream Sauce</a>, and <a href=\"https://spoonacular.com/recipes/butternut-squash-and-sage-cream-sauce-1202417\">Butternut Squash and Sage Cream Sauce</a>.",
      "cuisines":[
         "Mediterranean",
         "Italian",
         "European"
      ],
      "dishTypes":[
         "side dish",
         "lunch",
         "main course",
         "main dish",
         "dinner"
      ],
      "diets":[
         
      ],
      "occasions":[
         
      ],
      "instructions":"Preheat the oven to 450 degrees F. Cut the squach in half. Remove the seeds and lay on a oiled, rimmed baking sheets. Roast the squash until soft30-40 minutes.\nScoop the flesh of the squash out and place it in the food processor. Puree until completely smooth.\nMix the pureed squash with Parmesan cheese, nutmeg, salt, pepper and eggs. Then add the flour into the mixture and work together by hand. It will be very sticky.\nOnce smooth, flour a work surface and a large piece of parchment paper. Flour your hands and grab a handful of dough. Roll into a long strip, about  inch wide. Cut the strip into  pieces.\nThis is the tricky part~ Place each piece in the palm of your hand (or on the cutting board) and gently roll with a fork to create ridges. Place each piece on the floured parchment paper and repeat with the rest of the dough.\nBring a large pot of water to boil. Boil half the gnocchi, then remove and repeat. With each batch, boil until all the gnocchi floatsabout 5 minutes.\nMeanwhile, heat another large skillet over medium heat. Add the butter and flour, whisk until smooth.\nThen add the shallots and garlic. Saute for 3 minutes.\nThen add the bourbon and chicken stock.\nWhisk and raise heat. Bring the sauce to a boil. Allow the sauce to reduce down to a thin gravy-like consistency. Then lower the heat to medium-low and add the cream. Salt and pepper to tasteusually about 1 tsp. of salt.\nOnce the gnocchi are finished cooking, remove them with a skimmer and place them directly into the cream sauce. Stir to coat.\nServe the gnocchi warm and garnish with fresh thyme leaves! Serves 4.\nIf the cream sauce thickens too much, add a little water from the gnocchi pot to thin it out!",
      "analyzedInstructions":[
         {
            "name":"",
            "steps":[
               {
                  "number":1,
                  "step":"Preheat the oven to 450 degrees F.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     {
                        "id":404784,
                        "name":"oven",
                        "localizedName":"oven",
                        "image":"oven.jpg",
                        "temperature":{
                           "number":450.0,
                           "unit":"Fahrenheit"
                        }
                     }
                  ]
               },
               {
                  "number":2,
                  "step":"Cut the squach in half.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":3,
                  "step":"Remove the seeds and lay on a oiled, rimmed baking sheets. Roast the squash until soft30-40 minutes.",
                  "ingredients":[
                     {
                        "id":10011485,
                        "name":"squash",
                        "localizedName":"squash",
                        "image":"butternut-squash.jpg"
                     },
                     {
                        "id":93818,
                        "name":"seeds",
                        "localizedName":"seeds",
                        "image":"sunflower-seeds.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404727,
                        "name":"baking sheet",
                        "localizedName":"baking sheet",
                        "image":"baking-sheet.jpg"
                     }
                  ],
                  "length":{
                     "number":40,
                     "unit":"minutes"
                  }
               },
               {
                  "number":4,
                  "step":"Scoop the flesh of the squash out and place it in the food processor. Puree until completely smooth.",
                  "ingredients":[
                     {
                        "id":10011485,
                        "name":"squash",
                        "localizedName":"squash",
                        "image":"butternut-squash.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404771,
                        "name":"food processor",
                        "localizedName":"food processor",
                        "image":"food-processor.png"
                     }
                  ]
               },
               {
                  "number":5,
                  "step":"Mix the pureed squash with Parmesan cheese, nutmeg, salt, pepper and eggs. Then add the flour into the mixture and work together by hand. It will be very sticky.",
                  "ingredients":[
                     {
                        "id":1033,
                        "name":"parmesan",
                        "localizedName":"parmesan",
                        "image":"parmesan.jpg"
                     },
                     {
                        "id":2025,
                        "name":"nutmeg",
                        "localizedName":"nutmeg",
                        "image":"ground-nutmeg.jpg"
                     },
                     {
                        "id":1002030,
                        "name":"pepper",
                        "localizedName":"pepper",
                        "image":"pepper.jpg"
                     },
                     {
                        "id":10011485,
                        "name":"squash",
                        "localizedName":"squash",
                        "image":"butternut-squash.jpg"
                     },
                     {
                        "id":20081,
                        "name":"all purpose flour",
                        "localizedName":"all purpose flour",
                        "image":"flour.png"
                     },
                     {
                        "id":1123,
                        "name":"egg",
                        "localizedName":"egg",
                        "image":"egg.png"
                     },
                     {
                        "id":2047,
                        "name":"salt",
                        "localizedName":"salt",
                        "image":"salt.jpg"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":6,
                  "step":"Once smooth, flour a work surface and a large piece of parchment paper. Flour your hands and grab a handful of dough.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"dough",
                        "localizedName":"dough",
                        "image":"pizza-dough"
                     },
                     {
                        "id":20081,
                        "name":"all purpose flour",
                        "localizedName":"all purpose flour",
                        "image":"flour.png"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404770,
                        "name":"baking paper",
                        "localizedName":"baking paper",
                        "image":"baking-paper.jpg"
                     }
                  ]
               },
               {
                  "number":7,
                  "step":"Roll into a long strip, about  inch wide.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"roll",
                        "localizedName":"roll",
                        "image":"dinner-yeast-rolls.jpg"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":8,
                  "step":"Cut the strip into  pieces.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":9,
                  "step":"This is the tricky part~",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":10,
                  "step":"Place each piece in the palm of your hand (or on the cutting board) and gently roll with a fork to create ridges.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"roll",
                        "localizedName":"roll",
                        "image":"dinner-yeast-rolls.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404716,
                        "name":"cutting board",
                        "localizedName":"cutting board",
                        "image":"cutting-board.jpg"
                     }
                  ]
               },
               {
                  "number":11,
                  "step":"Place each piece on the floured parchment paper and repeat with the rest of the dough.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"dough",
                        "localizedName":"dough",
                        "image":"pizza-dough"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404770,
                        "name":"baking paper",
                        "localizedName":"baking paper",
                        "image":"baking-paper.jpg"
                     }
                  ]
               },
               {
                  "number":12,
                  "step":"Bring a large pot of water to boil. Boil half the gnocchi, then remove and repeat. With each batch, boil until all the gnocchi floatsabout 5 minutes.",
                  "ingredients":[
                     {
                        "id":98853,
                        "name":"gnocchi",
                        "localizedName":"gnocchi",
                        "image":"gnocchi-isolated.jpg"
                     },
                     {
                        "id":14412,
                        "name":"water",
                        "localizedName":"water",
                        "image":"water.png"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404752,
                        "name":"pot",
                        "localizedName":"pot",
                        "image":"stock-pot.jpg"
                     }
                  ],
                  "length":{
                     "number":5,
                     "unit":"minutes"
                  }
               },
               {
                  "number":13,
                  "step":"Meanwhile, heat another large skillet over medium heat.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     {
                        "id":404645,
                        "name":"frying pan",
                        "localizedName":"frying pan",
                        "image":"pan.png"
                     }
                  ]
               },
               {
                  "number":14,
                  "step":"Add the butter and flour, whisk until smooth.",
                  "ingredients":[
                     {
                        "id":1001,
                        "name":"butter",
                        "localizedName":"butter",
                        "image":"butter-sliced.jpg"
                     },
                     {
                        "id":20081,
                        "name":"all purpose flour",
                        "localizedName":"all purpose flour",
                        "image":"flour.png"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404661,
                        "name":"whisk",
                        "localizedName":"whisk",
                        "image":"whisk.png"
                     }
                  ]
               },
               {
                  "number":15,
                  "step":"Then add the shallots and garlic.",
                  "ingredients":[
                     {
                        "id":11677,
                        "name":"shallot",
                        "localizedName":"shallot",
                        "image":"shallots.jpg"
                     },
                     {
                        "id":11215,
                        "name":"garlic",
                        "localizedName":"garlic",
                        "image":"garlic.png"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":16,
                  "step":"Saute for 3 minutes.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ],
                  "length":{
                     "number":3,
                     "unit":"minutes"
                  }
               },
               {
                  "number":17,
                  "step":"Then add the bourbon and chicken stock.",
                  "ingredients":[
                     {
                        "id":6172,
                        "name":"chicken stock",
                        "localizedName":"chicken stock",
                        "image":"chicken-broth.png"
                     },
                     {
                        "id":10014037,
                        "name":"bourbon",
                        "localizedName":"bourbon",
                        "image":"bourbon.png"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":18,
                  "step":"Whisk and raise heat. Bring the sauce to a boil. Allow the sauce to reduce down to a thin gravy-like consistency. Then lower the heat to medium-low and add the cream. Salt and pepper to tasteusually about 1 tsp. of salt.",
                  "ingredients":[
                     {
                        "id":1102047,
                        "name":"salt and pepper",
                        "localizedName":"salt and pepper",
                        "image":"salt-and-pepper.jpg"
                     },
                     {
                        "id":1053,
                        "name":"cream",
                        "localizedName":"cream",
                        "image":"fluid-cream.jpg"
                     },
                     {
                        "id":6997,
                        "name":"gravy",
                        "localizedName":"gravy",
                        "image":"gravy.jpg"
                     },
                     {
                        "id":0,
                        "name":"sauce",
                        "localizedName":"sauce",
                        "image":""
                     },
                     {
                        "id":2047,
                        "name":"salt",
                        "localizedName":"salt",
                        "image":"salt.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404661,
                        "name":"whisk",
                        "localizedName":"whisk",
                        "image":"whisk.png"
                     }
                  ]
               },
               {
                  "number":19,
                  "step":"Once the gnocchi are finished cooking, remove them with a skimmer and place them directly into the cream sauce. Stir to coat.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"cream sauce",
                        "localizedName":"cream sauce",
                        "image":""
                     },
                     {
                        "id":98853,
                        "name":"gnocchi",
                        "localizedName":"gnocchi",
                        "image":"gnocchi-isolated.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":405894,
                        "name":"skimmer",
                        "localizedName":"skimmer",
                        "image":"skimmer-spoon.jpg"
                     }
                  ]
               },
               {
                  "number":20,
                  "step":"Serve the gnocchi warm and garnish with fresh thyme leaves!",
                  "ingredients":[
                     {
                        "id":1012049,
                        "name":"fresh thyme",
                        "localizedName":"fresh thyme",
                        "image":"thyme.jpg"
                     },
                     {
                        "id":98853,
                        "name":"gnocchi",
                        "localizedName":"gnocchi",
                        "image":"gnocchi-isolated.jpg"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":21,
                  "step":"Serves",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":22,
                  "step":"If the cream sauce thickens too much, add a little water from the gnocchi pot to thin it out!",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"cream sauce",
                        "localizedName":"cream sauce",
                        "image":""
                     },
                     {
                        "id":98853,
                        "name":"gnocchi",
                        "localizedName":"gnocchi",
                        "image":"gnocchi-isolated.jpg"
                     },
                     {
                        "id":14412,
                        "name":"water",
                        "localizedName":"water",
                        "image":"water.png"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404752,
                        "name":"pot",
                        "localizedName":"pot",
                        "image":"stock-pot.jpg"
                     }
                  ]
               }
            ]
         }
      ],
      "originalId":"None",
      "spoonacularSourceUrl":"https://spoonacular.com/butternut-squash-gnocchi-with-whiskey-cream-sauce-636599"
   }
}');
INSERT INTO "users" VALUES (5,'Erik Hartker','emhartker429@gmail.com',2,'mexican','{
   "Easy Shrimp Scampi":{
      "vegetarian":false,
      "vegan":false,
      "glutenFree":true,
      "dairyFree":false,
      "veryHealthy":false,
      "cheap":false,
      "veryPopular":false,
      "sustainable":false,
      "lowFodmap":false,
      "weightWatcherSmartPoints":7,
      "gaps":"no",
      "preparationMinutes":-1,
      "cookingMinutes":-1,
      "aggregateLikes":27,
      "healthScore":2,
      "creditsText":"Foodista.com – The Cooking Encyclopedia Everyone Can Edit",
      "license":"CC BY 3.0",
      "sourceName":"Foodista",
      "pricePerServing":306.85,
      "extendedIngredients":[
         {
            "id":1001,
            "aisle":"Milk, Eggs, Other Dairy",
            "image":"butter-sliced.jpg",
            "consistency":"SOLID",
            "name":"butter",
            "nameClean":"butter",
            "original":"4 tablespoons butter",
            "originalName":"butter",
            "amount":4.0,
            "unit":"tablespoons",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               }
            }
         },
         {
            "id":10511297,
            "aisle":"Produce",
            "image":"parsley.jpg",
            "consistency":"SOLID",
            "name":"parsley",
            "nameClean":"fresh parsley",
            "original":"2 tablespoons fresh parsley",
            "originalName":"fresh parsley",
            "amount":2.0,
            "unit":"tablespoons",
            "meta":[
               "fresh"
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               }
            }
         },
         {
            "id":11215,
            "aisle":"Produce",
            "image":"garlic.png",
            "consistency":"SOLID",
            "name":"garlic",
            "nameClean":"garlic",
            "original":"6 cloves garlic, minced",
            "originalName":"garlic, minced",
            "amount":6.0,
            "unit":"cloves",
            "meta":[
               "minced"
            ],
            "measures":{
               "us":{
                  "amount":6.0,
                  "unitShort":"cloves",
                  "unitLong":"cloves"
               },
               "metric":{
                  "amount":6.0,
                  "unitShort":"cloves",
                  "unitLong":"cloves"
               }
            }
         },
         {
            "id":9152,
            "aisle":"Produce",
            "image":"lemon-juice.jpg",
            "consistency":"LIQUID",
            "name":"lemon juice",
            "nameClean":"lemon juice",
            "original":"2 tablespoons lemon juice",
            "originalName":"lemon juice",
            "amount":2.0,
            "unit":"tablespoons",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"Tbsps",
                  "unitLong":"Tbsps"
               }
            }
         },
         {
            "id":4053,
            "aisle":"Oil, Vinegar, Salad Dressing",
            "image":"olive-oil.jpg",
            "consistency":"LIQUID",
            "name":"olive oil",
            "nameClean":"olive oil",
            "original":"1 tablespoon olive oil",
            "originalName":"olive oil",
            "amount":1.0,
            "unit":"tablespoon",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"Tbsp",
                  "unitLong":"Tbsp"
               },
               "metric":{
                  "amount":1.0,
                  "unitShort":"Tbsp",
                  "unitLong":"Tbsp"
               }
            }
         },
         {
            "id":1002030,
            "aisle":"Spices and Seasonings",
            "image":"pepper.jpg",
            "consistency":"SOLID",
            "name":"pepper",
            "nameClean":"black pepper",
            "original":"1/4 teaspoon pepper",
            "originalName":"pepper",
            "amount":0.25,
            "unit":"teaspoon",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.25,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               },
               "metric":{
                  "amount":0.25,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               }
            }
         },
         {
            "id":2047,
            "aisle":"Spices and Seasonings",
            "image":"salt.jpg",
            "consistency":"SOLID",
            "name":"salt",
            "nameClean":"table salt",
            "original":"1/2 teaspoon salt",
            "originalName":"salt",
            "amount":0.5,
            "unit":"teaspoon",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.5,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               },
               "metric":{
                  "amount":0.5,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               }
            }
         },
         {
            "id":15270,
            "aisle":"Seafood",
            "image":"shrimp.png",
            "consistency":"SOLID",
            "name":"shrimp",
            "nameClean":"shrimp",
            "original":"1 pound shrimp, shelled",
            "originalName":"shrimp, shelled",
            "amount":1.0,
            "unit":"pound",
            "meta":[
               "shelled"
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"lb",
                  "unitLong":"pound"
               },
               "metric":{
                  "amount":453.592,
                  "unitShort":"g",
                  "unitLong":"grams"
               }
            }
         },
         {
            "id":14106,
            "aisle":"Alcoholic Beverages",
            "image":"white-wine.jpg",
            "consistency":"LIQUID",
            "name":"white wine",
            "nameClean":"dry white wine",
            "original":"1/2 cup white wine",
            "originalName":"white wine",
            "amount":0.5,
            "unit":"cup",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.5,
                  "unitShort":"cups",
                  "unitLong":"cups"
               },
               "metric":{
                  "amount":118.294,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         }
      ],
      "id":642096,
      "title":"Easy Shrimp Scampi",
      "readyInMinutes":45,
      "servings":4,
      "sourceUrl":"http://www.foodista.com/recipe/PVM55SR7/shrimp-scampi",
      "image":"https://spoonacular.com/recipeImages/642096-556x370.jpg",
      "imageType":"jpg",
      "summary":"Easy Shrimp Scampi is a Mediterranean main course. This recipe serves 4 and costs $3.07 per serving. One portion of this dish contains roughly <b>23g of protein</b>, <b>15g of fat</b>, and a total of <b>262 calories</b>. This recipe from Foodista has 27 fans. If you have butter, salt, olive oil, and a few other ingredients on hand, you can make it. It is a good option if you\\''re following a <b>gluten free, primal, and pescatarian</b> diet. From preparation to the plate, this recipe takes around <b>45 minutes</b>. Taking all factors into account, this recipe <b>earns a spoonacular score of 45%</b>, which is pretty good. Similar recipes are <a href=\"https://spoonacular.com/recipes/easy-shrimp-scampi-443814\">Easy Shrimp Scampi</a>, <a href=\"https://spoonacular.com/recipes/easy-shrimp-scampi-894437\">Easy Shrimp Scampi</a>, and <a href=\"https://spoonacular.com/recipes/easy-shrimp-scampi-1258445\">Easy Shrimp Scampi</a>.",
      "cuisines":[
         "Mediterranean",
         "Italian",
         "European"
      ],
      "dishTypes":[
         "lunch",
         "main course",
         "main dish",
         "dinner"
      ],
      "diets":[
         "gluten free",
         "primal",
         "pescatarian"
      ],
      "occasions":[
         
      ],
      "instructions":"<ol><li>In a large skillet, melt butter and oil. Add garlic and saute 30 seconds.</li><li>Stir in wine and lemon juice and cook 1 minute.</li><li>Stir in shrimp, parsley, salt and pepper. Cook 2-3 minutes over high heat, stir constantly.</li><li>Serve with pasta or rice.</li></ol>",
      "analyzedInstructions":[
         {
            "name":"",
            "steps":[
               {
                  "number":1,
                  "step":"In a large skillet, melt butter and oil.",
                  "ingredients":[
                     {
                        "id":1001,
                        "name":"butter",
                        "localizedName":"butter",
                        "image":"butter-sliced.jpg"
                     },
                     {
                        "id":4582,
                        "name":"cooking oil",
                        "localizedName":"cooking oil",
                        "image":"vegetable-oil.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404645,
                        "name":"frying pan",
                        "localizedName":"frying pan",
                        "image":"pan.png"
                     }
                  ]
               },
               {
                  "number":2,
                  "step":"Add garlic and saute 30 seconds.Stir in wine and lemon juice and cook 1 minute.Stir in shrimp, parsley, salt and pepper. Cook 2-3 minutes over high heat, stir constantly.",
                  "ingredients":[
                     {
                        "id":1102047,
                        "name":"salt and pepper",
                        "localizedName":"salt and pepper",
                        "image":"salt-and-pepper.jpg"
                     },
                     {
                        "id":9152,
                        "name":"lemon juice",
                        "localizedName":"lemon juice",
                        "image":"lemon-juice.jpg"
                     },
                     {
                        "id":11297,
                        "name":"parsley",
                        "localizedName":"parsley",
                        "image":"parsley.jpg"
                     },
                     {
                        "id":11215,
                        "name":"garlic",
                        "localizedName":"garlic",
                        "image":"garlic.png"
                     },
                     {
                        "id":15270,
                        "name":"shrimp",
                        "localizedName":"shrimp",
                        "image":"shrimp.png"
                     },
                     {
                        "id":14084,
                        "name":"wine",
                        "localizedName":"wine",
                        "image":"red-wine.jpg"
                     }
                  ],
                  "equipment":[
                     
                  ],
                  "length":{
                     "number":4,
                     "unit":"minutes"
                  }
               },
               {
                  "number":3,
                  "step":"Serve with pasta or rice.",
                  "ingredients":[
                     {
                        "id":20420,
                        "name":"pasta",
                        "localizedName":"pasta",
                        "image":"fusilli.jpg"
                     },
                     {
                        "id":20444,
                        "name":"rice",
                        "localizedName":"rice",
                        "image":"uncooked-white-rice.png"
                     }
                  ],
                  "equipment":[
                     
                  ]
               }
            ]
         }
      ],
      "originalId":"None",
      "spoonacularSourceUrl":"https://spoonacular.com/easy-shrimp-scampi-642096"
   },
   "Butternut Squash Gnocchi With Whiskey Cream Sauce":{
      "vegetarian":false,
      "vegan":false,
      "glutenFree":false,
      "dairyFree":false,
      "veryHealthy":false,
      "cheap":false,
      "veryPopular":false,
      "sustainable":false,
      "lowFodmap":false,
      "weightWatcherSmartPoints":16,
      "gaps":"no",
      "preparationMinutes":-1,
      "cookingMinutes":-1,
      "aggregateLikes":72,
      "healthScore":13,
      "creditsText":"Foodista.com – The Cooking Encyclopedia Everyone Can Edit",
      "license":"CC BY 3.0",
      "sourceName":"Foodista",
      "pricePerServing":402.9,
      "extendedIngredients":[
         {
            "id":11485,
            "aisle":"Produce",
            "image":"butternut-squash.jpg",
            "consistency":"SOLID",
            "name":"butternut squash",
            "nameClean":"butternut squash",
            "original":"1 small butternut squash, about 1 lb.",
            "originalName":"butternut squash, about 1 lb",
            "amount":1.0,
            "unit":"small",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"small",
                  "unitLong":"small"
               },
               "metric":{
                  "amount":1.0,
                  "unitShort":"small",
                  "unitLong":"small"
               }
            }
         },
         {
            "id":1033,
            "aisle":"Cheese",
            "image":"parmesan.jpg",
            "consistency":"SOLID",
            "name":"parmesan cheese",
            "nameClean":"parmesan",
            "original":"½ cup Parmesan cheese",
            "originalName":"Parmesan cheese",
            "amount":0.5,
            "unit":"cup",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.5,
                  "unitShort":"cups",
                  "unitLong":"cups"
               },
               "metric":{
                  "amount":118.294,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         },
         {
            "id":2010,
            "aisle":"Spices and Seasonings",
            "image":"cinnamon.jpg",
            "consistency":"SOLID",
            "name":"nutmeg",
            "nameClean":"cinnamon",
            "original":"¾ tsp. nutmeg, cinnamon, or ginger",
            "originalName":"nutmeg, cinnamon, or ginger",
            "amount":0.75,
            "unit":"tsp",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.75,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               },
               "metric":{
                  "amount":0.75,
                  "unitShort":"tsps",
                  "unitLong":"teaspoons"
               }
            }
         },
         {
            "id":2047,
            "aisle":"Spices and Seasonings",
            "image":"salt.jpg",
            "consistency":"SOLID",
            "name":"salt",
            "nameClean":"table salt",
            "original":"1 tsp. salt",
            "originalName":"salt",
            "amount":1.0,
            "unit":"tsp",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"tsp",
                  "unitLong":"teaspoon"
               },
               "metric":{
                  "amount":1.0,
                  "unitShort":"tsp",
                  "unitLong":"teaspoon"
               }
            }
         },
         {
            "id":10211821,
            "aisle":"Produce",
            "image":"bell-pepper-orange.png",
            "consistency":"SOLID",
            "name":"bell pepper",
            "nameClean":"bell pepper",
            "original":"Pepper to taste",
            "originalName":"Pepper to taste",
            "amount":4.0,
            "unit":"servings",
            "meta":[
               "to taste"
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               }
            }
         },
         {
            "id":1123,
            "aisle":"Milk, Eggs, Other Dairy",
            "image":"egg.png",
            "consistency":"SOLID",
            "name":"eggs",
            "nameClean":"egg",
            "original":"2 eggs",
            "originalName":"eggs",
            "amount":2.0,
            "unit":"",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"",
                  "unitLong":""
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"",
                  "unitLong":""
               }
            }
         },
         {
            "id":1001,
            "aisle":"Milk, Eggs, Other Dairy",
            "image":"butter-sliced.jpg",
            "consistency":"SOLID",
            "name":"butter",
            "nameClean":"butter",
            "original":"3 Tb. butter",
            "originalName":"butter",
            "amount":3.0,
            "unit":"Tb",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":3.0,
                  "unitShort":"Tb",
                  "unitLong":"Tbs"
               },
               "metric":{
                  "amount":3.0,
                  "unitShort":"Tb",
                  "unitLong":"Tbs"
               }
            }
         },
         {
            "id":20081,
            "aisle":"Baking",
            "image":"flour.png",
            "consistency":"SOLID",
            "name":"flour",
            "nameClean":"wheat flour",
            "original":"2 Tb. flour",
            "originalName":"flour",
            "amount":2.0,
            "unit":"Tb",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"Tb",
                  "unitLong":"Tbs"
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"Tb",
                  "unitLong":"Tbs"
               }
            }
         },
         {
            "id":11677,
            "aisle":"Produce",
            "image":"shallots.jpg",
            "consistency":"SOLID",
            "name":"shallots",
            "nameClean":"shallot",
            "original":"2 shallots, finely diced",
            "originalName":"shallots, finely diced",
            "amount":2.0,
            "unit":"",
            "meta":[
               "diced",
               "finely"
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"",
                  "unitLong":""
               },
               "metric":{
                  "amount":2.0,
                  "unitShort":"",
                  "unitLong":""
               }
            }
         },
         {
            "id":11215,
            "aisle":"Produce",
            "image":"garlic.png",
            "consistency":"SOLID",
            "name":"garlic",
            "nameClean":"garlic",
            "original":"4 cloves garlic, minced",
            "originalName":"garlic, minced",
            "amount":4.0,
            "unit":"cloves",
            "meta":[
               "minced"
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"cloves",
                  "unitLong":"cloves"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"cloves",
                  "unitLong":"cloves"
               }
            }
         },
         {
            "id":6172,
            "aisle":"Canned and Jarred",
            "image":"chicken-broth.png",
            "consistency":"LIQUID",
            "name":"chicken stock",
            "nameClean":"chicken stock",
            "original":"2 cups chicken stock",
            "originalName":"chicken stock",
            "amount":2.0,
            "unit":"cups",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":2.0,
                  "unitShort":"cups",
                  "unitLong":"cups"
               },
               "metric":{
                  "amount":473.176,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         },
         {
            "id":10014037,
            "aisle":"Alcoholic Beverages",
            "image":"bourbon.png",
            "consistency":"LIQUID",
            "name":"bourbon",
            "nameClean":"bourbon",
            "original":"1 cup bourbon",
            "originalName":"bourbon",
            "amount":1.0,
            "unit":"cup",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":1.0,
                  "unitShort":"cup",
                  "unitLong":"cup"
               },
               "metric":{
                  "amount":236.588,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         },
         {
            "id":1053,
            "aisle":"Milk, Eggs, Other Dairy",
            "image":"fluid-cream.jpg",
            "consistency":"LIQUID",
            "name":"heavy cream",
            "nameClean":"cream",
            "original":"1/3 cup heavy cream",
            "originalName":"heavy cream",
            "amount":0.33333334,
            "unit":"cup",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":0.333,
                  "unitShort":"cups",
                  "unitLong":"cups"
               },
               "metric":{
                  "amount":78.863,
                  "unitShort":"ml",
                  "unitLong":"milliliters"
               }
            }
         },
         {
            "id":1102047,
            "aisle":"Spices and Seasonings",
            "image":"salt-and-pepper.jpg",
            "consistency":"SOLID",
            "name":"salt and pepper",
            "nameClean":"salt and pepper",
            "original":"Salt and pepper",
            "originalName":"Salt and pepper",
            "amount":4.0,
            "unit":"servings",
            "meta":[
               
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               }
            }
         },
         {
            "id":1012049,
            "aisle":"Produce",
            "image":"thyme.jpg",
            "consistency":"SOLID",
            "name":"thyme leaves",
            "nameClean":"fresh thyme",
            "original":"Fresh thyme leaves for garnish",
            "originalName":"Fresh thyme leaves for garnish",
            "amount":4.0,
            "unit":"servings",
            "meta":[
               "fresh",
               "for garnish"
            ],
            "measures":{
               "us":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               },
               "metric":{
                  "amount":4.0,
                  "unitShort":"servings",
                  "unitLong":"servings"
               }
            }
         }
      ],
      "id":636599,
      "title":"Butternut Squash Gnocchi With Whiskey Cream Sauce",
      "readyInMinutes":45,
      "servings":4,
      "sourceUrl":"https://www.foodista.com/recipe/PVYSZMS6/butternut-squash-gnocchi-with-whiskey-cream-sauce",
      "image":"https://spoonacular.com/recipeImages/636599-556x370.jpg",
      "imageType":"jpg",
      "summary":"Butternut Squash Gnocchi With Whiskey Cream Sauce is a main course that serves 4. One serving contains <b>539 calories</b>, <b>14g of protein</b>, and <b>23g of fat</b>. For <b>$4.03 per serving</b>, this recipe <b>covers 27%</b> of your daily requirements of vitamins and minerals. This recipe from Foodista has 72 fans. From preparation to the plate, this recipe takes around <b>45 minutes</b>. If you have eggs, parmesan cheese, heavy cream, and a few other ingredients on hand, you can make it. A few people really liked this Mediterranean dish. All things considered, we decided this recipe <b>deserves a spoonacular score of 60%</b>. This score is pretty good. Users who liked this recipe also liked <a href=\"https://spoonacular.com/recipes/butternut-squash-gnocchi-with-whiskey-cream-sauce-77415\">Butternut Squash Gnocchi With Whiskey Cream Sauce</a>, <a href=\"https://spoonacular.com/recipes/butternut-squash-gnocchi-with-whiskey-cream-sauce-552216\">Butternut Squash Gnocchi with Whiskey Cream Sauce</a>, and <a href=\"https://spoonacular.com/recipes/butternut-squash-and-sage-cream-sauce-1202417\">Butternut Squash and Sage Cream Sauce</a>.",
      "cuisines":[
         "Mediterranean",
         "Italian",
         "European"
      ],
      "dishTypes":[
         "side dish",
         "lunch",
         "main course",
         "main dish",
         "dinner"
      ],
      "diets":[
         
      ],
      "occasions":[
         
      ],
      "instructions":"Preheat the oven to 450 degrees F. Cut the squach in half. Remove the seeds and lay on a oiled, rimmed baking sheets. Roast the squash until soft30-40 minutes.\nScoop the flesh of the squash out and place it in the food processor. Puree until completely smooth.\nMix the pureed squash with Parmesan cheese, nutmeg, salt, pepper and eggs. Then add the flour into the mixture and work together by hand. It will be very sticky.\nOnce smooth, flour a work surface and a large piece of parchment paper. Flour your hands and grab a handful of dough. Roll into a long strip, about  inch wide. Cut the strip into  pieces.\nThis is the tricky part~ Place each piece in the palm of your hand (or on the cutting board) and gently roll with a fork to create ridges. Place each piece on the floured parchment paper and repeat with the rest of the dough.\nBring a large pot of water to boil. Boil half the gnocchi, then remove and repeat. With each batch, boil until all the gnocchi floatsabout 5 minutes.\nMeanwhile, heat another large skillet over medium heat. Add the butter and flour, whisk until smooth.\nThen add the shallots and garlic. Saute for 3 minutes.\nThen add the bourbon and chicken stock.\nWhisk and raise heat. Bring the sauce to a boil. Allow the sauce to reduce down to a thin gravy-like consistency. Then lower the heat to medium-low and add the cream. Salt and pepper to tasteusually about 1 tsp. of salt.\nOnce the gnocchi are finished cooking, remove them with a skimmer and place them directly into the cream sauce. Stir to coat.\nServe the gnocchi warm and garnish with fresh thyme leaves! Serves 4.\nIf the cream sauce thickens too much, add a little water from the gnocchi pot to thin it out!",
      "analyzedInstructions":[
         {
            "name":"",
            "steps":[
               {
                  "number":1,
                  "step":"Preheat the oven to 450 degrees F.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     {
                        "id":404784,
                        "name":"oven",
                        "localizedName":"oven",
                        "image":"oven.jpg",
                        "temperature":{
                           "number":450.0,
                           "unit":"Fahrenheit"
                        }
                     }
                  ]
               },
               {
                  "number":2,
                  "step":"Cut the squach in half.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":3,
                  "step":"Remove the seeds and lay on a oiled, rimmed baking sheets. Roast the squash until soft30-40 minutes.",
                  "ingredients":[
                     {
                        "id":10011485,
                        "name":"squash",
                        "localizedName":"squash",
                        "image":"butternut-squash.jpg"
                     },
                     {
                        "id":93818,
                        "name":"seeds",
                        "localizedName":"seeds",
                        "image":"sunflower-seeds.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404727,
                        "name":"baking sheet",
                        "localizedName":"baking sheet",
                        "image":"baking-sheet.jpg"
                     }
                  ],
                  "length":{
                     "number":40,
                     "unit":"minutes"
                  }
               },
               {
                  "number":4,
                  "step":"Scoop the flesh of the squash out and place it in the food processor. Puree until completely smooth.",
                  "ingredients":[
                     {
                        "id":10011485,
                        "name":"squash",
                        "localizedName":"squash",
                        "image":"butternut-squash.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404771,
                        "name":"food processor",
                        "localizedName":"food processor",
                        "image":"food-processor.png"
                     }
                  ]
               },
               {
                  "number":5,
                  "step":"Mix the pureed squash with Parmesan cheese, nutmeg, salt, pepper and eggs. Then add the flour into the mixture and work together by hand. It will be very sticky.",
                  "ingredients":[
                     {
                        "id":1033,
                        "name":"parmesan",
                        "localizedName":"parmesan",
                        "image":"parmesan.jpg"
                     },
                     {
                        "id":2025,
                        "name":"nutmeg",
                        "localizedName":"nutmeg",
                        "image":"ground-nutmeg.jpg"
                     },
                     {
                        "id":1002030,
                        "name":"pepper",
                        "localizedName":"pepper",
                        "image":"pepper.jpg"
                     },
                     {
                        "id":10011485,
                        "name":"squash",
                        "localizedName":"squash",
                        "image":"butternut-squash.jpg"
                     },
                     {
                        "id":20081,
                        "name":"all purpose flour",
                        "localizedName":"all purpose flour",
                        "image":"flour.png"
                     },
                     {
                        "id":1123,
                        "name":"egg",
                        "localizedName":"egg",
                        "image":"egg.png"
                     },
                     {
                        "id":2047,
                        "name":"salt",
                        "localizedName":"salt",
                        "image":"salt.jpg"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":6,
                  "step":"Once smooth, flour a work surface and a large piece of parchment paper. Flour your hands and grab a handful of dough.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"dough",
                        "localizedName":"dough",
                        "image":"pizza-dough"
                     },
                     {
                        "id":20081,
                        "name":"all purpose flour",
                        "localizedName":"all purpose flour",
                        "image":"flour.png"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404770,
                        "name":"baking paper",
                        "localizedName":"baking paper",
                        "image":"baking-paper.jpg"
                     }
                  ]
               },
               {
                  "number":7,
                  "step":"Roll into a long strip, about  inch wide.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"roll",
                        "localizedName":"roll",
                        "image":"dinner-yeast-rolls.jpg"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":8,
                  "step":"Cut the strip into  pieces.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":9,
                  "step":"This is the tricky part~",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":10,
                  "step":"Place each piece in the palm of your hand (or on the cutting board) and gently roll with a fork to create ridges.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"roll",
                        "localizedName":"roll",
                        "image":"dinner-yeast-rolls.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404716,
                        "name":"cutting board",
                        "localizedName":"cutting board",
                        "image":"cutting-board.jpg"
                     }
                  ]
               },
               {
                  "number":11,
                  "step":"Place each piece on the floured parchment paper and repeat with the rest of the dough.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"dough",
                        "localizedName":"dough",
                        "image":"pizza-dough"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404770,
                        "name":"baking paper",
                        "localizedName":"baking paper",
                        "image":"baking-paper.jpg"
                     }
                  ]
               },
               {
                  "number":12,
                  "step":"Bring a large pot of water to boil. Boil half the gnocchi, then remove and repeat. With each batch, boil until all the gnocchi floatsabout 5 minutes.",
                  "ingredients":[
                     {
                        "id":98853,
                        "name":"gnocchi",
                        "localizedName":"gnocchi",
                        "image":"gnocchi-isolated.jpg"
                     },
                     {
                        "id":14412,
                        "name":"water",
                        "localizedName":"water",
                        "image":"water.png"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404752,
                        "name":"pot",
                        "localizedName":"pot",
                        "image":"stock-pot.jpg"
                     }
                  ],
                  "length":{
                     "number":5,
                     "unit":"minutes"
                  }
               },
               {
                  "number":13,
                  "step":"Meanwhile, heat another large skillet over medium heat.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     {
                        "id":404645,
                        "name":"frying pan",
                        "localizedName":"frying pan",
                        "image":"pan.png"
                     }
                  ]
               },
               {
                  "number":14,
                  "step":"Add the butter and flour, whisk until smooth.",
                  "ingredients":[
                     {
                        "id":1001,
                        "name":"butter",
                        "localizedName":"butter",
                        "image":"butter-sliced.jpg"
                     },
                     {
                        "id":20081,
                        "name":"all purpose flour",
                        "localizedName":"all purpose flour",
                        "image":"flour.png"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404661,
                        "name":"whisk",
                        "localizedName":"whisk",
                        "image":"whisk.png"
                     }
                  ]
               },
               {
                  "number":15,
                  "step":"Then add the shallots and garlic.",
                  "ingredients":[
                     {
                        "id":11677,
                        "name":"shallot",
                        "localizedName":"shallot",
                        "image":"shallots.jpg"
                     },
                     {
                        "id":11215,
                        "name":"garlic",
                        "localizedName":"garlic",
                        "image":"garlic.png"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":16,
                  "step":"Saute for 3 minutes.",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ],
                  "length":{
                     "number":3,
                     "unit":"minutes"
                  }
               },
               {
                  "number":17,
                  "step":"Then add the bourbon and chicken stock.",
                  "ingredients":[
                     {
                        "id":6172,
                        "name":"chicken stock",
                        "localizedName":"chicken stock",
                        "image":"chicken-broth.png"
                     },
                     {
                        "id":10014037,
                        "name":"bourbon",
                        "localizedName":"bourbon",
                        "image":"bourbon.png"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":18,
                  "step":"Whisk and raise heat. Bring the sauce to a boil. Allow the sauce to reduce down to a thin gravy-like consistency. Then lower the heat to medium-low and add the cream. Salt and pepper to tasteusually about 1 tsp. of salt.",
                  "ingredients":[
                     {
                        "id":1102047,
                        "name":"salt and pepper",
                        "localizedName":"salt and pepper",
                        "image":"salt-and-pepper.jpg"
                     },
                     {
                        "id":1053,
                        "name":"cream",
                        "localizedName":"cream",
                        "image":"fluid-cream.jpg"
                     },
                     {
                        "id":6997,
                        "name":"gravy",
                        "localizedName":"gravy",
                        "image":"gravy.jpg"
                     },
                     {
                        "id":0,
                        "name":"sauce",
                        "localizedName":"sauce",
                        "image":""
                     },
                     {
                        "id":2047,
                        "name":"salt",
                        "localizedName":"salt",
                        "image":"salt.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404661,
                        "name":"whisk",
                        "localizedName":"whisk",
                        "image":"whisk.png"
                     }
                  ]
               },
               {
                  "number":19,
                  "step":"Once the gnocchi are finished cooking, remove them with a skimmer and place them directly into the cream sauce. Stir to coat.",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"cream sauce",
                        "localizedName":"cream sauce",
                        "image":""
                     },
                     {
                        "id":98853,
                        "name":"gnocchi",
                        "localizedName":"gnocchi",
                        "image":"gnocchi-isolated.jpg"
                     }
                  ],
                  "equipment":[
                     {
                        "id":405894,
                        "name":"skimmer",
                        "localizedName":"skimmer",
                        "image":"skimmer-spoon.jpg"
                     }
                  ]
               },
               {
                  "number":20,
                  "step":"Serve the gnocchi warm and garnish with fresh thyme leaves!",
                  "ingredients":[
                     {
                        "id":1012049,
                        "name":"fresh thyme",
                        "localizedName":"fresh thyme",
                        "image":"thyme.jpg"
                     },
                     {
                        "id":98853,
                        "name":"gnocchi",
                        "localizedName":"gnocchi",
                        "image":"gnocchi-isolated.jpg"
                     }
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":21,
                  "step":"Serves",
                  "ingredients":[
                     
                  ],
                  "equipment":[
                     
                  ]
               },
               {
                  "number":22,
                  "step":"If the cream sauce thickens too much, add a little water from the gnocchi pot to thin it out!",
                  "ingredients":[
                     {
                        "id":0,
                        "name":"cream sauce",
                        "localizedName":"cream sauce",
                        "image":""
                     },
                     {
                        "id":98853,
                        "name":"gnocchi",
                        "localizedName":"gnocchi",
                        "image":"gnocchi-isolated.jpg"
                     },
                     {
                        "id":14412,
                        "name":"water",
                        "localizedName":"water",
                        "image":"water.png"
                     }
                  ],
                  "equipment":[
                     {
                        "id":404752,
                        "name":"pot",
                        "localizedName":"pot",
                        "image":"stock-pot.jpg"
                     }
                  ]
               }
            ]
         }
      ],
      "originalId":"None",
      "spoonacularSourceUrl":"https://spoonacular.com/butternut-squash-gnocchi-with-whiskey-cream-sauce-636599"
   }
}');
COMMIT;
