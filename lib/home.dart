
import 'dart:html';

import 'package:coffee_app/Choice.dart';
import 'package:coffee_app/Tabbar%20coffee/Americano.dart';
import 'package:coffee_app/Tabbar%20coffee/Capuchino.dart';
import 'package:coffee_app/Tabbar%20coffee/Espresso.dart';
import 'package:coffee_app/Tabbar%20coffee/Latte.dart';
import 'package:coffee_app/Tabbar%20coffee/Machiato.dart';
import 'package:coffee_app/detail.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home ();


  @override
    State<Home> createState() => HomeState(); 
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);} 


  @override


  Widget build(BuildContext context) {
    return Scaffold(

       
      
      body: ( 
        
        Stack( 
         children: [
           Container( height: 280, width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromRGBO(19, 19, 19, 1),Color.fromRGBO(49, 49, 49, 1)], // Цвета градиента
                begin: Alignment.centerRight, // Начало градиента
                end: Alignment.centerLeft, // Конец градиента
              ),),
              ), 
        Positioned(
          child: Column(    
          children: [ 
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Container(width: 200 ,
              child:
              TextField( 
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  labelText: 'Location',
                  labelStyle: TextStyle(
                    fontSize: 14, 
                    fontFamily: 'Sora', 
                    fontWeight: FontWeight.w400, 
                    color: Color.fromRGBO(152, 152, 152, 1),
                    height: 3),
                ),
                onChanged: (value) {
                  // Обработка изменений в строке поиска
                },
              ) ,)
            ), 
           Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container( width: 44,height: 44, decoration:
               BoxDecoration (borderRadius: BorderRadius.circular(14),image:  DecorationImage(image: AssetImage('assets/image/user.png', ))),
              ))
            ],),
       Padding(
        padding: EdgeInsets.all(10),
              child: 
              TextField( 
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  labelText: 'Search coffee',
                  labelStyle: TextStyle(
                    fontSize: 14, 
                    fontFamily: 'Sora', 
                    fontWeight: FontWeight.w400, 
                    color: Color.fromRGBO(152, 152, 152, 1),
                    height: 1),
                  border: OutlineInputBorder( borderRadius: BorderRadius.circular(16),),
                  prefixIcon: Icon(Icons.search),
                   suffixIcon: IconButton(
                    icon: Icon(Icons.filter_list), onPressed: () {},
                   )
                ),
                onChanged: (value) {
                  // Обработка изменений в строке поиска
                },
              )
            ),
       Align(alignment: Alignment.topCenter, child: 
        Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
         child: 
        Container( padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          height: 140, 
         width: double.infinity,
         alignment: Alignment.centerLeft,
         decoration: BoxDecoration( borderRadius: BorderRadius.circular(16),
         image: DecorationImage(
          image: AssetImage('assets/image/promo.png'),
          fit: BoxFit.cover) ),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[ 
            
               Container (
                 padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(237, 81, 81, 1),),
                child: Text (
                  style: TextStyle(
                fontFamily: 'Sora',
                color: Color.fromRGBO(255, 255, 255, 1),
                 fontSize: 14,
                 fontWeight: FontWeight.w600), 'promo'),),
                 SizedBox(height: 15,),
              Text ( 
                 style: TextStyle(
                  height: 1,
                 fontFamily: 'Sora',
                 color: Color.fromRGBO(255, 255, 255, 1),
                 fontSize: 32,
                 backgroundColor:   Color.fromRGBO(19, 19, 19, 1),
                 fontWeight: FontWeight.w600),'Buy one get \n one FREE'),

                 ])
     
    ),),),

    TabBar(tabs: [
           Tab( text: '    Cappuccino    '),
           Tab( text: '    Machiato    '),
           Tab( text: '    Latte    '),
           Tab( text: '    Americano    '),
           Tab( text: '    Espresso    '),],
            labelStyle: TextStyle( fontFamily: 'Sora', fontWeight: FontWeight.w600, fontSize: 14, color: Colors.white),
            unselectedLabelColor: Color.fromRGBO(47, 75, 78, 1),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
            indicatorWeight: 1,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 2,vertical: 2),
            controller: _tabController,
            isScrollable: true, 
            labelPadding: EdgeInsets.symmetric(horizontal: 5),
            indicatorColor: Colors.transparent,
            indicator: BoxDecoration(color: Color.fromRGBO(198, 124, 78, 1), borderRadius: BorderRadius.circular(16),),),

           
             Expanded( 
            child: TabBarView(
              controller: _tabController,
              children: [
                Cappuccino(),
                Machiato(),
                Latte(),
                Americano(),
                Espresso()
              ]
            ),)

              ],),)
] )), 
         
    );
          
  }
  

}