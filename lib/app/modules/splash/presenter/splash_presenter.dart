import 'package:flutter/material.dart';

import '../../shell/presenter/shell_presenter.dart';

class SplashPresenter extends StatefulWidget {
  const SplashPresenter({super.key});

  @override
  State<SplashPresenter> createState() => _SplashPresenterState();
}

class _SplashPresenterState extends State<SplashPresenter> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      init();
    });
  }

  void init() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const ShellPresenter(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(),
      ),
    );
  }
}
