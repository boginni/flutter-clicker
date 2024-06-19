import 'package:flutter_clicker/app/modules/shop/domain/shop_item_entity.dart';

class ShopRepository {
  const ShopRepository();

  Future<List<ShopItemModel>> getStores() async {
    return [
      const ShopItemModel(
        id: '1',
        name: 'Junior Developer',
        description:
            'Hire a Junior Developer to join your team. They bring fresh perspectives and a willingness to learn. Increases clicks by 1.',
        icon: 'junior_dev_icon',
        price: 50,
        modifier: 1,
      ),
      const ShopItemModel(
        id: '2',
        name: 'Mid-Level Developer',
        description:
            'Bring on a Mid-Level Developer with a few years of experience to enhance your team’s productivity. Increases clicks by 5.',
        icon: 'mid_dev_icon',
        price: 250,
        modifier: 5,
      ),
      const ShopItemModel(
        id: '3',
        name: 'Senior Developer',
        description:
            'Hire a Senior Developer to lead projects and mentor junior team members. Increases clicks by 15.',
        icon: 'senior_dev_icon',
        price: 1000,
        modifier: 15,
      ),
      const ShopItemModel(
        id: '4',
        name: 'Tech Lead',
        description:
            'Contract a Tech Lead to guide your development team and ensure best practices. Increases clicks by 30.',
        icon: 'tech_lead_icon',
        price: 5000,
        modifier: 30,
      ),
      const ShopItemModel(
        id: '5',
        name: 'Engineering Manager',
        description:
            'Hire an Engineering Manager to oversee projects and manage your development team. Increases clicks by 60.',
        icon: 'eng_manager_icon',
        price: 10000,
        modifier: 60,
      ),
      const ShopItemModel(
        id: '6',
        name: 'Director of Engineering',
        description:
            'Bring on a Director of Engineering to manage multiple teams and ensure strategic alignment. Increases clicks by 120.',
        icon: 'director_eng_icon',
        price: 25000,
        modifier: 120,
      ),
      const ShopItemModel(
        id: '7',
        name: 'VP of Engineering',
        description:
            'Hire a VP of Engineering to drive the engineering strategy and align it with company goals. Increases clicks by 250.',
        icon: 'vp_eng_icon',
        price: 50000,
        modifier: 250,
      ),
      const ShopItemModel(
        id: '8',
        name: 'CTO',
        description:
            'Appoint a CTO to lead your company’s technology vision and strategy at the highest level. Increases clicks by 500.',
        icon: 'cto_icon',
        price: 100000,
        modifier: 500,
      ),
    ];
  }
}
