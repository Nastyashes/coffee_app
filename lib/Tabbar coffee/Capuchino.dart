import 'package:flutter/material.dart';


class Cappuccino extends StatelessWidget {
 const Cappuccino();
 @override
 Widget build(BuildContext context){
  return GridView.count(
                crossAxisCount: 2, // Кількість елементів у рядку
                childAspectRatio: 149/239,
                padding: EdgeInsets.symmetric(horizontal: 30),
                children: [

               
                 
                   Container(
                    height: 239,
                    width: 149,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16), 
                      color: const Color.fromARGB(122, 158, 158, 158)),      
                    child: Column( children: [
                     Container( 
                      height:141, 
                      width: 132,
                      margin: EdgeInsets.all(4),
                      decoration:  BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/image/Capuchino1.png'),
                      fit: BoxFit.fitHeight),
                      borderRadius: BorderRadius.circular(10) ), 
                      child: Text('4.9'),),
                      SizedBox(height: 5,),
                      Text('Capuchino', style: TextStyle(fontFamily: 'Sora', fontSize: 16, fontWeight: FontWeight.w600), ),
                      Text('with Cocolate', style: TextStyle(fontFamily: 'Sora', fontSize: 12, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1)),),
                      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                        Text( '\$ 4.53', 
                      style: TextStyle(
                      fontFamily: 'Sora', 
                      fontSize: 18, 
                      fontWeight: FontWeight.w600, 
                      color: Color.fromRGBO(47, 75, 78, 1)),),
                    IconButton(style: ButtonStyle(
                    iconColor: MaterialStatePropertyAll(Color.fromRGBO(198, 124, 78, 1))),
                    iconSize: 32,
                    onPressed: (){}, icon: Icon (Icons.add_box))])])),
 

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
                Text('Capuchino'),
                Text('with Cocolate'),
                Text('4,53'),] )),

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
                Text('Capuchino'),
                Text('with Cocolate'),
                Text('4,53'),] )),
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
                Text('Capuchino'),
                Text('with Cocolate'),
                Text('4,53'),] )),
               
                ]
              );

               
            
    
}}