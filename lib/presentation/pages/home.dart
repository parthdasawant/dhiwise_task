import 'package:dhiwise_task/presentation/pages/something_went_wrong_screen.dart';
import 'package:dhiwise_task/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/goal_details/bloc/goal_details_bloc.dart';
import '../widgets/contributions_widget.dart';
import '../widgets/main_widget.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GoalDetailsBloc bloc = GoalDetailsBloc();

  @override
  void initState() {
    bloc.add(InitialFetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: taskPurple,
        body: BlocConsumer<GoalDetailsBloc, GoalDetailsState>(
          bloc: bloc,
          buildWhen: (previous, current) => current is! GoalDetailsActionState,
          listenWhen: (previous, current) => current is GoalDetailsActionState,
          listener: (context, state) {},
          builder: (context, state) {
            if (state is InitialGoalFetchSuccessState) {
              return Center(
                child: RefreshIndicator(
                  onRefresh: _refresh,
                  child: ListView(children: [
                    Column(
                      children: [
                        MainWidget(state: state),
                        const SizedBox(
                          height: 20,
                        ),
                        ContributionsWidget(segments: state.segments)
                      ],
                    ),
                  ]),
                ),
              );
            }
            else if (state is InitialGoalFetchFailureState){
              return const SomethingWentWrongScreen();
            }
            else{
              return const Center(child: CircularProgressIndicator(color: Colors.white,));
            }
          },
        ),
      ),
    );
  }

  Future<void> _refresh() {
    bloc.add(InitialFetchEvent());
    return Future.delayed(const Duration(seconds: 1));
  }
}



