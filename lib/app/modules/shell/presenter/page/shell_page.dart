import 'package:flutter/material.dart';
import 'package:flutter_clicker/app/modules/core/presenter/extensions/context_extensions.dart';
import 'package:flutter_clicker/app/modules/core/presenter/store/global_value_store.dart';

import '../../../clicker/presenter/clicker_presenter.dart';
import '../../../settings/presenter/settings_presenter.dart';
import '../../../shop/presenter/shop_presenter.dart';

class ShellPage extends StatefulWidget {
  const ShellPage({
    super.key,
    required this.globalValueStore,
  });

  final GlobalValueStore globalValueStore;

  @override
  State<ShellPage> createState() => _ShellPageState();
}

class _ShellPageState extends State<ShellPage> {
  int _selectedIndex = 1;

  final pages = [
    const SettingsPresenter(),
    const ClickerPresenter(),
    const ShopPresenter(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Clicker'),
        actions: [
          Material(
            color: context.colorScheme.surfaceVariant,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  const Icon(
                    Icons.flutter_dash,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ValueListenableBuilder(
                    valueListenable: widget.globalValueStore,
                    builder: (context, value, child) {
                      return Text(
                        value.toString(),
                        style: context.textTheme.labelSmall,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Shop',
          ),
        ],
      ),
    );
  }
}
