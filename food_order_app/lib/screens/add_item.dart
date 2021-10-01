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

  final _keyForm = GlobalKey<FormState>();

  final itemNameController = TextEditingController();
  final itemDescriptionController = TextEditingController();
  final itemPriceController = TextEditingController();
  final itemUrlController = TextEditingController();

  void saveItemToList(){

    print('saveItemToList ${itemNameController.text}');

    if(_keyForm.currentState.validate()){
      Food food =  Food(
        title: itemNameController.text,
        description: itemDescriptionController.text,
        price: double.parse(itemPriceController.text),
        imageUrl:itemUrlController.text,
      );

      foodList.addFood(food);

      itemNameController.text = '';
      itemDescriptionController.text = '';
      itemPriceController.text = '';
      itemUrlController.text = '';

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Successfully Saved Item')));


    }



    /**/

  }

  @override
  Widget build(BuildContext context) {

    foodList = Provider.of<Foods>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Add Item'),),
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
                  onPressed: (){saveItemToList();},
                  child: Text('Save'))
            ],
          ),
        ),
      ),
    );
  }
}
