import 'package:flutter/material.dart';

class RecipeDetail extends StatelessWidget {
  const RecipeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailPage'),
      ),
      body: Text('Dettail Page'),
    );
  }
}
