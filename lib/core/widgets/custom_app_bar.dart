import 'package:flutter/material.dart';
import 'package:payment_check_out/core/utils/styles.dart';

AppBar buildAppBar(
    {
      required String title,
    }
  ) {
    return AppBar(
      elevation: 0,
      leading: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      centerTitle: true,
      title:  Text(
        title,
        style: Styles.style25,
      ),
    );
  }