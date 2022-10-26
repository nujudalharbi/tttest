import 'package:flutter/material.dart';

class TopNewCard extends StatelessWidget {
  final String balance;
  final String income ;
  final String expense ;
   TopNewCard({Key? key, required this.balance, required this.income, required this.expense}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        height: 200,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              " b a l an c e",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              balance,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_upward),
                    Column(
                      children: [
                        Text("income"),
                        Text(income),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_downward),
                    Column(
                      children: [
                        Text("expense"),
                        Text(expense),
                      ],
                    ),
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
