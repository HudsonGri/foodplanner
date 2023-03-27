import sqlite3
import requests
from dotenv import load_dotenv
import os
import random
import json


load_dotenv()
API_KEYS = json.loads(os.environ.get("API_KEYS"))
print(API_KEYS)
rand_key = random.choice(API_KEYS)


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
        f"https://api.spoonacular.com/recipes/random?apiKey={rand_key}", params=data)

    data = response.json()
    print("DATA:")
    print(data)

    recipes = {}

    for item in data['recipes']:
        temp_ingredients = []
        for ingredient in item['extendedIngredients']:
            temp_ingredients.append(ingredient['name'])
        recipes[item['title']] = temp_ingredients

    overlap = find_most_overlap_lists(recipes, n)

    if len(overlap) == 0:
        overlap = random.choices(recipes, k=n)

    final_recipes = {}

    for recipe in data['recipes']:
        if recipe['title'] in overlap:
            final_recipes[recipe['title'].title()] = recipe

    return final_recipes


def return_recipes(usr_email):
    con = sqlite3.connect("../database.sqlite3")
    cur = con.cursor()

    res = cur.execute(
        """SELECT * FROM users where email == ? """, (usr_email,))

    search_res = res.fetchall()

    cusine_pref = search_res[0][4]
    print(cusine_pref)

    
    data = {
        'tags': cusine_pref,
        'number': 20
    }

    print(data)
    
    # Get recipes
    recipes = json.dumps(get_recipes(data, 8))


    cur.execute(
        """UPDATE users SET recipes = ? WHERE email = ? """, (str(recipes), usr_email))
    con.commit()
    print("Added recipes to database")

    print(f"Returning recipe results for {search_res[0][2]}")


    return {'recipe_result': recipes, 'status': 'success'}

print(return_recipes("hudsongriffith@gmail.com"))