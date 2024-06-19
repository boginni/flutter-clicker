import 'package:flutter/material.dart';

import '../../../domain/shop_item_entity.dart';

class ShopItemTile extends StatelessWidget {
  final ShopItemModel item;

  const ShopItemTile({
    super.key,
    required this.item,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: const Icon(Icons.person),
      title: Text(item.name),
      subtitle: Text(item.description),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.flutter_dash),
          Text('\$${item.price}'),
        ],
      ),
    );
  }
}
