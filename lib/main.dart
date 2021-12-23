import 'package:flutter/material.dart';
import 'package:recipes/recipe.dart';
import 'package:recipes/recipe_detail.dart';

void main() {
  runApp(const RecipesApp());
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  //Recipe recipe = Recipe('recipe label', 'image pathURL');

  List<Recipe> recipes = <Recipe>[
    Recipe('recipe number 1', 'assets/bagandbook.jpeg'),
    Recipe('recipe number 2', 'assets/bagandbook.jpeg'),
    Recipe('recipe number 3', 'assets/bagandbook.jpeg'),
    Recipe('recipe number 4', 'assets/bagandbook.jpeg'),
    Recipe('recipe number 5', 'assets/bagandbook.jpeg'),
    Recipe('recipe number 6', 'assets/bagandbook.jpeg'),
    Recipe('recipe number 7', 'assets/bagandbook.jpeg'),
    Recipe('recipe number 8', 'assets/bagandbook.jpeg'),
    Recipe('recipe number 9', 'assets/bagandbook.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is the Recipes App'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  //TODO 디테일페이지 전환
                  return RecipeDetail();
                }));
              },
              child: buildRecipedCard(recipes[index]));
        },
        itemCount: recipes.length,
      ),
    );
  }

  Widget buildRecipedCard(Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(recipe.imageUrl!),
            const SizedBox(
              height: 10,
            ),
            Text(
              recipe.label!,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'PalatinoBold'),
            )
          ],
        ),
      ),
    );
  }
}
