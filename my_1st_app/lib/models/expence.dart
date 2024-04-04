import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';



//create a uniqe id using uuid
final uuid = Uuid().v4();

// date formatter
final famattedDate = DateFormat.yMd();
//enum 
enum Category {food,travel,leasure,work}

//category icon 
final CategoryIcons = {
  Category.food : Icons.lunch_dining,
  Category.leasure:Icons.leak_add,
  Category.travel:Icons.travel_explore,
  Category.work:Icons.work,
};
class ExpenceModel{
  ExpenceModel({
    required this.amount,
    required this.date,
    required this.title,
    required this.category
  }): id = uuid;
  
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category; 
  //getter > formated date
  String get getFormatedDate {
    return famattedDate.format(date);
  }

}