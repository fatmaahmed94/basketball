// ignore_for_file: file_names, unused_import, non_constant_identifier_names

import 'package:basketball/cubit/counter-state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState() as CounterState);
  int teamApoints = 0;

  int teamBpoints = 0;
  void TeamIncrement({required String team, required int buttonNumber}) {
    if (team == "A") {
      teamApoints += buttonNumber;
      emit(CounterAIncrementState() as CounterState);
    } else {
      teamBpoints += buttonNumber;
      emit(CounterBIncrementState() as CounterState);
    }
  }
}
