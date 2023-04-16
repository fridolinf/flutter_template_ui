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
        /// `alignment: TimelineAlign.manual` is setting the alignment of the `TimelineTile` to be
        /// manually determined by the `lineXY` property. This means that the position of the tile in
        /// the timeline will not be automatically determined based on the order of the tiles, but
        /// rather by the value of `lineXY`.
        alignment: TimelineAlign.manual,

        /// `lineXY: 0` is setting the position of the `TimelineTile` in the timeline. In this case, it
        /// is setting the position to be at the beginning of the timeline, which is represented by the
        /// leftmost side of the `TaskTimeline` widget. By setting `lineXY` to 0, the `TimelineTile`
        /// will be aligned with the left edge of the `TaskTimeline` widget.
        lineXY: 0,

        /// `isFirst: true` is setting the `TimelineTile` to be the first tile in the timeline. This
        /// affects the appearance of the timeline by indicating that this tile should not have a line
        /// before it, since it is the first tile.
        isFirst: true,
        indicatorStyle: IndicatorStyle(
          /// `indicatorXY: 0` is setting the position of the timeline indicator within the
          /// `TimelineTile`. In this case, it is setting the position to be at the beginning of the
          /// `TimelineTile`, which is aligned with the left edge of the `TaskTimeline` widget.
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
