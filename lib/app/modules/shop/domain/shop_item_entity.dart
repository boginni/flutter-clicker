class ShopItemModel {
  final String id;
  final String name;
  final String description;
  final String icon;
  final int price;
  final double modifier;

  const ShopItemModel({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.price,
    required this.modifier,
  });
}
