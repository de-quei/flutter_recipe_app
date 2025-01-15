import 'package:flutter_recipe_app_course/domain/model/ingrediant.dart';

class RecipeIngrediant {
  final Ingredient ingredient;
  final int amount;

  RecipeIngrediant({
    required this.ingredient,
    required this.amount,
  });

  factory RecipeIngrediant.fromJson(Map<String, dynamic> json) {
    return RecipeIngrediant(
      ingredient: Ingredient.fromJson(json['ingredient']),
      amount: json['amount'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ingredient': ingredient.toJson(),
      'amount': amount,
    };
  }

  @override
  String toString() {
    return 'RecipeIngrediant(ingredient: $ingredient, amount: $amount)';
  }
}
