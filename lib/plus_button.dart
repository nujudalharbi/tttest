
import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  final function;

  PlusButton ({Key? key, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    GestureDetector(
      onTap: function,
      child: Container(

        height: 75,
        width: 75,
      //   // decoration: BoxDecoration(
        //   color: Colors.red,
        //   shape: BoxShape.circle,
        // ),
        child: Center(child: Text('+' ,style: TextStyle(color: Colors.white,fontSize: 40),)
          ,
        ),
      ),
    );
  }
}
