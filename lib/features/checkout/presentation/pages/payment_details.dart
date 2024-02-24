import 'package:flutter/material.dart';
import 'package:payment_check_out/core/widgets/custom_app_bar.dart';
import 'package:payment_check_out/features/checkout/presentation/widgets/payment_ddetails.body.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(title: 'Payment Details'),
        body: const PaymentDetailsBody());
  }
}
