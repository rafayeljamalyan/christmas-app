import 'package:bloc/bloc.dart';
import 'child_event.dart';
import 'child_state.dart';
import '../data/repository.dart'; // Import the repository

class ChildBloc extends Bloc<ChildEvent, ChildState> {
  final Repository _repository; // Create an instance of the repository

  ChildBloc(this._repository) : super(ChildListState([])) {
    on<AddChildEvent>((event, emit) {
      _repository.addChild(event.child);
      emit(ChildListState(List.from(_repository.getChildren())));
    });

    on<ToggleNiceNaughtyEvent>((event, emit) {
      _repository.toggleNiceNaughtyStatus(event.childName);
      emit(ChildListState(List.from(_repository.getChildren())));
    });
  }
}
