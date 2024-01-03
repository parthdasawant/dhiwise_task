import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'goal_details_event.dart';
part 'goal_details_state.dart';

class GoalDetailsBloc extends Bloc<GoalDetailsEvent, GoalDetailsState> {
  GoalDetailsBloc() : super(GoalDetailsInitial()) {
    on<GoalDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
