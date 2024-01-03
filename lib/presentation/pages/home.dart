import 'package:dhiwise_task/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:primer_progress_bar/primer_progress_bar.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Segment> segments = const [
    Segment(value: 15000, color: taskBlue, label: Text("Monthly Salary",style:TextStyle()), valueLabel: Text('\$15000')),
    Segment(value: 3000, color: taskYellow, label: Text("Dividend"), valueLabel: Text('\$3000')),
    Segment(value: 2000, color: taskCyan, label: Text("Rent "), valueLabel: Text('\$2000')),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: taskPurple,
        body: Center(
          child: ListView(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10.0, 0,8),
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
                                maximum: 300,
                                // target
                                axisLineStyle: const AxisLineStyle(color: taskBluishGray, thickness: 7),
                                annotations: const <GaugeAnnotation>[
                                  GaugeAnnotation(
                                      angle: 90,
                                      widget: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Icon(
                                            Icons.home,
                                            color: Colors.white,
                                            size: 100,
                                          ),
                                          Column(
                                            children: [
                                              Text('\$25,000',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 30,
                                                      color: Colors.white)),
                                              Text(
                                                'You Saved',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: taskBluishGray),
                                              ),
                                            ],
                                          )
                                        ],
                                      )),
                                  GaugeAnnotation(
                                    angle: 124,
                                    positionFactor: 1.1,
                                    widget: Text(
                                      '',
                                    ),
                                  ),
                                  GaugeAnnotation(
                                    angle: 54,
                                    positionFactor: 1.1,
                                    widget: Text(
                                      '',
                                    ),
                                  ),
                                ],
                                pointers: const <GaugePointer>[
                                  RangePointer(
                                    value: 130, //you saved
                                    width: 7,
                                    pointerOffset: 0,
                                    color: Colors.white,
                                  )
                                ]),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Goal", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text("by Jan 2030", style: TextStyle(color: taskBluishGray,),)
                            ],),
                            Text('\$25,000',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white)),
                          ],),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          height: 80,
                          decoration: const BoxDecoration(
                            color: taskLightBlue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ), //BorderRadius.all
                        ),
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [Text("Need more savings", style: TextStyle(color: Colors.white)),
                                Text("\$25,000", style: TextStyle(color: Colors.white))],
                              ),Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [Text("Monthly Saving Projection", style: TextStyle(color: Colors.white)),
                                  Text("\$250", style: TextStyle(color: Colors.white),)],
                              ),],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.35,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    )
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text("Contributions", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          Text("Show History")],),
                        ),
                    PrimerProgressBar(
                      segments: segments,
                      legendStyle: SegmentedBarLegendStyle(spacing: MediaQuery.sizeOf(context).width, ),

                      legendEllipsisBuilder: DefaultLegendEllipsisBuilder(
                        segments: segments,
                        color: Colors.grey,
                        label: const Text("Other"),
                        // [value] is the sum of [Segment.value]s for each legend item that is overflowed
                        valueLabelBuilder: (value) => Text("${segments[value].valueLabel}%"),

                      ),
                    )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
