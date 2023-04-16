import 'package:flutter/material.dart';
import 'package:task_list_app/models/task.dart';
import 'package:task_list_app/screens/detail/widgets/date_picker.dart';
import 'package:task_list_app/screens/detail/widgets/task_title.dart';
import 'package:task_list_app/screens/detail/widgets/task_timeline.dart';

class DetailPage extends StatelessWidget {
  final Task task;
  const DetailPage(this.task, {super.key});
  @override
  Widget build(BuildContext context) {
    final detialList = task.desc;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),

          /// This code is creating a `SliverToBoxAdapter` widget that contains a `Container` with a
          /// white background color and rounded borders at the top. Inside the container, there is a
          /// `Column` widget with two children: a `DatePicker` widget and a `TaskTitle` widget. This
          /// `SliverToBoxAdapter` widget is used to display the date picker and task title at the top
          /// of the screen, above the list of tasks.
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  DatePicker(),
                  TaskTitle(),
                ],
              ),
            ),
          ),
          detialList == null
              ?

              /// Displaying a message "No task today" in the center of the screen if the `detialList`
              /// is null. It is wrapped in a `SliverFillRemaining` widget to fill the remaining space
              /// of the screen.
              SliverFillRemaining(
                  child: Container(
                    color: Colors.white,
                    child: const Center(
                      child: Text(
                        'No task today',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ),
                  ),
                )
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
        icon: const Icon(Icons.arrow_back_ios),
        iconSize: 20,
      ),
      actions: const [
        Icon(
          Icons.more_vert,
          size: 40,
        )
      ],
      flexibleSpace:

          /// `FlexibleSpaceBar` is a widget used in a `SliverAppBar` to create a flexible
          /// space that can expand and contract as the user scrolls. In this code,
          /// `FlexibleSpaceBar` is used to display the title and subtitle of the page. The
          /// `title` property is set to a `Column` widget that contains two `Text` widgets.
          /// The first `Text` widget displays the title of the task followed by the word
          /// "tasks". The second `Text` widget displays the number of tasks left for the
          /// day. The `mainAxisAlignment` property is set to `MainAxisAlignment.end` to
          /// align the `Column` at the bottom of the `SliverAppBar`, and the
          /// `crossAxisAlignment` property is set to `CrossAxisAlignment.start` to align the
          /// text to the left.
          FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${task.title} tasks',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'You have ${task.left} tasks for today!',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
