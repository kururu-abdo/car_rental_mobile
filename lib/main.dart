import 'package:car_rentals/features/dashboard/presentation/dashboard_screen.dart';
import 'package:car_rentals/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Rental app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, 
        surface: Colors.grey[50]
        
        ),
        useMaterial3: true,

      ),
      home: DashboardScreen()
    );
  }
}
