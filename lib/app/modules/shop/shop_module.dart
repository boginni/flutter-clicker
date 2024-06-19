import 'package:flutter_clicker/app/modules/shop/presenter/controller/shop_controller.dart';

import '../core/core_module.dart';
import 'domain/shop_repository.dart';

class ShopModule {
  static final _instance = ShopModule._();
  late final coreModule = CoreModule();

  factory ShopModule() {
    return _instance;
  }

  ShopModule._();

  late final storeRepository = const ShopRepository();

  ShopController get storeController => ShopController(
        shopRepository: storeRepository,
        globalValueStore: coreModule.globalValueStore,
      );
}
