import 'package:flutter/material.dart';
import 'package:zappe/components/shop_listile.dart';
import 'package:zappe/widgets/banner_pageview.dart';

List<Shop> shopData = [
  {
    'imageUrl':
        'https://cdn.discordapp.com/attachments/1102878803887407184/1102898924135661608/pexels-yurii-hlei-1545743.jpg',
    'shopName': 'ABC Bike Rentals',
    'rating': 4.5,
    'shopDescription': 'We offer the best bikes at the lowest prices.',
    'price': 25.0,
    'discountPrice': 20.0,
    'discountPercentage': 20,
    'licensedVehicles': ['Road Bike', 'Mountain Bike', 'Electric Bike'],
    'address': '123 Main St, Anytown, USA',
    'isOpen': true,
    'openingHours': '9am - 5pm',
  },
  {
    'imageUrl':
        'https://cdn.discordapp.com/attachments/1102878803887407184/1102898924135661608/pexels-yurii-hlei-1545743.jpg',
    'shopName': 'XYZ Bike Rentals',
    'rating': 4.0,
    'shopDescription': 'The best bikes for your adventure.',
    'price': 30.0,
    'discountPrice': 0.0,
    'discountPercentage': 0,
    'licensedVehicles': ['Mountain Bike', 'Electric Bike'],
    'address': '456 Elm St, Anytown, USA',
    'isOpen': false,
    'openingHours': '10am - 4pm',
  },
  {
    'imageUrl':
        'https://cdn.discordapp.com/attachments/1102878803887407184/1102898924135661608/pexels-yurii-hlei-1545743.jpg',
    'shopName': '123 Bike Rentals',
    'rating': 3.5,
    'shopDescription': 'Rent a bike and explore the city.',
    'price': 20.0,
    'discountPrice': 16.0,
    'discountPercentage': 20,
    'licensedVehicles': ['Road Bike'],
    'address': '789 Oak St, Anytown, USA',
    'isOpen': true,
    'openingHours': '8am - 6pm',
  },
]
    .map(
      (e) => Shop(
        shopName: e['shopName'] as String,
        imageUrl: e['imageUrl'] as String,
        rating: e['rating'] as double,
        shopDescription: e['shopDescription'] as String,
        price: e['price'] as double,
        discountPrice: e['discountPrice'] as double,
        discountPercentage: e['discountPercentage'] as int,
        address: e['address'] as String,
        isOpen: e['isOpen'] as bool,
        openingHours: e['openingHours'] as String,
      ),
    )
    .toList();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final banners = List.filled(
      3,
      MBanner(
        imageUrl:
            "https://media.discordapp.net/attachments/1102878803887407184/1102878939346649129/pexels-sebastian-arie-voortman-214574_1.jpg?width=1280&height=720",
        gotoUrl:
            "https://media.discordapp.net/attachments/1102878803887407184/1102878939346649129/pexels-sebastian-arie-voortman-214574_1.jpg?width=1280&height=720",
      ),
    );
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: BannerPageView(banners: banners),
        ),
        const SliverAppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Shops',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          centerTitle: false,
          pinned: true,
          shadowColor: Colors.black,
          surfaceTintColor: Colors.transparent,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ShopListTile(shop: shopData[index]);
            },
            childCount: shopData.length,
          ),
        ),
      ],
    );
  }
}
