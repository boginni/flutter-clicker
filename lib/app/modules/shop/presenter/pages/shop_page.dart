import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clicker/app/modules/shop/presenter/controller/shop_controller.dart';
import 'package:flutter_clicker/app/modules/shop/presenter/pages/widgets/shop_list_tile.dart';

class StorePage extends StatefulWidget {
  const StorePage({
    super.key,
    required this.storeController,
  });

  final ShopController storeController;

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  late final future = widget.storeController.getStoreItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: future,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.hasError) {
              return Center(
                child: Text(
                  snapshot.error.toString(),
                ),
              );
            }

            final data = snapshot.data ?? [];

            return ListView.separated(
              itemCount: data.length,
              separatorBuilder: (context, index) => const Divider(),
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) {
                final item = data[index];
                return ShopItemTile(
                  item: item,
                  onTap: () {
                    final result = widget.storeController.buyItem(item);

                    if (result) {
                      return;
                    }

                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Error'),
                          content: const Text('You don\'t have enough clicks'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                );
              },
            );
          }),
    );
  }
}
