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
    cusine_pref, user_cuisine_choices = get_cusine_prefs(usr_email)


    recipe_res = {}


    print(user_cuisine_choices)
    # Number of cuisines
    m = 3
    if len(user_cuisine_choices) >= m:
        selected_cuisines = random.sample(user_cuisine_choices, m)
    else:
        selected_cuisines = user_cuisine_choices.copy()
        while len(selected_cuisines) < m:
            cuisine = random.choice(user_cuisine_choices)
            selected_cuisines.append(cuisine)
        
    print(selected_cuisines)
    for index, random_cuisine in enumerate(selected_cuisines):
        
        data = {
            'tags': f"main,{cusine_pref},{random_cuisine}",
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

    cusine_pref_unparsed = search_res[0][4]

    cusine_pref_list = cusine_pref_unparsed.split(',')

    cuisines = ['african', 'american', 'british', 'cajun', 'caribbean', 'chinese', 'eastern european', 'european', 'french', 'german', 'greek', 'indian', 'irish', 'italian', 'japanese', 'jewish', 'korean', 'latin american', 'mediterranean', 'mexican', 'middle eastern', 'nordic', 'southern', 'spanish', 'thai', 'vietnamese']

    user_cuisine_choices = []
    for item in cusine_pref_list:
        if item in cuisines:
            user_cuisine_choices.append(item)

    


    # Preferences with no cuisines
    just_pref_list = [i for i in cusine_pref_list if i not in user_cuisine_choices]




    res = ','.join(just_pref_list)

    return res, user_cuisine_choices

 
def add_recipe(usr_email, data):
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

    current_week[title] = week_suggestions[title]

    cur.execute(
    """UPDATE users SET week_recipes = ? WHERE email = ? """, (str(json.dumps(current_week)), usr_email))
    con.commit()

    return {'status': 'success'}
    
    #print(title)

#return_recipes("hudsongriffith@gmail.com")