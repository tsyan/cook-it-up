Skill.create(name: "Boiling", url: "http://www.wikihow.com/Boil-Vegetables")
Skill.create(name: "Chopping", url: "http://www.wikihow.com/Chop-Vegetables-Very-Quickly")
Skill.create(name: "Frying", url: "http://www.wikihow.com/Stir-Fry")
Skill.create(name: "Baking", url: "http://www.wikihow.com/Bake")
Skill.create(name: "Pureeing", url: "http://www.wikihow.com/Use-a-Blender")

Recipe.create(name: "Mac 'n Cheese with Peas", url: "https://www.google.com/url?q=http://www.kraftrecipes.com/recipes/cheesy-mac-snow-peas-tomatoes-110584.aspx&usd=2&usg=ALhdy28AtYFXKIoZYiUrNul8MtGriAKYjg", skills: Skill.where(name: ["Boiling"]))
Recipe.create(name: "Spaghetti with Meatballs", url: "", skills: Skill.where(name: ["Boiling"]))
Recipe.create(name: "Penne Pasta with Broccoli", url: "", skills: Skill.where(name: ["Boiling"]))
Recipe.create(name: "Ravioli with Alfredo Sauce", url: "", skills: Skill.where(name: ["Boiling"]))
Recipe.create(name: "Pesto Pasta", url: "", skills: Skill.where(name: ["Boiling", "Chopping"]))
Recipe.create(name: "Pasta with Vegetables", url: "", skills: Skill.where(name: ["Boiling", "Chopping"]))
Recipe.create(name: "Couscous Salad", url: "", skills: Skill.where(name: ["Boiling", "Chopping"]))
Recipe.create(name: "Quinoa Salad", url: "", skills: Skill.where(name: ["Boiling", "Chopping"]))
Recipe.create(name: "Red Lentil Soup", url: "", skills: Skill.where(name: ["Boiling", "Chopping"]))
Recipe.create(name: "Risotto", url: "", skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]))
Recipe.create(name: "Pasta Primavera", url: "", skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]))
Recipe.create(name: "Pineapple Chicken", url: "", skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]))
Recipe.create(name: "Chicken with Cider and Bacon Sauce", url: "", skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]))
Recipe.create(name: "Asian Noodle Bowl with Steak and Peas", url: "", skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]))
Recipe.create(name: "Pasta with Sausage and Broccoli Rabe", url: "", skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]))
Recipe.create(name: "Pasta with Goat Cheese and Walnuts", url: "", skills: Skill.where(name: ["Boiling", "Chopping", "Frying"]))









Recipe.create(name: "Guacamole", url: "", skills: Skill.where(name: ["Chopping"]))
Recipe.create(name: "Greek Salad", url: "", skills: Skill.where(name: ["Chopping"]))
Recipe.create(name: "Tomato and Avocado Salad", url: "", skills: Skill.where(name: ["Chopping"]))
Recipe.create(name: "Chicken and Vegetable Stirfry", url: "", skills: Skill.where(name: ["Chopping","Frying"]))
Recipe.create(name: "Teriyaki Stirfy", url: "", skills: Skill.where(name: ["Chopping","Frying"]))
Recipe.create(name: "Quesadillas", url: "", skills: Skill.where(name: ["Chopping","Frying"]))
Recipe.create(name: "Scrambled Eggs with Vegetables", url: "", skills: Skill.where(name: ["Chopping","Frying"]))
Recipe.create(name: "Shrimp with Scallions", url: "", skills: Skill.where(name: ["Chopping","Frying"]))
Recipe.create(name: "Sauteed Pork Chops with Kale", url: "", skills: Skill.where(name: ["Chopping","Frying"]))
Recipe.create(name: "Curried Chicken Salad", url: "", skills: Skill.where(name: ["Chopping","Frying"]))
Recipe.create(name: "Rosemary Butternut Squash", url: "", skills: Skill.where(name: ["Chopping", "Baking"]))
Recipe.create(name: "Roasted Vegetable Medley", url: "", skills: Skill.where(name: ["Chopping", "Baking"]))
Recipe.create(name: "Apricot Glazed Chicken", url: "", skills: Skill.where(name: ["Chopping", "Baking"]))
Recipe.create(name: "Pecan-crusted Salmon", url: "", skills: Skill.where(name: ["Chopping", "Baking"]))
Recipe.create(name: "Cashew-crusted Chicken", url: "", skills: Skill.where(name: ["Chopping","Frying", "Baking"]))
Recipe.create(name: "Lasagna", url: "", skills: Skill.where(name: ["Chopping","Frying", "Baking"]))







Recipe.create(name: "Fried Eggs", url: "", skills: Skill.where(name: ["Frying"]))
Recipe.create(name: "Pan-fried Asparagus", url: "", skills: Skill.where(name: ["Frying"]))
Recipe.create(name: "Pan-seared Tilapia", url: "", skills: Skill.where(name: ["Frying"]))
Recipe.create(name: "Chili", url: "", skills: Skill.where(name: ["Frying","Boiling"]))
Recipe.create(name: "Spaghetti Carbonara", url: "", skills: Skill.where(name: ["Frying","Boiling"]))
Recipe.create(name: "Beef Stroganoff", url: "", skills: Skill.where(name: ["Frying","Boiling"]))
Recipe.create(name: "Falafel", url: "", skills: Skill.where(name: ["Frying","Chopping","Pureeing"]))









Recipe.create(name: "Quiche", url: "", skills: Skill.where(name: ["Baking"]))
Recipe.create(name: "Cornbread", url: "", skills: Skill.where(name: ["Baking"]))
Recipe.create(name: "Banana Bread", url: "", skills: Skill.where(name: ["Baking"]))
Recipe.create(name: "Spaghetti Squash with Pine Nuts", url: "", skills: Skill.where(name: ["Baking","Chopping"]))
Recipe.create(name: "Soy-glazed Salmon", url: "", skills: Skill.where(name: ["Baking","Chopping"]))
Recipe.create(name: "Baked Ziti", url: "", skills: Skill.where(name: ["Baking","Boiling"]))







Recipe.create(name: "Banana Berry Smoothie", url: "", skills: Skill.where(name: ["Pureeing"]))
Recipe.create(name: "Banana Spinach Smoothie", url: "", skills: Skill.where(name: ["Pureeing"]))
Recipe.create(name: "Mint Blueberry Kale Smoothie", url: "", skills: Skill.where(name: ["Pureeing"]))
Recipe.create(name: "Pumpkin Pie Smoothie", url: "", skills: Skill.where(name: ["Pureeing","Chopping"]))
Recipe.create(name: "Stone Fruit Smoothie", url: "", skills: Skill.where(name: ["Pureeing","Chopping"]))
Recipe.create(name: "Gaz Pacho Soup", url: "", skills: Skill.where(name: ["Pureeing","Chopping"]))
Recipe.create(name: "Roasted Broccoli Soup", url: "", skills: Skill.where(name: ["Pureeing","Chopping","Baking"]))
Recipe.create(name: "Mashed Sweet Potatoes", url: "", skills: Skill.where(name: ["Pureeing","Chopping","Boiling"]))


