import 'package:christmas_app/data/models/child_model.dart';

abstract class ChildEvent {}

class AddChildEvent extends ChildEvent {
  final Child child;

  AddChildEvent(this.child);
}

class ToggleNiceNaughtyEvent extends ChildEvent {
  final String childName;

  ToggleNiceNaughtyEvent(this.childName);
}
