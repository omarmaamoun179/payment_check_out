import 'package:flutter/material.dart';
import 'package:payment_check_out/core/utils/styles.dart';
import 'package:payment_check_out/core/widgets/custom_app_bar.dart';
import 'package:payment_check_out/core/widgets/custom_button.dart';
import 'package:payment_check_out/features/checkout/presentation/pages/payment_details.dart';
import 'package:payment_check_out/features/checkout/presentation/widgets/order_info_widget.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'My Cart',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(child: Image.asset('assets/images/order_goup.png')),
            const SizedBox(
              height: 20,
            ),
            const OrderInfoItem(
              title: 'Order SubToaoal',
              vlaue: '\$42.97',
            ),
            const SizedBox(
              height: 3,
            ),
            const OrderInfoItem(
              title: 'Shipping',
              vlaue: '\$10',
            ),
            const SizedBox(
              height: 3,
            ),
            const OrderInfoItem(
              title: 'Discount',
              vlaue: '\$0',
            ),
            Divider(
              thickness: 3,
              color: Colors.grey[300],
              height: 35,
            ),
            const TotalPrice(
              total: 'Total',
              value: '\$52.97',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'Compelete Payment',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PaymentDetails(),
                  ),
                );
              },
              isLoading: false,
            ),
          ],
        ),
      ),
    );
  }
}

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.total, required this.value});
  final String total, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          total,
          style: Styles.style25,
        ),
        const Spacer(),
        Text(
          value,
          style: Styles.style25,
        ),
      ],
    );
  }
}
