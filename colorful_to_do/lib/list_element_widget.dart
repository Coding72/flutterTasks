import 'package:flutter/material.dart';

class ListElementWidget extends StatelessWidget {
  final String todo;
  final IconData? iconName;
  const ListElementWidget(
    this.todo, {
    super.key,

    this.iconName = Icons.favorite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.amber,
      child: Row(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(child: Icon(iconName)),
          Text(
            todo,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
