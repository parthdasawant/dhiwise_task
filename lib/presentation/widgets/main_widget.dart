import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../features/goal_details/bloc/goal_details_bloc.dart';
import '../../themes/colors.dart';
import 'package:intl/intl.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({
    super.key,
    required this.state,
  });
  final InitialGoalFetchSuccessState state;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 35, 25, 35),
      child: Column(
        children: [
          SfRadialGauge(
            enableLoadingAnimation: true,
            title: const GaugeTitle(
                text: "Buy a dream house",
                textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35)),
            axes: <RadialAxis>[
              RadialAxis(
                  showLabels: false,
                  showTicks: false,
                  radiusFactor: 0.8,
                  startAngle: 120,
                  endAngle: 60,
                  maximum: state.data.target.toDouble(),
                  axisLineStyle:
                  const AxisLineStyle(color: taskBluishGray, thickness: 7),
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                        angle: 90,
                        widget: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.home,
                              color: Colors.white,
                              size: MediaQuery.sizeOf(context).width * 0.25,
                            ),
                            Column(
                              children: [
                                Text(state.totalAmount,
                                    style:
                                    // Theme.of(context).textTheme.displaySmall?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)
                                    const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        color: Colors.white)
                                ),
                                Text(
                                  'You Saved',
                                  style:
                                  // Theme.of(context).textTheme.titleLarge?.copyWith(color: taskBluishGray, fontWeight: FontWeight.bold)
                                  TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: taskBluishGray),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                  pointers: <GaugePointer>[
                    RangePointer(
                      value: state.data.totalAmount.toDouble(), //you saved
                      width: 7,
                      pointerOffset: 0,
                      color: Colors.white,
                    )
                  ]),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Goal",
                      style:
                      // Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white , fontWeight: FontWeight.bold)
                      TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "by ${DateFormat('MMM yyyy').format(state.data.expectedCompletionDate.toDate())}",
                      style: const TextStyle(
                        color: taskBluishGray,
                      ),
                    )
                  ],
                ),
                Text(state.target,
                    style:
                    // Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)
                    const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white)
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.10,
            decoration: const BoxDecoration(
              color: taskLightBlue,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ), //BorderRadius.all
            ),
            child:  Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Need more savings",
                          style: TextStyle(color: Colors.white)),
                      Text(state.needMore, style: const TextStyle(color: Colors.white))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Monthly Saving Projection",
                          style: TextStyle(color: Colors.white)),
                      Text(
                        state.monSaveProj,
                        style: const TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}