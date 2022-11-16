import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'package:meals/utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6:
                  const TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed'),
            ),
      ),
      // home: CategoriesScreen() ,
      // initialRoute: '/',
      routes: {
        AppRoutes.home: (ctx) => const CategoriesScreen(),
        AppRoutes.categoriesMeals: (ctx) => const CategoriesMealsScreen(),
        AppRoutes.mealDetail: (ctx) => const MealDetailScreen(),
      },
    );
  }
}
