import 'presenter/store/global_value_store.dart';

class CoreModule {
  static final _instance = CoreModule._();

  factory CoreModule() {
    return _instance;
  }

  CoreModule._();

  late final globalValueStore = GlobalValueStore(
    800,
  );
}
