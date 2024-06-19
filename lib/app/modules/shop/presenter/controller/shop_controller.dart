import 'package:flutter_clicker/app/modules/core/domain/value_modifier_entity.dart';

import '../../../core/presenter/store/global_value_store.dart';
import '../../domain/shop_item_entity.dart';
import '../../domain/shop_repository.dart';

class ShopController {
  final ShopRepository shopRepository;
  final GlobalValueStore globalValueStore;

  ShopController({
    required this.shopRepository,
    required this.globalValueStore,
  });

  Future<List<ShopItemModel>> getStoreItems() async {
    await Future.delayed(const Duration(seconds: 1));
    return shopRepository.getStores();
  }

  bool buyItem(ShopItemModel item) {
    if (globalValueStore.value < item.price) {
      return false;
    }

    globalValueStore.subtractValue(item.price);
    globalValueStore.addModifier(
      ValueModifierModel(
        id: item.id,
        modifier: item.modifier,
      ),
    );

    return true;
  }
}
