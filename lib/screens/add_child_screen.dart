import 'package:christmas_app/data/models/child_model.dart';
import 'package:flutter/material.dart';
import '../bloc/child_bloc.dart';
import '../bloc/child_event.dart';

class AddChildScreen extends StatelessWidget {
  final ChildBloc childBloc;

  const AddChildScreen({Key? key, required this.childBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController countryController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Child'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Child Name'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: countryController,
              decoration: InputDecoration(labelText: 'Child Country'),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Dispatch event to add a new child
                childBloc.add(AddChildEvent(
                  Child(
                    name: nameController.text,
                    country: countryController.text,
                  ),
                ));
                // Navigate back to the child list screen
                Navigator.pop(context);
              },
              child: const Text('Add Child'),
            ),
          ],
        ),
      ),
    );
  }
}
