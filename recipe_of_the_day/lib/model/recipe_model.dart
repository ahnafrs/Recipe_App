class Recipe {
  final String title;
  final String description;
  final List<String> ingredients;
  final String imageUrl; // Add an image URL property

  Recipe(this.title, this.description, this.ingredients, this.imageUrl);

  static List<Recipe> recipe() {
    return [
      Recipe(
        "Spaghetti Carbonara",
        "A classic Italian pasta dish with eggs, cheese, and guanciale.",
        [
          "Spaghetti",
          "Eggs",
          "Pecorino Romano cheese",
          "Guanciale",
          "Black pepper"
        ],
        "https://www.allrecipes.com/thmb/Vg2cRidr2zcYhWGvPD8M18xM_WY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/11973-spaghetti-carbonara-ii-DDMFS-4x3-6edea51e421e4457ac0c3269f3be5157.jpg",
      ),
      Recipe(
        "Chicken Alfredo",
        "Creamy pasta with tender chicken.",
        [
          "Chicken breasts",
          "Fettuccine pasta",
          "Heavy cream",
          "Butter",
          "Parmesan cheese"
        ],
        "https://www.budgetbytes.com/wp-content/uploads/2022/07/Chicken-Alfredo-bowl.jpg",
      ),
      Recipe(
        "Vegetable Stir-Fry",
        "Healthy stir-fry with your choice of protein.",
        [
          "Assorted vegetables",
          "Tofu or chicken",
          "Soy sauce",
          "Ginger",
          "Garlic"
        ],
        "https://www.mccormick.com/-/media/project/oneweb/mccormick-us/mccormick/recipe-images/stir-fry-vegetables-recipe-800x800.jpg?rev=93a14607adf8487098a20c6c2f708b0d&vd=20220914T205534Z&hash=3462A145DB20845D4AB02C88469481FE",
      ),
      Recipe(
        "Margherita Pizza",
        "Simple and delicious pizza with fresh tomatoes, mozzarella, and basil.",
        ["Pizza dough", "Tomatoes", "Fresh mozzarella", "Basil", "Olive oil"],
        "https://eu.ooni.com/cdn/shop/articles/20220211142754-margherita-9920.jpg?crop=center&height=800&v=1644590277&width=800",
      ),
      Recipe(
        "Beef Tacos",
        "Quick and flavorful Mexican-inspired dish.",
        [
          "Ground beef",
          "Taco seasoning",
          "Tortillas",
          "Lettuce",
          "Tomato",
          "Cheese",
          "Sour cream"
        ],
        "https://www.twopeasandtheirpod.com/wp-content/uploads/2022/12/Beef-Tacos-55.jpg",
      ),
      Recipe(
        "Mushroom Risotto",
        "Creamy Italian rice dish with mushrooms.",
        [
          "Arborio rice",
          "Mushrooms",
          "Onion",
          "White wine",
          "Vegetable broth",
          "Parmesan cheese"
        ],
        "https://cdn.loveandlemons.com/wp-content/uploads/2023/01/mushroom-risotto.jpg",
      ),
      Recipe(
        "Grilled Salmon",
        "Healthy seafood dish with a zesty lemon-dill sauce.",
        ["Salmon fillets", "Lemon", "Dill", "Garlic", "Olive oil"],
        "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2014/3/28/1/RX-DAISY_Grilled-salmon_s4x3.jpg.rend.hgtvcom.616.462.suffix/1396370205937.jpeg",
      ),
      Recipe(
        "Vegetable Curry",
        "Spicy curry with a variety of colorful vegetables.",
        ["Mixed vegetables", "Coconut milk", "Curry paste", "Ginger", "Garlic"],
        "https://www.recipetineats.com/wp-content/uploads/2017/07/Vegetable-Curry.jpg",
      ),
      Recipe(
        "Caprese Salad",
        "Light and refreshing salad with tomatoes, fresh mozzarella, and basil.",
        [
          "Tomatoes",
          "Fresh mozzarella",
          "Basil",
          "Balsamic vinegar",
          "Olive oil"
        ],
        "https://natashaskitchen.com/wp-content/uploads/2019/08/Caprese-Salad-6.jpg",
      ),
      Recipe(
        "Chocolate Chip Cookies",
        "Classic homemade cookies that are soft and chewy.",
        [
          "Flour",
          "Butter",
          "Sugar",
          "Chocolate chips",
          "Eggs",
          "Vanilla extract"
        ],
        "https://sallysbakingaddiction.com/wp-content/uploads/2013/05/classic-chocolate-chip-cookies.jpg",
      ),
    ];
  }
}
