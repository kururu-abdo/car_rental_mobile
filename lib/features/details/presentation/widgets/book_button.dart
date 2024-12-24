import 'package:car_rentals/utils/sizes.dart';
import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  final VoidCallback? callback;
  final String? title;
  final backgroundColor;
  const BookButton({super.key, this.callback, 
  this.title, this.backgroundColor= Colors.red});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: getFullWidth(context)*.35,
      height: 50,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(24), 
color: backgroundColor
),
child: Center(
  child: Text(title!, 
  style: TextStyle(
    color: Colors.white
  ),
  ),
),
    );
  }
}