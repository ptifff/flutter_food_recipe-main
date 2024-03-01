import 'package:flutter/material.dart';
import 'package:food_recipe/core/route/app_route_name.dart';
import 'package:food_recipe/core/theme/app_color.dart';
import 'package:food_recipe/feature/home/model/recipe_model.dart';
import 'package:food_recipe/feature/home/presentation/widget/recipe_item.dart';
import 'package:food_recipe/feature/home/presentation/widget/recipe_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 24,
          bottom: MediaQuery.of(context).padding.bottom + 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Your existing UI widgets
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Tranding Recipes",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 280,
              child: ListView.separated(
                itemCount: trandingRecipes.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                separatorBuilder: (_, __) {
                  return const SizedBox(width: 16);
                },
                itemBuilder: (context, index) {
                  final recipe = trandingRecipes[index];
                  return RecipeItem(
                    recipe: recipe,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeScreen(recipe: recipe),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            // Your existing UI widgets
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Latest Recipes",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 280,
              child: ListView.separated(
                itemCount: latestRecipes.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                separatorBuilder: (_, __) {
                  return const SizedBox(width: 16);
                },
                itemBuilder: (context, index) {
                  final recipe = latestRecipes[index];
                  return RecipeItem(
                    recipe: recipe,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeScreen(recipe: recipe),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}