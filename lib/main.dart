import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipedetail.dart';

void main() {
  runApp(const RecipesApp());
}

class  RecipesApp extends StatelessWidget {
  const  RecipesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Recipes calculator',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'RECIPES CALCULATOR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    //1
    return Scaffold(
      //2
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: SafeArea(
        // replace child:container()
        //4
        child: ListView.builder(
          //5
          itemCount: Recipe.samples.length,
          //6
          itemBuilder: (BuildContext context, int index){
            //7
            //TODO update tp return recipe card
            return GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(context){
                      //TODO replace return with return recipedata()
                      return RecipeDetail (recipe:Recipe.samples[index]);
                    },
                  ),
                );
              },
              child: buildRecipeCard(Recipe.samples[index]),
            );
            
          }
        ), 
      ),
    );
  }
}
    Widget buildRecipeCard(Recipe recipe){
      //1
      return Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
       child: Padding(
        padding: const EdgeInsets.all(16.0),
        //2
        child: Column(
          //3
          children:<Widget>[
            //4
            Image(image:AssetImage(recipe.imageUrl)),

            const SizedBox(
              height:14.0,
            ),
            //5
            Text(
              recipe.label,
              style: const TextStyle(
                fontSize:20.0,
                fontWeight: FontWeight.w700,
                fontFamily:'Palatino',
              ),
            ),
          ],
        ),
      ),
      );
    }

  

