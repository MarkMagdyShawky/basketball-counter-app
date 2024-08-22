import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(): super(CounterBIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void incrementPoints({required String team, required int point}) {
    if (team == 'A') {
      teamAPoints += point;
      emit(CounterAIncrementState());
    } else if (team == 'B') {
      teamBPoints += point;
      emit(CounterBIncrementState());
    }
  }
}
