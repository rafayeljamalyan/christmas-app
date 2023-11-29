import 'package:christmas_app/widgets/child_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/child_bloc.dart';
import '../bloc/child_event.dart';
import '../bloc/child_state.dart';

class ChildListScreen extends StatelessWidget {
  final ChildBloc childBloc;

  const ChildListScreen({Key? key, required this.childBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Christmas App'),
      ),
      body: BlocBuilder<ChildBloc, ChildState>(
        bloc: childBloc,
        builder: (context, state) {
          if (state is ChildListState) {
            return ListView.builder(
              itemCount: state.children.length,
              itemBuilder: (context, index) {
                var child = state.children[index];
                return ChildListItem(
                  child: child,
                  onTap: () {
                    childBloc.add(ToggleNiceNaughtyEvent(child.name));
                  },
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add_child');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
