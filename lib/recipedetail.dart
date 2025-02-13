import 'package:flutter/material.dart';
import 'recipe.dart';

 class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({
    Key? key,

    required this.recipe,
  }):super(key: key);

  @override
  State<RecipeDetail> createState(){
    return _RecipeDetailState();

  }
 }
 //TODO add _RecipeDetailState here
 
 class _RecipeDetailState extends State<RecipeDetail>{
  //TODO add _Slidevar here
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context){
     return Scaffold(
      appBar:AppBar(
        title: Text(widget.recipe.label),

      ),

      body:SafeArea(
        child: Column(
          children:<Widget>[
            SizedBox(
              height:300,
              width:double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl),

              ),
            ),
            const SizedBox(
              height: 4,

            ),
            Text(
              widget.recipe.label,
              style:const TextStyle(fontSize: 18 ),
            ),
            //todo add expanded
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index){
                  final ingredient = widget.recipe.ingredients[index];

                  //add ingredient.quantity
                  return Text(
                    '${ingredient.quantity * _sliderVal} ${ingredient.measure} ${ingredient.name}'
                  );
                },
              ),
            ),
            //todo add slider() here
            Slider(
              min:1,
              max:10,
              divisions:9,

              label:'${_sliderVal * widget.recipe.serving} servings',
              value: _sliderVal.toDouble(),
              onChanged: (newValue){
                setState((){
                  _sliderVal= newValue.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),

          ],

        ),
      ),
     );
  }
 }
