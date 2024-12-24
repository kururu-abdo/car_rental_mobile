import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50, height: 50, 

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white54.withAlpha(50)
      ),
      child: Center(child: Icon(Icons.notifications_none_outlined , color: Colors.white,),),
    );
  }
}