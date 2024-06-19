import 'package:flutter/material.dart';
import 'package:flutter_clicker/app/modules/clicker/presenter/pages/clicker_page.dart';

import '../../core/core_module.dart';

class ClickerPresenter extends StatefulWidget {
  const ClickerPresenter({super.key});

  @override
  State<ClickerPresenter> createState() => _ClickerPresenterState();
}

class _ClickerPresenterState extends State<ClickerPresenter> {
  late final coreModule = CoreModule();

  @override
  Widget build(BuildContext context) {
    return ClickerPage(
      globalValueStore: coreModule.globalValueStore,
    );
  }
}
