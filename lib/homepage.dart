import 'package:flutter/material.dart';
import 'package:mang/plus_button.dart';
import 'package:mang/top_card.dart';
import 'package:mang/transaction.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _textcontrollerAmount = TextEditingController();
  final _textcontrollerItem = TextEditingController();
  final _forkey = GlobalKey();
  bool _isIncome = false;

//
//
  void _enterTransaction() {
    final List current = [];
    _textcontrollerAmount.text;
    _textcontrollerItem.text;
    _isIncome;
    setState(() {

    });
  }

  void _newTransaction() {
    showDialog(
        barrierDismissible: false,
        context: context, builder: (context) {
      return StatefulBuilder(builder: (BuildContext context, setState) {
        return AlertDialog(
          title: Text("New Transaction"),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("expense"),
                    Switch(value: _isIncome,
                      onChanged: (newValue) {
                        setState() {
                          _isIncome = newValue;
                        }
                      },
                    ),
                    Text("incom"),

                  ],
                ),
                SizedBox(height: 5,
                ),
                Row(
                  children: [
                    Expanded(child:
                    Form(
                      key: _forkey,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "enter Amount ?",

                        ),
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return "enter";
                          }
                          return null;
                        },
                        controller: _textcontrollerAmount,
                      ),
                    )
                    ),
                  ],
                ),
                SizedBox(height: 5,
                ),
                Row(
                  children: [
                    Expanded(child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "for what",

                      ),
                      controller: _textcontrollerItem,
                    ),
                    ),
                  ],
                )
              ],
            ),
          ),
          actions: <Widget>[
            MaterialButton(
                color: Colors.grey,
                child: Text("cancel ", style: TextStyle(color: Colors.white),),
                onPressed: () {
                  Navigator.of(context).pop();
                }
            )
            , MaterialButton(
                color: Colors.grey,
                child: Text("enter ", style: TextStyle(color: Colors.white),),
                onPressed: () {
                  if (_forkey.currentState != null) {
                    _enterTransaction();
                    Navigator.of(context).pop();
                  }
                }
            )
          ],

        );
      },

      );
    }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Mang"),
          actions: [
            IconButton(icon: Icon(Icons.add), onPressed: () {})
          ],
        ),
        body: Column(
            children: [
              TopNewCard(
                balance: '\$ 3333',
                income: '\$555',
                expense: '\$5555',
              ),
              // Container(
              //   height: 50,
              //   child: Center(child: Text('Total '),
              //   ),
              // ),
              Expanded(
                child: Container(
                  color: Colors.cyan,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(child:
                        Container(
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Expanded(child: ListView.builder

                                  (itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return MyTranaction(
                                        tranactionName: "transactionName",
                                        money: "money",
                                        expenseOrIncome: "income",);
                                    }
                                ),
                                )
                              ],
                            ),
                          ),
                        ))
                        // MyTranaction(tranactionName: "Teaching", money: "300", expenseOrIncome: "income")

                      ],
                    ),
                  ),
                ),
              ),
        PlusButton(function: _newTransaction,
              )
            ])
    );
  }
}

//           // Container(
//           //
//           //   height: 75,
//           //   width: 75,
//           //   // decoration: BoxDecoration(
//           //   //   color: Colors.red,
//           //   //   shape: BoxShape.circle,
//           //   // ),
//           //   child: Center(child: Text('+' ,style: TextStyle(color: Colors.white,fontSize: 40),)
//           //     ,
//           //   ),
//           // ),
//         ],
//       ),
//     );



