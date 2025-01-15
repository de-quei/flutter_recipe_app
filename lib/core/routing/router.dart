import 'package:flutter/material.dart';
import 'package:flutter_recipe_app_course/data/respository/mock_bookmark_repository_impl.dart';
import 'package:flutter_recipe_app_course/data/respository/mock_recipe_repository_impl.dart';
import 'package:flutter_recipe_app_course/domain/model/recipe.dart';
import 'package:flutter_recipe_app_course/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:flutter_recipe_app_course/presentation/saved_recipes/saved_recipes_screen.dart';
import 'package:flutter_recipe_app_course/presentation/sign_in/sign_in_screen.dart';
import 'package:flutter_recipe_app_course/presentation/sign_up/sign_up_screen.dart';
import 'package:flutter_recipe_app_course/presentation/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/SignUp',
  routes: [
    GoRoute(
      path: '/Splash',
      builder: (context, state) => SplashScreen(
        onTapStartCooking: () => context.go('/SignIn'),
      ),
    ),
    GoRoute(
      path: '/SignIn',
      builder: (context, state) => const SignInScreen(),
    ),
    GoRoute(
      path: '/SignUp',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: '/SavedRecipes',
      builder: (context, state) => FutureBuilder<List<Recipe>>(
        future: GetSavedRecipesUseCase(
                recipeRepository: MockRecipeRepositoryImpl(),
                bookmarkRepository: MockBookmarkRepositoryImpl())
            .execute(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          final recipes = snapshot.data!;
          return SavedRecipesScreen(recipes: recipes);
        },
      ),
    ),
  ],
);
