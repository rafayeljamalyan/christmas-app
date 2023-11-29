import 'package:christmas_app/data/models/child_model.dart';
import 'package:flutter/material.dart';

class ChildListItem extends StatelessWidget {
  final Child child;
  final Function onTap;

  const ChildListItem({Key? key, required this.child, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(child.name),
      subtitle: Text('${child.country} - ${child.isNice ? 'Nice' : 'Naughty'}'),
      onTap: () {
        onTap();
      },
    );
  }
}
