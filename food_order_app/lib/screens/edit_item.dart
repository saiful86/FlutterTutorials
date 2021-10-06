import 'package:flutter/material.dart';
import 'package:food_order_app/providers/food.dart';
import 'package:food_order_app/providers/foods.dart';
import 'package:provider/provider.dart';

class EditItem extends StatefulWidget {

  static const routeName = '/editItem';

  @override
  _EditItemState createState() => _EditItemState();

}

class _EditItemState extends State<EditItem> {

  String xyz;
  Foods foodList;

  Food food;

  final _keyForm = GlobalKey<FormState>();

  final itemNameController = TextEditingController();
  final itemDescriptionController = TextEditingController();
  final itemPriceController = TextEditingController();
  final itemUrlController = TextEditingController();

  void updateItemToList(){

   // print('saveItemToList ${itemNameController.text}');

    if(_keyForm.currentState.validate()){

      /*Food food =  Food(
        title: itemNameController.text,
        description: itemDescriptionController.text,
        price: double.parse(itemPriceController.text),
        imageUrl:itemUrlController.text,
      );*/

      food.title = itemNameController.text;
      food.description = itemDescriptionController.text;
      food.price = double.parse(itemPriceController.text);
      food.imageUrl = itemUrlController.text;


      foodList.updateFood(food);


      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Successfully Updated Item')));

    }
    /**/
  }

  @override
  Widget build(BuildContext context) {

    foodList = Provider.of<Foods>(context);

    food = ModalRoute.of(context).settings.arguments as Food;

    itemNameController.text = food.title;
    itemDescriptionController.text = food.description;
    itemPriceController.text = food.price.toString();
    itemUrlController.text = food.imageUrl;

    return Scaffold(
      appBar: AppBar(title: Text('Edit Item'),),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 10,bottom: 10),
        child: Form(
          key: _keyForm,
          child: ListView(
            children: [
              TextFormField(
                controller: itemNameController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                onChanged: (v){xyz = v;},
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Please enter item name';
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Enter Item Name',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    //color: Colors.yellow
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))
                  )
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: itemDescriptionController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Please enter item description';
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                    hintText: 'Enter Item Description',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      //color: Colors.yellow
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                    )
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: itemPriceController,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                //maxLength: 11,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Please enter item price';
                  }else{
                    /*if(value.length == 11){
                      return null;
                    }else{
                      return 'Please enter 11 digit mobile number';
                    }*/

                    return null;
                  }
                },
                decoration: InputDecoration(
                    hintText: 'Enter Item Price',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      //color: Colors.yellow
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                    )
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: itemUrlController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Please enter item url';
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                    hintText: 'Enter Item URL',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      //color: Colors.yellow
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                    )
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){updateItemToList();},
                  child: Text('Update'))
            ],
          ),
        ),
      ),
    );
  }
}
