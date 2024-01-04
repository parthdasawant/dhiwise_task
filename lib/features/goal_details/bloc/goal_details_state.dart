part of 'goal_details_bloc.dart';

@immutable
abstract class GoalDetailsState {}

abstract class GoalDetailsActionState extends GoalDetailsState{}

class GoalDetailsInitial extends GoalDetailsState {}


class InitialGoalFetchSuccessState extends GoalDetailsState{
  final Data data;
  final List<Segment> segments;

  InitialGoalFetchSuccessState({required this.data, required this.segments});
}

class InitialGoalFetchFailureState extends GoalDetailsState{}
