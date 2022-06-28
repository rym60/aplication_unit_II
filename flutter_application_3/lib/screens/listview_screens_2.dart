

import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
   
  const ListView2Screen({Key? key}) : super(key: key);
  final fruits = const ["Apple","Banana","Orange","Pineaple","Strawberry"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("list view screen type 2"),
        backgroundColor: Colors.pink,
        elevation: 4,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          trailing: const Icon(Icons.arrow_forward_ios_outlined, 
          color: Colors.pink,),
          title: Text(fruits[index]),
          onTap: () {
            final fruit = fruits[index];
            print(fruit);
          },
          ), 
      separatorBuilder: (context, index) => const Divider(), 
      itemCount: fruits.length),
    );
  }
}