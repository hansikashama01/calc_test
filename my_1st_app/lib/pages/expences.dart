import 'package:flutter/material.dart';
import 'package:my_1st_app/models/expence.dart';
import 'package:my_1st_app/widgets/add_new_expencs.dart';
import 'package:my_1st_app/widgets/expence_list.dart';

class Expences extends StatefulWidget {
  const Expences({super.key});

  @override
  State<Expences> createState() => _ExpencesState();
}

class _ExpencesState extends State<Expences> {
 
 //expenceList
 final List <ExpenceModel> _expenceList =  [
  ExpenceModel(amount: 12.5, date: DateTime.now(), title: "Cricket", category: Category.leasure),
  ExpenceModel(amount: 10, date: DateTime.now(), title: "pizza", category: Category.food),
  ExpenceModel(amount: 25, date: DateTime.now(), title: "Bag", category: Category.travel)
 ] ;
 

 //function
 void _openAddExpencesOverlay(){
  showModalBottomSheet(
    context: context, 
    builder: (context){
      return AddNewExpence();

    },
    );

 }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Expences Cheker"),
        backgroundColor: Color.fromARGB(255, 86, 186, 186),
        actions: [
        Container(
          color: Color.fromARGB(255, 204, 251, 17),
          child: IconButton(
            onPressed:_openAddExpencesOverlay,
           icon: Icon(
            Icons.add,
            color: Color.fromARGB(255, 21, 28, 3),
            )
          )
         )
        ],
      ),
      body: Column(
        children: [
      ExpenceList(expenceList: _expenceList,) ,
       ],
      ),
    );
  }
}