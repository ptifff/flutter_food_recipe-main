class RecipeModel {
  final String name;
  final String image;
  final String category;
  final String duration;
  final String serving;
  final String instruction;

  RecipeModel({
    required this.name,
    required this.image,
    required this.category,
    required this.duration,
    required this.serving,
    required this.instruction,

  });
}

/// get this file in the sourcode
final trandingRecipes = [
  RecipeModel(
    name: "Chicken Biryani",
    image: "assets/biryani.jpeg",
    category: "Desi-Food",
    duration: "1 Hour",
    serving: "Sure, here's a Biryani recipe with each line starting with a quotation"

   "500g basmati rice"
   "500g chicken pieces"
   "2 onions (sliced)"
   "2 tomatoes (chopped)"
   "1/2 cup plain yogurt"
   "4 cloves garlic (minced)"
   "1-inch ginger (minced)"
   "2 green chilies (slit)"
   "1/2 cup fresh coriander leaves (chopped)"
  "1/2 cup fresh mint leaves (chopped)"
   "4 tablespoons ghee or vegetable oil"
   "1 cinnamon stick"
   "4 green cardamom pods"
   "4 cloves"
   "1 bay leaf"
   "1 teaspoon cumin seeds"
   "1/2 teaspoon turmeric powder"
   "1 teaspoon red chili powder"
   "2 teaspoons biryani masala"
   "Salt to taste"
   "Saffron strands soaked in warm milk (for garnish)",

  instruction:
   "Wash the basmati rice under cold water until the water runs clear. Soak the rice in water for 30 minutes, then drain."
   "In a large bowl, marinate the chicken pieces with yogurt, minced garlic, minced ginger, chopped green chilies, chopped coriander leaves, chopped mint leaves, turmeric powder, red chili powder, biryani masala, and salt. Let it marinate for at least 1 hour, or overnight in the refrigerator."
   "Heat ghee or vegetable oil in a large pot over medium heat. Add sliced onions and sauté until golden brown. Remove half of the onions and set aside for garnish."
   "To the remaining onions in the pot, add cinnamon stick, green cardamom pods, cloves, bay leaf, and cumin seeds. Sauté for a minute until fragrant."
   "Add chopped tomatoes to the pot and cook until they turn soft and mushy."
   "Add marinated chicken to the pot and cook until it is partially cooked, about 10 minutes."
    "In a separate pot, bring water to a boil. Add soaked and drained rice to the boiling water along with salt. Cook the rice until it is 70-80% done. Drain the rice and set aside."
  "Layer the partially cooked chicken with the rice in the pot. Sprinkle the reserved fried onions on top."
   "Cover the pot with a tight-fitting lid and cook on low heat for 20-25 minutes until the chicken is cooked through and the rice is fully cooked and fluffy."
   "Once done, remove the lid and gently fluff up the biryani with a fork. Drizzle saffron-infused milk on top for garnish."
   "Serve the delicious Chicken Biryani hot with raita, salad, or your favorite side dish."

  "Enjoy your aromatic and flavorful Chicken Biryani!",

  ),
  RecipeModel(
    name: "Chicken Chowmein",
    image: "assets/chowmein.jpeg",
    category: "Chinese",
    duration: "1 Hour",
    serving: "Here's a simplified version of a Chow Mein recipe:"
    "Ingredients:200g noodles (egg or wheat noodles),2 tablespoons oil,2 cloves garlic (minced),1 small onion (sliced)"
" 1 carrot (julienned),1 bell pepper (sliced),100g cabbage (shredded) ,100g mushrooms (sliced),2 tablespoons soy sauce"
" 1 tablespoon oyster sauce,Salt and pepper to taste,Green onions for garnish (optional) ,Sesame seeds for garnish (optional)",
    instruction:
"1. Cook the noodles according to the package instructions until they are al dente. Drain and set aside."
"2. Heat oil in a large skillet or wok over medium-high heat."
"3. Add minced garlic and sliced onion to the skillet. Stir-fry for about 1 minute until fragrant."
"4. Add julienned carrot, sliced bell pepper, shredded cabbage, and sliced mushrooms to the skillet. Stir-fry for about 3-4 minutes until the vegetables are slightly tender but still crisp."
"5. Add the cooked noodles to the skillet along with soy sauce and oyster sauce. Toss everything together until well combined."
"6. Season with salt and pepper to taste. Continue to cook for another 2-3 minutes until everything is heated through."
"7. Garnish with chopped green onions and sesame seeds if desired."
"8. Serve hot and enjoy your delicious Chow Mein!"

"Feel free to adjust the vegetables and seasoning according to your taste preferences.",
  ),
  RecipeModel(
    name: "Chicken/Beef Karahi",
    image: "assets/karahi.jpg",
    category: "Seafood",
    duration: "1 Hour",
    serving: "Ingredients:"
   "500g chicken (cut into pieces)"
   "3 tablespoons oil"
   "2 tomatoes (chopped)"
   "2 onions (sliced)"
   "1 tablespoon ginger paste"
   "1 tablespoon garlic paste"
   "2 green chilies (sliced)"
   "1 teaspoon cumin seeds"
   "1 teaspoon coriander powder"
   "1/2 teaspoon turmeric powder"
   "1/2 teaspoon red chili powder"
   "Salt to taste"
   "Fresh coriander leaves for garnish"
   "Ginger julienne for garnish"
   "Lemon wedges for serving",

      instruction:
   "Heat oil in a karahi or deep skillet over medium heat."
   "Add cumin seeds and let them crackle."
   "Add sliced onions and sauté until golden brown."
   "Add ginger paste and garlic paste, and sauté until the raw smell disappears."
   "Add chicken pieces to the skillet and cook until they are browned on all sides."
   "Add chopped tomatoes, green chilies, coriander powder, turmeric powder, red chili powder, and salt. Mix well."
   "Cover and cook until the tomatoes are softened and the chicken is cooked through, stirring occasionally."
   "Once the chicken is cooked, uncover the skillet and cook on high heat for a few minutes until the oil separates from the masala."
   "Garnish with fresh coriander leaves and ginger julienne."
  "Serve hot with naan or roti, and lemon wedges on the side."

      "Enjoy your flavorful Chicken Karahi!"
  ),
];

final latestRecipes = [
  RecipeModel(
    name: "Mongolian tender Beef",
    image: "assets/mongo.jpeg",
    category: "Chinese",
    duration: "1 Hour",
    serving: "Ingredients:"
   "500g beef (sliced thinly)"
   "2 tablespoons vegetable oil"
   "3 cloves garlic (minced)"
   "1 teaspoon ginger (minced)"
   "2 green onions (sliced)"
   "1/2 cup soy sauce"
   "1/2 cup water"
   "1/4 cup brown sugar"
   "1/4 cup hoisin sauce"
   "1 tablespoon cornstarch"
   "1 tablespoon water"
   "Cooked rice, for serving"
   "Sesame seeds and sliced green onions for garnish (optional)",

    instruction:
  "In a small bowl, mix together soy sauce, water, brown sugar, and hoisin sauce. Set aside."
  "In another small bowl, mix cornstarch and water to make a slurry. Set aside."
  "Heat vegetable oil in a large skillet or wok over medium-high heat."
  "Add minced garlic and ginger to the skillet. Cook for about 1 minute until fragrant."
  "Add sliced beef to the skillet and cook until browned, about 2-3 minutes."
  "Pour the sauce mixture into the skillet with the beef. Stir to combine."
  "Bring the mixture to a simmer and cook for about 2-3 minutes until the sauce thickens."
  "Stir in sliced green onions."
  "Add the cornstarch slurry to the skillet and cook for another 1-2 minutes until the sauce has thickened further."
   "Remove from heat and serve the Mongolian Beef hot over cooked rice."
   "Garnish with sesame seeds and additional sliced green onions if desired."

      "Enjoy your delicious Mongolian Beef!",
  ),
  RecipeModel(
    name: "prawn curry",
    image: "assets/prawn.jpeg",
    category: "Sea food",
    duration: "1 Hour",
    serving: "Ingredients:"
  "500g prawns (peeled and deveined)"
  "2 tablespoons vegetable oil"
  "1 onion (finely chopped)"
  "3 cloves garlic (minced)"
  "1-inch ginger (minced)"
  "2 tomatoes (finely chopped)"
  "1 teaspoon cumin seeds"
        "1 teaspoon coriander powder"
        "1/2 teaspoon turmeric powder"
   "1/2 teaspoon red chili powder (adjust to taste)"
  "1 teaspoon garam masala"
   "1/2 cup coconut milk"
   "Salt to taste"
   "Fresh coriander leaves for garnish",

    instruction:
  "Heat vegetable oil in a large skillet or pan over medium heat."
  "Add cumin seeds and let them crackle."
  "Add finely chopped onions and sauté until translucent."
  "Add minced garlic and ginger. Sauté for another 1-2 minutes until fragrant."
  "Add finely chopped tomatoes and cook until they turn soft and mushy."
  "Add coriander powder, turmeric powder, red chili powder, and salt. Mix well and cook for a few minutes until the spices are aromatic."
  "Add the cleaned prawns to the skillet. Stir to coat them evenly with the spice mixture."
  "Pour in the coconut milk and stir well to combine."
  "Cover the skillet and let the prawns simmer in the curry for about 5-7 minutes until they are cooked through and the flavors are well combined."
  "Once the prawns are cooked, sprinkle garam masala over the curry and give it a final stir."
  "Garnish with fresh coriander leaves."
  "Serve the Prawn Curry hot with steamed rice or bread of your choice."

      "Enjoy your delicious Prawn Curry!",
  ),
  RecipeModel(
    name: "Grilled Chicken Salad + Homemade Sweet Onion Dressing",
    image: "assets/shashlik.jpeg",
    category: "Chicken",
    duration: "1 Hour",
    serving: "Ingredients:"
  "500g boneless chicken or beef (cut into cubes)"
   "1 large onion (cut into chunks)"
   "1 large bell pepper (cut into chunks)"
   "1 large tomato (cut into chunks)"
   "8-10 wooden skewers (soaked in water for 30 minutes)"
   "2 tablespoons vegetable oil"
   "2 cloves garlic (minced)"
   "1 teaspoon ginger paste"
   "1 teaspoon paprika or red chili powder"
   "1 teaspoon ground cumin"
   "1 teaspoon ground coriander"
   "1/2 teaspoon turmeric powder"
   "1/2 teaspoon black pepper"
   "Salt to taste"
   "Fresh coriander leaves for garnish",
    instruction:
   "In a bowl, mix together vegetable oil, minced garlic, ginger paste, paprika or red chili powder, ground cumin, ground coriander, turmeric powder, black pepper, and salt to make the marinade."
   "Add the chicken or beef cubes to the marinade and toss to coat evenly. Cover and refrigerate for at least 1 hour, or preferably overnight, to marinate."
   "Preheat the grill or barbecue to medium-high heat."
   "Thread the marinated chicken or beef cubes onto the soaked wooden skewers, alternating with chunks of onion, bell pepper, and tomato."
   "Brush the skewers with a little vegetable oil to prevent sticking to the grill."
   "Place the skewers on the preheated grill and cook for about 10-15 minutes, turning occasionally, until the meat is cooked through and the vegetables are charred and tender."
  "Once cooked, remove the skewers from the grill and transfer them to a serving platter."
    "Garnish with fresh coriander leaves."
      "Serve the Shashlik hot with rice, naan bread, or a salad on the side."

      "Enjoy your flavorful Shashlik!",
  ),
];
