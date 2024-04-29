import 'package:flutter/material.dart';

class Cappuccino extends StatefulWidget {
  @override
  CappuccinoState createState() => CappuccinoState();}

  class CappuccinoState extends State<Cappuccino> {

  int _counter =0;
  
  void _increment() {
    setState(() {
      _counter++;
    });
  }
  void _decrement(){
    setState(() {
      if (_counter > 0){
        _counter--;
      }
    });
  }
@override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: _decrement,
        ),
        Text(
          '$_counter',
          style: TextStyle(fontSize: 20),
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: _increment,)]);}}