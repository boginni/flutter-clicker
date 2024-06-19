import 'package:flutter/material.dart';
import 'package:flutter_clicker/app/modules/shell/presenter/page/shell_page.dart';

import '../../core/core_module.dart';

class ShellPresenter extends StatefulWidget {
  const ShellPresenter({super.key});

  @override
  State<ShellPresenter> createState() => _ShellPresenterState();
}

class _ShellPresenterState extends State<ShellPresenter> {
  late final coreModule = CoreModule();

  @override
  Widget build(BuildContext context) {
    return ShellPage(
      globalValueStore: coreModule.globalValueStore,
    );
  }
}
