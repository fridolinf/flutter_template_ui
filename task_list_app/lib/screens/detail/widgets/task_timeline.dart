import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TaskTimeline extends StatelessWidget {
  final Map<String, dynamic> detail;
  TaskTimeline(this.detail);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          _buildTimeline(detail['tlColor']),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(detail['time']),
                detail['title'].isNotEmpty
                    ? _buildCard(
                        detail['bgColor'], detail['title'], detail['slot'])
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
      width: 250,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          )),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            slot,
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }

  Widget _buildTimeline(Color color) {
    return Container(
      height: 80,
      width: 20,
      child: TimelineTile(
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
            )),
        afterLineStyle: LineStyle(thickness: 2, color: color),
      ),
    );
  }
}
