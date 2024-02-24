
import 'package:flutter/material.dart';
import 'package:payment_check_out/features/checkout/presentation/widgets/payment_item.dart';

class PaymentListView extends StatefulWidget {
  const PaymentListView({super.key});

  @override
  State<PaymentListView> createState() => _PaymentListViewState();
}

class _PaymentListViewState extends State<PaymentListView> {
  final List<String> paymentMethods = const [
    'assets/images/card.svg',
    'assets/images/pay_pal.svg',
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: paymentMethods.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                activeIndex = index;

                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: PaymentMethodItem(
                  isActive: activeIndex == index,
                  image: paymentMethods[index],
                ),
              ),
            );
          }),
    );
  }
}
