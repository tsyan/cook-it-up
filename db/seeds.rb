Skill.create(name: "Boiling", url: "http://www.wikihow.com/Boil-Vegetables")
Skill.create(name: "Chopping", url: "http://www.wikihow.com/Chop-Vegetables-Very-Quickly")
Skill.create(name: "Frying", url: "http://www.wikihow.com/Stir-Fry")
Skill.create(name: "Baking", url: "http://www.wikihow.com/Bake")
Skill.create(name: "Pureeing", url: "http://www.wikihow.com/Use-a-Blender")

Recipe.create(name: "Mac 'n Cheese with Peas", url: "http://www.kraftrecipes.com/recipes/cheesy-mac-snow-peas-tomatoes-110584.aspx", skills: Skill.where(name: ["Boiling"]))
Recipe.create(name: "Spaghetti with Meatballs", url: "http://www.campbellskitchen.com/recipes/quick-spaghetti-meatballs-25335", skills: Skill.where(name: ["Boiling"]))
Recipe.create(name: "Penne Pasta with Broccoli", url: "http://allrecipes.com/recipe/broccoli-and-garlic-penne-pasta/", skills: Skill.where(name: ["Boiling"]))
Recipe.create(name: "Ravioli with Alfredo Sauce", url: "http://www.tablespoon.com/recipes/ravioli-in-spinach-alfredo-sauce/727c40cc-081a-4986-bdb9-a0e00b4bf1bd/", skills: Skill.where(name: ["Boiling"]))
Recipe.create(name: "Pesto Pasta", url: "http://allrecipes.com/recipe/pesto-pasta/", skills: Skill.where(name: ["Boiling", "Chopping"]))
Recipe.create(name: "Pasta with Vegetables", url: "http://www.mykitchenaddiction.com/2012/03/easy-pasta-with-vegetables/", skills: Skill.where(name: ["Boiling", "Chopping"]))
Recipe.create(name: "Couscous Salad", url: "http://www.foodnetwork.com/recipes/claire-robinson/mediterranean-couscous-recipe.html", skills: Skill.where(name: ["Boiling", "Chopping"]))
Recipe.create(name: "Quinoa Salad", url: "http://www.tablespoon.com/recipes/simple-quinoa-salad/d627031c-1bfa-4f1a-834f-a203c3199426", skills: Skill.where(name: ["Boiling", "Chopping"]))
Recipe.create(name: "Red Lentil Soup", url: "http://www.food.com/recipe/rustic-red-lentil-soup-only-4-ingredients-291873", skills: Skill.where(name: ["Boiling", "Chopping"]))
Recipe.create(name: "Risotto", url: "http://www.food.com/recipe/easy-risotto-with-bacon-peas-358115", skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]))
Recipe.create(name: "Pasta Primavera", url: "http://www.rachaelraymag.com/recipes/rachael-ray-magazine-recipe-search/dinner-recipes/stir-fried-pasta-primavera", skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]))
Recipe.create(name: "Pineapple Chicken", url: "http://allrecipes.com/Recipe/Pineapple-Chicken/Detail.aspx?evt19=1", skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]))
Recipe.create(name: "Chicken with Cider and Bacon Sauce", url: "http://www.myrecipes.com/recipe/chicken-with-cider-bacon-sauce-10000001011270/", skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]))
Recipe.create(name: "Asian Noodle Bowl with Steak and Peas", url: "http://www.delish.com/recipefinder/asian-noodle-bowls-steak-snow-peas-recipe-mslo0311", skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]))
Recipe.create(name: "Pasta with Sausage and Broccoli Rabe", url: "http://www.delish.com/recipefinder/pasta-sausage-broccoli-rabe-recipe", skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]))
Recipe.create(name: "Pasta with Goat Cheese and Walnuts", url: "http://www.delish.com/recipefinder/whole-grain-shells-goat-cheese-walnuts-recipe-ghk0311", skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]))









Recipe.create(name: "Guacamole", url: "http://allrecipes.com/recipe/guacamole/", skills: Skill.where(name: ["Chopping"]))
Recipe.create(name: "Greek Salad", url: "http://greek.food.com/recipe/greek-cucumber-tomato-and-onion-salad-60752", skills: Skill.where(name: ["Chopping"]))
Recipe.create(name: "Tomato and Avocado Salad", url: "http://www.food.com/recipe/simple-tomato-and-avocado-salad-94520", skills: Skill.where(name: ["Chopping"]))
Recipe.create(name: "Chicken and Vegetable Stirfry", url: "http://www.bettycrocker.com/recipes/vegetable-chicken-stir-fry/458fda98-88e4-43de-8766-b05782ab5488", skills: Skill.where(name: ["Chopping","Frying"]))
Recipe.create(name: "Teriyaki Stirfy", url: "http://whatscookinwithmary.blogspot.com/2011/01/teriyaki-chicken-stir-fry-5-ingredients.html", skills: Skill.where(name: ["Chopping","Frying"]))
Recipe.create(name: "Quesadillas", url: "http://blog.foodnetwork.com/healthyeats/2011/05/05/5-ingredients-quesadillas/", skills: Skill.where(name: ["Chopping","Frying"]))
Recipe.create(name: "Scrambled Eggs with Vegetables", url: "http://allrecipes.com/recipe/extreme-veggie-scrambled-eggs/", skills: Skill.where(name: ["Chopping","Frying"]))
Recipe.create(name: "Shrimp with Scallions", url: "http://www.delish.com/recipefinder/shrimp-scallions-crispy-potatoes-recipe-mslo0411", skills: Skill.where(name: ["Chopping","Frying"]))
Recipe.create(name: "Sauteed Pork Chops with Kale", url: "http://www.delish.com/recipefinder/sauteed-pork-chops-kale-recipe-clv1010", skills: Skill.where(name: ["Chopping","Frying"]))
Recipe.create(name: "Curried Chicken Salad", url: "http://www.theartofdoingstuff.com/the-best-curried-chicken-salad-youll-ever-eat/", skills: Skill.where(name: ["Chopping","Frying"]))
Recipe.create(name: "Rosemary Butternut Squash", url: "http://allrecipes.com/recipe/rosemary-roasted-butternut-squash/", skills: Skill.where(name: ["Chopping", "Baking"]))
Recipe.create(name: "Roasted Vegetable Medley", url: "http://www.mccormick.com/Recipes/Salads-Sides/Easy-Roasted-Vegetables", skills: Skill.where(name: ["Chopping", "Baking"]))
Recipe.create(name: "Apricot Glazed Chicken", url: "http://www.foodnetwork.com/recipes/dave-lieberman/apricot-glazed-chicken-with-dried-plums-and-sage-recipe.html", skills: Skill.where(name: ["Chopping", "Baking"]))
Recipe.create(name: "Pecan-crusted Salmon", url: "http://allrecipes.com/recipe/alaska-salmon-bake-with-pecan-crunch-coating/", skills: Skill.where(name: ["Chopping", "Baking"]))
Recipe.create(name: "Cashew-crusted Chicken", url: "http://allrecipes.com/Recipe/Cashew-Crusted-Chicken/Detail.aspx?evt19=1", skills: Skill.where(name: ["Chopping","Frying", "Baking"]))
Recipe.create(name: "Lasagna", url: "http://busycooks.about.com/od/pastacasserolerecipes/r/easylasagna.htm", skills: Skill.where(name: ["Chopping","Frying", "Baking"]))







Recipe.create(name: "Fried Eggs", url: "http://www.thekitchn.com/basic-techniques-how-to-fry-an-93632", skills: Skill.where(name: ["Frying"]))
Recipe.create(name: "Pan-fried Asparagus", url: "http://allrecipes.com/recipe/pan-fried-asparagus/", skills: Skill.where(name: ["Frying"]))
Recipe.create(name: "Pan-seared Tilapia", url: "http://allrecipes.com/recipe/pan-seared-tilapia/", skills: Skill.where(name: ["Frying"]))
Recipe.create(name: "Chili", url: "http://www.gimmesomeoven.com/5-ingredient-easy-chili-recipe/", skills: Skill.where(name: ["Frying","Boiling"]))
Recipe.create(name: "Spaghetti Carbonara", url: "http://www.delish.com/recipefinder/spaghetti-carbonara-recipe-mslo0311", skills: Skill.where(name: ["Frying","Boiling"]))
Recipe.create(name: "Beef Stroganoff", url: "http://allrecipes.com/Recipe/Simple-Beef-Stroganoff/Detail.aspx?evt19=1", skills: Skill.where(name: ["Frying","Boiling"]))
Recipe.create(name: "Falafel", url: "http://mideastfood.about.com/od/quickandsimplemeals/r/easyfalafel.htm", skills: Skill.where(name: ["Frying","Chopping","Pureeing"]))









Recipe.create(name: "Quiche", url: "http://lovedrecipes.blogspot.com/2012/01/5-ingredient-quiche.html", skills: Skill.where(name: ["Baking"]))
Recipe.create(name: "Cornbread", url: "http://www.instructables.com/id/Cornbread/step1/Basic-Recipe-from-the-box/", skills: Skill.where(name: ["Baking"]))
Recipe.create(name: "Banana Bread", url: "http://www.simplyrecipes.com/recipes/banana_bread/", skills: Skill.where(name: ["Baking"]))
Recipe.create(name: "Spaghetti Squash with Pine Nuts", url: "http://allrecipes.com/Recipe/Spaghetti-Squash-with-Pine-Nuts-Sage-and-Romano/Detail.aspx?evt19=1", skills: Skill.where(name: ["Baking","Chopping"]))
Recipe.create(name: "Soy-glazed Salmon", url: "http://www.delish.com/recipefinder/soy-glazed-salmon-recipe-mslo0311", skills: Skill.where(name: ["Baking","Chopping"]))
Recipe.create(name: "Baked Ziti", url: "http://allrecipes.com/Recipe/Cheater-Baked-Ziti/Detail.aspx?evt19=1", skills: Skill.where(name: ["Baking","Boiling"]))







Recipe.create(name: "Banana Berry Smoothie", url: "http://www.foodnetwork.com/recipes/food-network-kitchens/mixed-berries-and-banana-smoothie-recipe.html", skills: Skill.where(name: ["Pureeing"]))
Recipe.create(name: "Banana Spinach Smoothie", url: "http://www.fannetasticfood.com/recipes/banana-spinach-smoothie/", skills: Skill.where(name: ["Pureeing"]))
Recipe.create(name: "Mint Blueberry Kale Smoothie", url: "http://kalesmoothierecipes.com/video-blueberry-mint-kale-smoothie-recipe/", skills: Skill.where(name: ["Pureeing"]))
Recipe.create(name: "Pumpkin Pie Smoothie", url: "http://www.organicgardening.com/cook/4-best-smoothies-recipes-of-all-time?page=0,4", skills: Skill.where(name: ["Pureeing","Chopping"]))
Recipe.create(name: "Stone Fruit Smoothie", url: "http://www.organicgardening.com/cook/4-best-smoothies-recipes-of-all-time?page=0,3", skills: Skill.where(name: ["Pureeing","Chopping"]))
Recipe.create(name: "Gaz Pacho Soup", url: "http://allrecipes.com/recipe/quick-and-fresh-gazpacho/", skills: Skill.where(name: ["Pureeing","Chopping"]))
Recipe.create(name: "Roasted Broccoli Soup", url: "http://www.freutcake.com/in-the-kitchen/5-ingredient-recipes/roasted-broccoli-soup/", skills: Skill.where(name: ["Pureeing","Chopping","Baking"]))
Recipe.create(name: "Mashed Sweet Potatoes", url: "http://allrecipes.com/recipe/mashed-sweet-potatoes/", skills: Skill.where(name: ["Pureeing","Chopping","Boiling"]))


