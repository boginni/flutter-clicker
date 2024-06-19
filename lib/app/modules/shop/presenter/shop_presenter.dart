import 'package:flutter/material.dart';
import 'package:flutter_clicker/app/modules/shop/presenter/pages/shop_page.dart';
import '../shop_module.dart';

class ShopPresenter extends StatefulWidget {
  const ShopPresenter({super.key});

  @override
  State<ShopPresenter> createState() => _ShopPresenterState();
}

class _ShopPresenterState extends State<ShopPresenter> {
  late final shopModule = ShopModule();

  @override
  Widget build(BuildContext context) {
    return StorePage(
      storeController: shopModule.storeController,
    );
  }
}
