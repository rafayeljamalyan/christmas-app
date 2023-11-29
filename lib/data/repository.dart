import 'models/child_model.dart';

class Repository {
  List<Child> _children = [];

  List<Child> getChildren() {
    return List.from(_children);
  }

  void addChild(Child child) {
    _children.add(child);
  }

  void toggleNiceNaughtyStatus(String childName) {
    final child = _children.firstWhere((c) => c.name == childName);
    child.isNice = !child.isNice;
  }
}
