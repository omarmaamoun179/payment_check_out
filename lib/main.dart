import 'package:flutter/material.dart';
import 'package:payment_check_out/features/checkout/presentation/pages/my_cart_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyCartView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
