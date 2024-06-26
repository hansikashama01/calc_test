import 'package:flutter/material.dart';
import 'package:my_1st_app/models/expence.dart';

class ExpenceTile extends StatelessWidget {
  const ExpenceTile({super.key,required this.expence});

final ExpenceModel expence;

  @override
  Widget build(BuildContext context) {
    return   Card(
                  color: const Color.fromARGB(255, 29, 246, 141),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16, 
                      horizontal: 20,
                    
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    
                      children: [
                        Text(expence.title,
                      style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(
                        height: 10,
                        ),
                      Row(
                        children: [Text(
                          expence.amount.toStringAsFixed(2)
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Icon(CategoryIcons[expence.category]),
                           const SizedBox(width: 8,) ,
                            Text(expence.getFormatedDate)
                            ],
                    
                        )
                        ],
                      )
                      ],
                    ),
                  ),
                );
  }
}