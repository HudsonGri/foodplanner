import sqlite3
import requests
from dotenv import load_dotenv
import os
import random
import json
import datetime;
 


load_dotenv()
API_KEYS = json.loads(os.environ.get("API_KEYS"))
API_KEYS = ['b3819217af174f7b8843d8d1a0b23414', 'f45f67f275cc4f94b9c73f53c811e1db', '9bb10413c1f9443498fd5ee9d298dd42', 'afccf7cee591448eb7a5bddd8a30a8fe', '6a3fd172e63545f587241adcb4c1e2e7', 'd074d01e22274a8d8bf05846e2011f32', 'b6f5b96d449343d2b7e0d2d09e0a3ae5', "b58a4f86ca3c410185be924fb7effa81", '9dbb15b37f1d4937aa4501fb44184958', 'a17341ede0344fa2b1b0780797bbd5dc', 'af48a6bd4f6a4340a05f9a2e21c2772e', '28435f7812dc4e7f9e7d2f39ac40eee8', 'f477e25a40eb4350a76f2b1bdb5fea2d', '85296af3e24c4f89bc890e8d1518aaa3', '2485706c979a4d948f99613f5cdad29b', '01c0ccd321ec42a5be88864b89ecb947', '9696ba3c652d4a5e9f27f76d62a9d2d2', '2ed479313b0448bea5d361e19c8d9a40', '7af027d32461438bbd22a3c8c0e54234', '1540b3096e6c4c259c80b167fb18b25f', 'ad1b33dfaa2d4e69a8779a7cdc62c10f', '39fa36ebf4d54f4abb5923ef98694302', 'cb904a430a6c4fbda2fc79002ce6cc6c', '97c570a3570d48f4aca3d6a6f2d5cabc', '113898c370da43b48e4e46d60fc4255f']

def get_key():
    return random.choice(API_KEYS)


def find_most_overlap_lists(all_lists, n):
    """
    Given a dictionary of the format {name: list_of_items}, this function finds the n keys of the lists that have the most overlap in items.
    """
    overlap_count = {}

    # Iterate over each pair of lists
    for i, (name_i, list_i) in enumerate(all_lists.items()):
        for j, (name_j, list_j) in enumerate(all_lists.items()):
            if i >= j:
                continue
            # Count the number of overlapping items between the two lists
            count = len(set(list_i).intersection(set(list_j)))
            # Update the overlap_count dictionary
            if name_i not in overlap_count:
                overlap_count[name_i] = count
            else:
                overlap_count[name_i] += count

            if name_j not in overlap_count:
                overlap_count[name_j] = count
            else:
                overlap_count[name_j] += count

    # Sort the overlap_count dictionary by value in descending order
    sorted_overlap_count = sorted(
        overlap_count.items(), key=lambda x: x[1], reverse=True)

    print("Ingredient Overlap Count: " +
          str(sorted(overlap_count.values(), reverse=True)[:n]))

    # Return the n keys of the lists with the most overlap
    return [name for name, _ in sorted_overlap_count[:n]]


def get_recipes(data, n):

    response = requests.get(
        f"https://api.spoonacular.com/recipes/random?apiKey={get_key()}", params=data)

    data = response.json()

    recipes = {}

    for item in data['recipes']:
        temp_ingredients = []
        for ingredient in item['extendedIngredients']:
            temp_ingredients.append(ingredient['name'])
        recipes[item['title']] = temp_ingredients

    overlap = find_most_overlap_lists(recipes, n)

    print(len(recipes))
    print(n)

    if len(overlap) == 0:
        if n > len(recipes):
            overlap = recipes
        else:
            overlap = random.choices(recipes, k=n)

    final_recipes = {}

    for recipe in data['recipes']:
        if recipe['title'] in overlap:
            final_recipes[recipe['title'].title()] = recipe

    return final_recipes


def return_recipes(usr_email):
    con = sqlite3.connect("../database.sqlite3")
    cur = con.cursor()
    cuisines, allergies, diets = get_cusine_prefs(usr_email)


    
    selected_cuisines = []

    recipe_res = {}
    # Number of cuisines
    m = 3
    if len(cuisines) >= m:
        selected_cuisines = random.sample(cuisines, m)
    elif len(cuisines) == 0:
        selected_cuisines = random.sample(['african', 'american', 'british', 'cajun', 'caribbean', 'chinese', 'eastern european', 'european', 'french', 'german', 'greek', 'indian', 'irish', 'italian', 'japanese', 'jewish', 'korean', 'latin american', 'mediterranean', 'mexican', 'middle eastern', 'nordic', 'southern', 'spanish', 'thai', 'vietnamese'],3)
    else:
        selected_cuisines = cuisines.copy()
        while len(selected_cuisines) < m:
            cuisine = random.choice(cuisines)
            selected_cuisines.append(cuisine)
        
    print(selected_cuisines)
    for index, random_cuisine in enumerate(selected_cuisines):
        
        data = {
            'tags': f"main,{','.join(allergies)},{','.join(diets)},{random_cuisine}",
            'number': 12
        }
        print(f"Searching: {str(data)}")
        # Get recipes
        recipes = get_recipes(data, 8)
        recipe_res.update(recipes)


    
    #print(recipe_res)
    cur.execute(
        """UPDATE users SET recipes = ? WHERE email = ? """, (str(json.dumps(recipe_res)), usr_email))
    con.commit()
    print("Added recipes to database")




    return {'recipe_result': recipe_res, 'status': 'success'}


def get_cusine_prefs(usr_email):
    con = sqlite3.connect("../database.sqlite3")
    cur = con.cursor()

    res = cur.execute(
        """SELECT * FROM users where email == ? """, (usr_email,))

    search_res = res.fetchall()

    pref_obj = json.loads(search_res[0][4])

    

    cuisines = []

    allergies = []

    diets = []

    for cuisine, selected in pref_obj['cuisines'].items():
        if selected:
            cuisines.append(cuisine.replace("_", " "))
        
    for allergy, selected in pref_obj['allergies'].items():
        if selected:
            allergies.append(allergy.replace("_", " "))

    for diet, selected in pref_obj['diets'].items():
        if selected:
            diets.append(diet.replace("_", " "))


    return cuisines, allergies, diets

 
def add_recipe(usr_email, data):
    print(data)
    title = json.loads(data)['title']

    con = sqlite3.connect("../database.sqlite3")
    cur = con.cursor()

    res = cur.execute(
        """SELECT * FROM users where email == ? """, (usr_email,))

    search_res = res.fetchall()

    week_suggestions = json.loads(search_res[0][5])

    res = cur.execute(
        """SELECT * FROM users where email == ? """, (usr_email,))
    search_res = res.fetchall()
    current_week = json.loads(search_res[0][6])

    current_week[title] = json.loads(data)

    current_week[title]['timestamp'] = datetime.datetime.now().timestamp()

    cur.execute(
    """UPDATE users SET week_recipes = ? WHERE email = ? """, (str(json.dumps(current_week)), usr_email))
    con.commit()

    print("added to choices")

    return {'status': 'success'}
    
def remove_recipe(usr_email, data):
    title = json.loads(data)['title']

    con = sqlite3.connect("../database.sqlite3")
    cur = con.cursor()

    res = cur.execute(
        """SELECT * FROM users where email == ? """, (usr_email,))

    search_res = res.fetchall()

    #week_suggestions = json.loads(search_res[0][5])

    res = cur.execute(
        """SELECT * FROM users where email == ? """, (usr_email,))
    search_res = res.fetchall()
    current_week = json.loads(search_res[0][6])

    del current_week[title]

    cur.execute(
    """UPDATE users SET week_recipes = ? WHERE email = ? """, (str(json.dumps(current_week)), usr_email))
    con.commit()

    print("removed from choices")

    return {'status': 'success'}
    
def search(cuisine_type):

    data = {
            'tags': f"main,{cuisine_type}",
            'number': 12
        }

    response = requests.get(
        f"https://api.spoonacular.com/recipes/random?apiKey={get_key()}", params=data)

    print(response.text)
    data = response.json()


    return {'data': data['recipes'], 'status': 'success'}
    
