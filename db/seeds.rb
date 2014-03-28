puts "seeding database..."

Skill.create(name: "Boiling",
                url: "http://www.wikihow.com/Boil-Vegetables",
                photo: File.open("#{Rails.root}/app/assets/images/skill-01.jpg"))
Skill.create(name: "Chopping",
                url: "http://www.wikihow.com/Chop-Vegetables-Very-Quickly",
                photo: File.open("#{Rails.root}/app/assets/images/skill-02.jpg"))
Skill.create(name: "Frying",
                url: "http://www.wikihow.com/Stir-Fry",
                photo: File.open("#{Rails.root}/app/assets/images/skill-03.jpg"))
Skill.create(name: "Baking",
                url: "http://www.wikihow.com/Bake",
                photo: File.open("#{Rails.root}/app/assets/images/skill-04.jpg"))
Skill.create(name: "Pureeing",
                url: "http://www.wikihow.com/Use-a-Blender",
                photo: File.open("#{Rails.root}/app/assets/images/skill-05.jpg"))

puts "seeded skills"



Recipe.create(name: "Mac 'n Cheese with Peas",
                url: "http://www.kraftrecipes.com/recipes/cheesy-mac-snow-peas-tomatoes-110584.aspx",
                skills: Skill.where(name: ["Boiling"]),
                photo: File.open("#{Rails.root}/app/assets/images/01.jpg"))
Recipe.create(name: "Spaghetti with Meatballs",
                url: "http://www.campbellskitchen.com/recipes/quick-spaghetti-meatballs-25335",
                skills: Skill.where(name: ["Boiling"]),
                photo: File.open("#{Rails.root}/app/assets/images/02.jpg"))
Recipe.create(name: "Broccoli and Garlic Penne Pasta",
                url: "http://allrecipes.com/recipe/broccoli-and-garlic-penne-pasta/",
                skills: Skill.where(name: ["Boiling"]),
                photo: File.open("#{Rails.root}/app/assets/images/03.jpg"))
Recipe.create(name: "Ravioli in Spinach Alfredo Sauce",
                url: "http://www.tablespoon.com/recipes/ravioli-in-spinach-alfredo-sauce/727c40cc-081a-4986-bdb9-a0e00b4bf1bd/",
                skills: Skill.where(name: ["Boiling"]),
                photo: File.open("#{Rails.root}/app/assets/images/04.jpg"))
Recipe.create(name: "Pesto Pasta",
                url: "http://allrecipes.com/recipe/pesto-pasta/",
                skills: Skill.where(name: ["Boiling", "Chopping"]),
                photo: File.open("#{Rails.root}/app/assets/images/05.jpg"))
Recipe.create(name: "Pasta with Vegetables",
                url: "http://www.mykitchenaddiction.com/2012/03/easy-pasta-with-vegetables/",
                skills: Skill.where(name: ["Boiling", "Chopping"]),
                photo: File.open("#{Rails.root}/app/assets/images/06.jpg"))
Recipe.create(name: "Couscous Salad",
                url: "http://www.foodnetwork.com/recipes/claire-robinson/mediterranean-couscous-recipe.html",
                skills: Skill.where(name: ["Boiling", "Chopping"]),
                photo: File.open("#{Rails.root}/app/assets/images/07.jpg"))
Recipe.create(name: "Quinoa Salad",
                url: "http://www.tablespoon.com/recipes/simple-quinoa-salad/d627031c-1bfa-4f1a-834f-a203c3199426",
                skills: Skill.where(name: ["Boiling", "Chopping"]),
                photo: File.open("#{Rails.root}/app/assets/images/08.jpg"))
Recipe.create(name: "Red Lentil Soup",
                url: "http://www.food.com/recipe/rustic-red-lentil-soup-only-4-ingredients-291873",
                skills: Skill.where(name: ["Boiling", "Chopping"]),
                photo: File.open("#{Rails.root}/app/assets/images/09.jpg"))
Recipe.create(name: "Risotto",
                url: "http://www.food.com/recipe/easy-risotto-with-bacon-peas-358115",
                skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]),
                photo: File.open("#{Rails.root}/app/assets/images/10.jpg"))
Recipe.create(name: "Pasta Primavera",
                url: "http://www.rachaelraymag.com/recipes/rachael-ray-magazine-recipe-search/dinner-recipes/stir-fried-pasta-primavera",
                skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]),
                photo: File.open("#{Rails.root}/app/assets/images/11.jpg"))
Recipe.create(name: "Pineapple Chicken",
                url: "http://allrecipes.com/Recipe/Pineapple-Chicken/Detail.aspx?evt19=1",
                skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]),
                photo: File.open("#{Rails.root}/app/assets/images/12.jpg"))
Recipe.create(name: "Chicken with Cider and Bacon Sauce",
                url: "http://www.myrecipes.com/recipe/chicken-with-cider-bacon-sauce-10000001011270/",
                skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]),
                photo: File.open("#{Rails.root}/app/assets/images/13.jpg"))
Recipe.create(name: "Asian Noodle Bowl with Steak and Peas",
                url: "http://www.delish.com/recipefinder/asian-noodle-bowls-steak-snow-peas-recipe-mslo0311",
                skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]),
                photo: File.open("#{Rails.root}/app/assets/images/14.jpg"))
Recipe.create(name: "Pasta with Sausage and Broccoli Rabe",
                url: "http://www.delish.com/recipefinder/pasta-sausage-broccoli-rabe-recipe",
                skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]),
                photo: File.open("#{Rails.root}/app/assets/images/15.jpg"))
Recipe.create(name: "Pasta with Goat Cheese and Walnuts",
                url: "http://www.delish.com/recipefinder/whole-grain-shells-goat-cheese-walnuts-recipe-ghk0311",
                skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]),
                photo: File.open("#{Rails.root}/app/assets/images/16.jpg"))



puts "seeded recipes 1-16"





Recipe.create(name: "Guacamole",
                url: "http://allrecipes.com/recipe/guacamole/",
                skills: Skill.where(name: ["Chopping"]),
                photo: File.open("#{Rails.root}/app/assets/images/17.jpg"))
Recipe.create(name: "Greek Salad",
                url: "http://greek.food.com/recipe/greek-cucumber-tomato-and-onion-salad-60752",
                skills: Skill.where(name: ["Chopping"]),
                photo: File.open("#{Rails.root}/app/assets/images/18.jpg"))
Recipe.create(name: "Tomato and Avocado Salad",
                url: "http://www.food.com/recipe/simple-tomato-and-avocado-salad-94520",
                skills: Skill.where(name: ["Chopping"]),
                photo: File.open("#{Rails.root}/app/assets/images/19.jpg"))
Recipe.create(name: "Chicken and Vegetable Stirfry",
                url: "http://www.bettycrocker.com/recipes/vegetable-chicken-stir-fry/458fda98-88e4-43de-8766-b05782ab5488",
                skills: Skill.where(name: ["Chopping","Frying"]),
                photo: File.open("#{Rails.root}/app/assets/images/20.jpg"))
Recipe.create(name: "Teriyaki Stirfy",
                url: "http://whatscookinwithmary.blogspot.com/2011/01/teriyaki-chicken-stir-fry-5-ingredients.html",
                skills: Skill.where(name: ["Chopping","Frying"]),
                photo: File.open("#{Rails.root}/app/assets/images/21.jpg"))
Recipe.create(name: "Quesadillas",
                url: "http://blog.foodnetwork.com/healthyeats/2011/05/05/5-ingredients-quesadillas/",
                skills: Skill.where(name: ["Chopping","Frying"]),
                photo: File.open("#{Rails.root}/app/assets/images/22.jpg"))
Recipe.create(name: "Scrambled Eggs with Vegetables",
                url: "http://allrecipes.com/recipe/extreme-veggie-scrambled-eggs/",
                skills: Skill.where(name: ["Chopping","Frying"]),
                photo: File.open("#{Rails.root}/app/assets/images/23.jpg"))
Recipe.create(name: "Shrimp with Scallions",
                url: "http://www.delish.com/recipefinder/shrimp-scallions-crispy-potatoes-recipe-mslo0411",
                skills: Skill.where(name: ["Chopping","Frying"]),
                photo: File.open("#{Rails.root}/app/assets/images/24.jpg"))
Recipe.create(name: "Sauteed Pork Chops with Kale",
                url: "http://www.delish.com/recipefinder/sauteed-pork-chops-kale-recipe-clv1010",
                skills: Skill.where(name: ["Chopping","Frying"]),
                photo: File.open("#{Rails.root}/app/assets/images/25.jpg"))
Recipe.create(name: "Curried Chicken Salad",
                url: "http://www.theartofdoingstuff.com/the-best-curried-chicken-salad-youll-ever-eat/",
                skills: Skill.where(name: ["Chopping","Frying"]),
                photo: File.open("#{Rails.root}/app/assets/images/26.jpg"))
Recipe.create(name: "Rosemary Butternut Squash",
                url: "http://allrecipes.com/recipe/rosemary-roasted-butternut-squash/",
                skills: Skill.where(name: ["Chopping", "Baking"]),
                photo: File.open("#{Rails.root}/app/assets/images/27.jpg"))
Recipe.create(name: "Roasted Vegetable Medley",
                url: "http://www.mccormick.com/Recipes/Salads-Sides/Easy-Roasted-Vegetables",
                skills: Skill.where(name: ["Chopping", "Baking"]),
                photo: File.open("#{Rails.root}/app/assets/images/28.jpg"))
Recipe.create(name: "Apricot Glazed Chicken",
                url: "http://www.foodnetwork.com/recipes/dave-lieberman/apricot-glazed-chicken-with-dried-plums-and-sage-recipe.html",
                skills: Skill.where(name: ["Chopping", "Baking"]),
                photo: File.open("#{Rails.root}/app/assets/images/29.jpg"))
Recipe.create(name: "Pecan-crusted Salmon",
                url: "http://allrecipes.com/recipe/alaska-salmon-bake-with-pecan-crunch-coating/",
                skills: Skill.where(name: ["Chopping", "Baking"]),
                photo: File.open("#{Rails.root}/app/assets/images/30.jpg"))
Recipe.create(name: "Cashew-crusted Chicken",
                url: "http://allrecipes.com/Recipe/Cashew-Crusted-Chicken/Detail.aspx?evt19=1",
                skills: Skill.where(name: ["Chopping","Frying", "Baking"]),
                photo: File.open("#{Rails.root}/app/assets/images/31.jpg"))
Recipe.create(name: "Lasagna",
                url: "http://busycooks.about.com/od/pastacasserolerecipes/r/easylasagna.htm",
                skills: Skill.where(name: ["Chopping","Frying", "Baking"]),
                photo: File.open("#{Rails.root}/app/assets/images/32.jpg"))



puts "seeded recipes 17-32"



Recipe.create(name: "Fried Eggs",
                url: "http://www.thekitchn.com/basic-techniques-how-to-fry-an-93632",
                skills: Skill.where(name: ["Frying"]),
                photo: File.open("#{Rails.root}/app/assets/images/33.jpg"))
Recipe.create(name: "Pan-fried Asparagus",
                url: "http://allrecipes.com/recipe/pan-fried-asparagus/",
                skills: Skill.where(name: ["Frying"]),
                photo: File.open("#{Rails.root}/app/assets/images/34.jpg"))
Recipe.create(name: "Pan-seared Tilapia",
                url: "http://allrecipes.com/recipe/pan-seared-tilapia/",
                skills: Skill.where(name: ["Frying"]),
                photo: File.open("#{Rails.root}/app/assets/images/35.jpg"))
Recipe.create(name: "Chili",
                url: "http://www.gimmesomeoven.com/5-ingredient-easy-chili-recipe/",
                skills: Skill.where(name: ["Frying","Boiling"]),
                photo: File.open("#{Rails.root}/app/assets/images/36.jpg"))
Recipe.create(name: "Spaghetti Carbonara",
                url: "http://www.delish.com/recipefinder/spaghetti-carbonara-recipe-mslo0311",
                skills: Skill.where(name: ["Frying","Boiling"]),
                photo: File.open("#{Rails.root}/app/assets/images/37.jpg"))
Recipe.create(name: "Beef Stroganoff",
                url: "http://allrecipes.com/Recipe/Simple-Beef-Stroganoff/Detail.aspx?evt19=1",
                skills: Skill.where(name: ["Frying","Boiling"]),
                photo: File.open("#{Rails.root}/app/assets/images/38.jpg"))
Recipe.create(name: "Falafel",
                url: "http://mideastfood.about.com/od/quickandsimplemeals/r/easyfalafel.htm",
                skills: Skill.where(name: ["Frying","Chopping","Pureeing"]),
                photo: File.open("#{Rails.root}/app/assets/images/39.jpg"))



puts "seeded recipes 33-39"





Recipe.create(name: "Quiche",
                url: "http://lovedrecipes.blogspot.com/2012/01/5-ingredient-quiche.html",
                skills: Skill.where(name: ["Baking"]),
                photo: File.open("#{Rails.root}/app/assets/images/40.jpg"))
Recipe.create(name: "Cornbread",
                url: "http://www.instructables.com/id/Cornbread/step1/Basic-Recipe-from-the-box/",
                skills: Skill.where(name: ["Baking"]),
                photo: File.open("#{Rails.root}/app/assets/images/41.jpg"))
Recipe.create(name: "Banana Bread",
                url: "http://www.simplyrecipes.com/recipes/banana_bread/",
                skills: Skill.where(name: ["Baking"]),
                photo: File.open("#{Rails.root}/app/assets/images/42.jpg"))
Recipe.create(name: "Spaghetti Squash with Pine Nuts",
                url: "http://allrecipes.com/Recipe/Spaghetti-Squash-with-Pine-Nuts-Sage-and-Romano/Detail.aspx?evt19=1",
                skills: Skill.where(name: ["Baking","Chopping"]),
                photo: File.open("#{Rails.root}/app/assets/images/43.jpg"))
Recipe.create(name: "Soy-glazed Salmon",
                url: "http://www.delish.com/recipefinder/soy-glazed-salmon-recipe-mslo0311",
                skills: Skill.where(name: ["Baking","Chopping"]),
                photo: File.open("#{Rails.root}/app/assets/images/44.jpg"))
Recipe.create(name: "Baked Ziti",
                url: "http://allrecipes.com/Recipe/Cheater-Baked-Ziti/Detail.aspx?evt19=1",
                skills: Skill.where(name: ["Baking","Boiling"]),
                photo: File.open("#{Rails.root}/app/assets/images/45.jpg"))



puts "seeded recipes 40-45"



Recipe.create(name: "Banana Berry Smoothie",
                url: "http://www.foodnetwork.com/recipes/food-network-kitchens/mixed-berries-and-banana-smoothie-recipe.html",
                skills: Skill.where(name: ["Pureeing"]),
                photo: File.open("#{Rails.root}/app/assets/images/46.jpg"))
Recipe.create(name: "Banana Spinach Smoothie",
                url: "http://www.fannetasticfood.com/recipes/banana-spinach-smoothie/",
                skills: Skill.where(name: ["Pureeing"]),
                photo: File.open("#{Rails.root}/app/assets/images/47.jpg"))
Recipe.create(name: "Mint Blueberry Kale Smoothie",
                url: "http://kalesmoothierecipes.com/video-blueberry-mint-kale-smoothie-recipe/",
                skills: Skill.where(name: ["Pureeing"]),
                photo: File.open("#{Rails.root}/app/assets/images/48.jpg"))
Recipe.create(name: "Pumpkin Pie Smoothie",
                url: "http://www.organicgardening.com/cook/4-best-smoothies-recipes-of-all-time?page=0,4",
                skills: Skill.where(name: ["Pureeing","Chopping"]),
                photo: File.open("#{Rails.root}/app/assets/images/49.jpg"))
Recipe.create(name: "Stone Fruit Smoothie",
                url: "http://www.organicgardening.com/cook/4-best-smoothies-recipes-of-all-time?page=0,3",
                skills: Skill.where(name: ["Pureeing","Chopping"]),
                photo: File.open("#{Rails.root}/app/assets/images/50.jpg"))
Recipe.create(name: "Gaz Pacho Soup",
                url: "http://allrecipes.com/recipe/quick-and-fresh-gazpacho/",
                skills: Skill.where(name: ["Pureeing","Chopping"]),
                photo: File.open("#{Rails.root}/app/assets/images/51.jpg"))
Recipe.create(name: "Roasted Broccoli Soup",
                url: "http://www.freutcake.com/in-the-kitchen/5-ingredient-recipes/roasted-broccoli-soup/",
                skills: Skill.where(name: ["Pureeing","Chopping","Baking"]),
                photo: File.open("#{Rails.root}/app/assets/images/52.jpg"))
Recipe.create(name: "Mashed Sweet Potatoes",
                url: "http://allrecipes.com/recipe/mashed-sweet-potatoes/",
                skills: Skill.where(name: ["Pureeing","Chopping","Boiling"]),
                photo: File.open("#{Rails.root}/app/assets/images/53.jpg"))


puts "seeded recipes 46-53"

puts "seeding completed successfully! :)"
