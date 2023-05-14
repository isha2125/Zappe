import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Shop {
  final String shopName;
  final String imageUrl;
  final double rating;
  final String shopDescription;
  final double price;
  final double discountPrice;
  final int discountPercentage;
  final String address;
  final bool isOpen;
  final String openingHours;

  Shop({
    required this.shopName,
    required this.imageUrl,
    required this.rating,
    required this.shopDescription,
    required this.price,
    required this.discountPrice,
    required this.discountPercentage,
    required this.address,
    required this.isOpen,
    required this.openingHours,
  });
}

class ShopListTile extends StatelessWidget {
  final Shop shop;

  const ShopListTile({Key? key, required this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width / 3,
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(shop.imageUrl),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              shop.shopName,
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 16,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  '${shop.rating}',
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              shop.isOpen ? "Open Now" : "Closed",
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              Icons.circle,
                              color: shop.isOpen ? Colors.green : Colors.red,
                              size: 15,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              shop.openingHours,
                              style: const TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        // const SizedBox(height: 4),
                        // Text(
                        //   shop.shopDescription,
                        //   style: const TextStyle(
                        //     fontSize: 13,
                        //     fontWeight: FontWeight.w300,
                        //   ),
                        // ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              shop.discountPrice > 0
                                  ? "Rs ${shop.discountPrice}"
                                  : "Rs ${shop.price}",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 8),
                            if (shop.discountPrice > 0)
                              Text(
                                "Rs. ${shop.price}",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          shop.address,
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            SizedBox(
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.black87,
                                    size: 20,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "2.5 km",
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                CupertinoIcons.location_fill,
                                color: Colors.green.shade900,
                                size: 28,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                CupertinoIcons.phone_fill,
                                color: Colors.black87,
                                size: 28,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                CupertinoIcons.bookmark,
                                color: Colors.blue.shade900,
                                size: 28,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
