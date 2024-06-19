import 'package:flutter/material.dart';
import 'package:flutter_clicker/app/modules/core/presenter/store/global_value_store.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
    required this.globalValueStore,
  });

  final GlobalValueStore globalValueStore;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text(
            'Settings',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        ListTile(
          title: const Text('Reset Progress'),
          leading: const Icon(Icons.restore),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Reset Progress'),
                  content: const Text(
                    'Are you sure you want to reset your progress?',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        globalValueStore.reset();
                        Navigator.of(context).pop();
                      },
                      child: const Text('Reset'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
