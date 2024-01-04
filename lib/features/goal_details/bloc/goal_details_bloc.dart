import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dhiwise_task/features/goal_details/repos/goal_details_repo.dart';
import 'package:meta/meta.dart';

import '../models/datamodel.dart';
import 'package:primer_progress_bar/primer_progress_bar.dart';


part 'goal_details_event.dart';
part 'goal_details_state.dart';

class GoalDetailsBloc extends Bloc<GoalDetailsEvent, GoalDetailsState> {
  GoalDetailsBloc() : super(GoalDetailsInitial()) {
    on<InitialFetchEvent>(initialFetchEvent);
  }

  Future<FutureOr<void>> initialFetchEvent(InitialFetchEvent event, Emitter<GoalDetailsState> emit) async {
    var instance = FirebaseFirestore.instance;
    Data data = await getData(instance);
    List<Segment> segments = await getSegments(data);
    emit(InitialGoalFetchSuccessState(data: data, segments: segments));
  }


}
