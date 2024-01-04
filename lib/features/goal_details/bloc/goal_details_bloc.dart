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
    Data? data = await getData(instance);
    if(data != null){
      List<Segment>? segments = await getSegments(data);
      List<String>? calcList = await getCalcList(data);
      if(segments != null && calcList != null){
        String totalAmount = calcList[0];
        String target = calcList[1];
        String needMore = calcList[2];
        String monSaveProj = calcList[3];
        emit(InitialGoalFetchSuccessState(data: data, segments: segments, calcList:calcList, totalAmount: totalAmount, target: target, needMore: needMore, monSaveProj: monSaveProj));
      }else {
        emit(InitialGoalFetchFailureState());
      }
    }else {
      emit(InitialGoalFetchFailureState());
    }
  }


}
