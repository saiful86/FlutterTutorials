import 'package:flutter/material.dart';
import 'package:food_order_app/providers/food.dart';
import 'package:food_order_app/providers/foods.dart';
import 'package:provider/provider.dart';

class AddItem extends StatefulWidget {

  static const routeName = '/addItem';

  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {

  String xyz;
  Foods foodList;

  final itemNameController = TextEditingController();
  final itemDescriptionController = TextEditingController();
  final itemPriceController = TextEditingController();
  final itemUrlController = TextEditingController();

  void saveItemToList(){
    print('saveItemToList ${itemNameController.text}');

    Food food =  Food(
      title: itemNameController.text,
      description: itemDescriptionController.text,
      price: double.parse(itemPriceController.text),
      imageUrl:itemUrlController.text,
    );

    foodList.addFood(food);

  }

  @override
  Widget build(BuildContext context) {

    foodList = Provider.of<Foods>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Add Item'),),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 10,bottom: 10),
        child: Form(
          child: ListView(
            children: [

              TextFormField(
                controller: itemNameController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                onChanged: (v){xyz = v;},
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
                  onPressed: (){saveItemToList();},
                  child: Text('Save'))
            ],
          ),
        ),
      ),
    );
  }
}
