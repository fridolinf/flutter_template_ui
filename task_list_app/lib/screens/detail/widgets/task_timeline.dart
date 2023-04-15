import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TaskTimeline extends StatelessWidget {
  final Map<String, dynamic> detail;
  const TaskTimeline(this.detail, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Row(
        children: [
          _buildTimeline(
            detail['tlColor'],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(detail['time']),
                detail['title'].isNotEmpty
                    ? _buildCard(
                        detail['bgColor'],
                        detail['title'],
                        detail['slot'],
                      )
                    : _buildCard(Colors.white, '', '')
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard(Color bgColor, String title, String slot) {
    return Container(
      width: 230,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          )),
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(
        top: 0,
        right: 5,
        bottom: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            slot,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }

  Widget _buildTimeline(Color color) {
    return SizedBox(
      height: 80,
      width: 20,
      child:

          /// `TimelineTile` is a widget from the `timeline_tile` package that creates a tile with a
          /// timeline indicator. The code block provided is creating a `TimelineTile` with a manual
          /// alignment, meaning the position of the tile is determined by the `lineXY` property. The
          /// `isFirst` property is set to true to indicate that this is the first tile in the
          /// timeline. The `indicatorStyle` property is used to customize the appearance of the
          /// timeline indicator, which is a white circle with a colored border in this case. The
          /// `afterLineStyle` property is used to customize the appearance of the line after the
          /// timeline indicator.
          TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0,
        isFirst: true,
        indicatorStyle: IndicatorStyle(
          indicatorXY: 0,
          width: 15,
          indicator: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(width: 5, color: color),
            ),
          ),
        ),
        afterLineStyle: LineStyle(thickness: 2, color: color),
      ),
    );
  }
}
