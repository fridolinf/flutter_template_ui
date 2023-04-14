import 'package:flutter/material.dart';
import 'package:task_app/models/task.dart';
import 'package:task_app/screens/detail/widgets/date_picker.dart';
import 'package:task_app/screens/detail/widgets/task_title.dart';
import 'package:task_app/screens/detail/widgets/task_timeline.dart';

class DetailPage extends StatelessWidget {
  final Task task;
  DetailPage(this.task);
  @override
  Widget build(BuildContext context) {
    final detialList = task.desc;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [DatePicker(), TaskTitle()],
              ),
            ),
          ),
          detialList == null
              ? SliverFillRemaining(
                  child: Container(
                      color: Colors.white,
                      child: Center(
                          child: Text(
                        'No task tody',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ))))
              : SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (_, index) => TaskTimeline(detialList[index]),
                      childCount: detialList.length),
                )
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 90,
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(Icons.arrow_back_ios),
        iconSize: 20,
      ),
      actions: [
        Icon(
          Icons.more_vert,
          size: 40,
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${task.title} tasks',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 5),
              Text(
                'You have ${task.left} tasks for today!',
                style: TextStyle(fontSize: 12, color: Colors.grey[700]),
              )
            ]),
      ),
    );
  }
}
