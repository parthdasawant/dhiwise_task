part of 'goal_details_bloc.dart';

@immutable
abstract class GoalDetailsState {}

abstract class GoalDetailsActionState extends GoalDetailsState{}

class GoalDetailsInitial extends GoalDetailsState {}


class InitialGoalFetchSuccessState extends GoalDetailsState{
  final Data data;
  final List<Segment> segments;
  final List<String> calcList;
  final String totalAmount,target, needMore, monSaveProj;
  InitialGoalFetchSuccessState({required this.data, required this.segments, required this.calcList , required this.totalAmount, required this.target, required this.needMore, required this.monSaveProj});
}

class InitialGoalFetchFailureState extends GoalDetailsState{}
