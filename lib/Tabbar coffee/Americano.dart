import 'package:flutter/material.dart';

class Americano extends StatelessWidget {
 const Americano();
 @override
 Widget build(BuildContext context){
  return GridView.count(
                crossAxisCount: 2, // Кількість елементів у рядку
                childAspectRatio: 63/100,
                padding: EdgeInsets.all(10),
                children: [

                   Container( 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16), 
                      color: Colors.white),      
              child: Column( children: [
                Container( 
                  height:141, 
                  width: 132, 
                  decoration:  BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/image/Capuchino1.png'),
                    fit: BoxFit.fitHeight ),
                    borderRadius: BorderRadius.circular(10) ), 
                    child: Text('4.9'),),
                SizedBox(height: 5,),
                Text('Americano'),
                Text('with Cocolate'),
                Text('4,53'),] )),
 ]);}}