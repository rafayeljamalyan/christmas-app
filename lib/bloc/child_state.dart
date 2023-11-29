import 'package:christmas_app/data/models/child_model.dart';

abstract class ChildState {}

class ChildListState extends ChildState {
  final List<Child> children;

  ChildListState(this.children);
}
