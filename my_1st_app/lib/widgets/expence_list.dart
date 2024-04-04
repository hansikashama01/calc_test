import 'package:flutter/material.dart';
import 'package:my_1st_app/models/expence.dart';
import 'package:my_1st_app/widgets/expence_tile.dart';

class ExpenceList extends StatelessWidget {
  const ExpenceList({super.key,required this.expenceList});

   final List <ExpenceModel> expenceList;

  @override
  Widget build(BuildContext context) {
    return  Expanded(
            child: ListView.builder(
              itemCount:  expenceList.length,
              itemBuilder: (BuildContext context, int index) {
                return ExpenceTile(
                  expence: expenceList[index],
                );
              },
            ),
          );
  }
}