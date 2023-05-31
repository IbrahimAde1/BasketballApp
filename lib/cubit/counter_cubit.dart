import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state_cubit.dart';

class CounterCubit extends Cubit<CointerState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamA = 0;
  int teamB = 0;
  void teamIncrement(
      {required int buttonNumber, required String team, bool rest = false}) {
    if (team == 'A') {
      teamA += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamB += buttonNumber;
      emit(CounterBIncrementState());
    }
    if (rest == true) {
      teamA = 0;
      teamB = 0;
    }
  }
}
