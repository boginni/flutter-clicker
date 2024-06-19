import 'package:flutter/material.dart';
import 'package:flutter_clicker/app/modules/core/presenter/extensions/context_extensions.dart';
import 'package:flutter_clicker/app/modules/core/presenter/store/global_value_store.dart';

class ClickerPage extends StatefulWidget {
  const ClickerPage({
    super.key,
    required this.globalValueStore,
  });

  final GlobalValueStore globalValueStore;

  @override
  State<ClickerPage> createState() => _ClickerPageState();
}

class _ClickerPageState extends State<ClickerPage> {
  late bool showHint = widget.globalValueStore.value == 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (showHint)
            Positioned(
              bottom: 16,
              right: 0,
              left: 0,
              child: Text(
                'Click in the Flutter logo',
                style: context.textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ),
          Center(
            child: Material(
              color: Colors.transparent,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {
                  widget.globalValueStore.increment();

                  if (showHint) {
                    setState(() {
                      showHint = false;
                    });
                  }
                },
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: FlutterLogo(
                    size: 128,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
