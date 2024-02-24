import 'package:flutter/material.dart';
import 'package:payment_check_out/core/utils/styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, this.title, this.vlaue});
  final String? title, vlaue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title ?? '',
          style: Styles.style18,
        ),
        const Spacer(),
        Text(
          vlaue ?? '',
          style: Styles.style18,
        ),
      ],
    );
  }
}
