  savePreferences() {
    // PATCH to update user preferences
    const preferences = {
      diets: {
        vegan: this.vegan,
        vegetarian: this.vegetarian,
        pescatarian: this.pescatarian,
        ketogenic: this.ketogenic
      },
      allergies: {
        gluten: this.gluten,
        dairy: this.dairy,
        nut: this.nut,
        shellfish: this.shellfish
      },
      cuisines: {
        americanCuisine: this.americanCuisine,
        mexicanCuisine: this.mexicanCuisine,
        chineseCuisine: this.chineseCuisine,
        mediterraneanCuisine: this.mediterraneanCuisine,
        italianCuisine: this.italianCuisine
      },
      overallMealFilters: {
        healthiness: this.healthiness,
        cookingSkillLevel: this.cookingSkillLevel,
        mealCost: this.mealCost
      }
    };

    this.auth.user$.subscribe((user:any) => {
       this.a_user = user;
      console.log(this.a_user)
      this.http.patch<any>('http://localhost:8080/users/' + this.userID, preferences).subscribe(data => {  
        console.log("Preferences Saved Successfully");
      })
    });

  
  }