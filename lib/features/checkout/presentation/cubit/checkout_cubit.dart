

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_check_out/features/checkout/presentation/cubit/checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit() : super(CheckoutInitial());
}
