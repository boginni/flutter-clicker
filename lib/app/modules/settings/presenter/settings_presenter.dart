import 'package:flutter/material.dart';
import 'package:flutter_clicker/app/modules/settings/presenter/pages/settings_page.dart';

import '../../core/core_module.dart';

class SettingsPresenter extends StatefulWidget {
  const SettingsPresenter({super.key});

  @override
  State<SettingsPresenter> createState() => _SettingsPresenterState();
}

class _SettingsPresenterState extends State<SettingsPresenter> {

  late final coreModule = CoreModule();

  @override
  Widget build(BuildContext context) {
    return SettingsPage(
      globalValueStore: coreModule.globalValueStore,
    );
  }
}
