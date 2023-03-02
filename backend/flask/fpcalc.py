import sqlite3
import json





def get_recipes(usr_email):
    con = sqlite3.connect("../database.sqlite3")
    cur = con.cursor()
    
    recipes = {'mexican': 'One-Skillet Mexican Quinoa', 'italian': 'Creamy Tortellini Soup with Sausage'}

    res = cur.execute("""SELECT * FROM users where email == ? """, (usr_email,))

    search_res = res.fetchall()

    cusine_pref = eval(search_res[0][4])
    print(f"Returning recipe results for {search_res[0][2]}")


    return {'recipe_result' : recipes[cusine_pref[0]], 'status': 'success'}

#print(get_recipes("hudsongriffith@gmail.com"))

