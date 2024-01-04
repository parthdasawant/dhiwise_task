import 'package:flutter/material.dart';
import 'package:primer_progress_bar/primer_progress_bar.dart';

class ContributionsWidget extends StatelessWidget {
  const ContributionsWidget({
    super.key,
    required this.segments,
  });

  final List<Segment> segments;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.35,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          )),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Contributions",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text("Show History")
                ],
              ),
            ),
            PrimerProgressBar(
              segments: segments,
              legendStyle: SegmentedBarLegendStyle(
                spacing: MediaQuery.sizeOf(context).width,
              ),
              legendEllipsisBuilder: DefaultLegendEllipsisBuilder(
                segments: segments,
                color: Colors.grey,
                label: const Text("Other"),
                // [value] is the sum of [Segment.value]s for each legend item that is overflowed
                valueLabelBuilder: (value) =>
                    Text("${segments[value].valueLabel}%"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
