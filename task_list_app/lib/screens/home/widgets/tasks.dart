import 'package:flutter/material.dart';
import 'package:task_list_app/models/task.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:task_list_app/screens/detail/detail.dart';

class Tasks extends StatelessWidget {
  final tasksList = Task.generateTasks();

  Tasks({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        itemCount: tasksList.length,
        gridDelegate:

            /// `SliverGridDelegateWithFixedCrossAxisCount` is a delegate used by
            /// `GridView` to control the layout of its children. In this case, it is
            /// creating a grid with a fixed number of columns (`crossAxisCount: 2`) and
            /// setting the spacing between columns to 15 pixels (`crossAxisSpacing:
            /// 15`) and the spacing between rows to 20 pixels (`mainAxisSpacing: 20`).
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) => tasksList[index].isLast
            ? _buildAddTask()
            : _buildTask(context, tasksList[index]),
      ),
    );
  }

  /// This function returns a widget that displays a dotted border with the text "+ Add" in the center.
  ///
  /// Returns:
  ///   A widget that displays a dotted border with rounded corners and the text "+ Add" in the center,
  /// with a specific style.
  Widget _buildAddTask() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(20),

      /// `dashPattern: const [10, 10],` is setting the pattern of the dashed border in the
      /// `_buildAddTask()` function. It is creating a dashed border with a pattern of 10 pixels of
      /// solid line followed by 10 pixels of empty space.
      dashPattern: const [10, 10],
      color: Colors.grey,
      strokeWidth: 2,
      child: const Center(
        child: Text(
          '+ Add',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildTask(BuildContext context, Task task) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailPage(task),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: task.bgColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Icon(
              task.iconData,
              color: task.iconColor,
              size: 35,
            ),
            const SizedBox(height: 25),
            Text(
              task.title!,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildTaskStatus(
                  task.btnColor!,
                  task.iconColor!,
                  '${task.left} left',
                ),
                const SizedBox(width: 5),
                _buildTaskStatus(
                  Colors.white,
                  task.iconColor!,
                  '${task.done} done',
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTaskStatus(Color bgColor, Color txColor, String text) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(1, 1),
            ),
          ]),
      child: Text(
        text,
        style: TextStyle(
          shadows: const [
            Shadow(
              color: Colors.white,
              offset: Offset(1, 1),
            ),
          ],
          color: txColor,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
