import 'package:flutter/material.dart';

class AddNewExpence extends StatefulWidget {
  const AddNewExpence({super.key});

  @override
  State<AddNewExpence> createState() => _AddNewExpenceState();
}

class _AddNewExpenceState extends State<AddNewExpence> {

final _titleController = TextEditingController();
final _amountController = TextEditingController();



@override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _amountController.dispose();
  }
  


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //title text feild
        TextField(
          controller:_titleController ,
          decoration:const InputDecoration(
            hintText: "Add new expence title",
            label: Text("Title")
          ),
          keyboardType: TextInputType.text,
          maxLength: 50,
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                  controller: _amountController,
                  decoration: const InputDecoration(
                    helperText: "Enter the amount",
                    label: Text("amount"),
                    
                  ),
                  keyboardType:TextInputType.number,
                )
            )
              ],
            ),
          ],
        );
  }
}