import 'package:flutter/material.dart';
import 'package:shopping/components/category_title.dart';
import 'package:shopping/components/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List products = [
    {
      'name': 'Soundcore Life Q35',
      'imageUrl':
          'https://dkstatics-public.digikala.com/digikala-products/4157cee34274783dd6fd213d0335c758ed13070b_1624107402.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/format,webp/quality,q_90',
      'price': '\$119',
      'available': true,
    },
    {
      'name': 'Beyerdynamic Aventho Wireless Headphones',
      'imageUrl':
          'https://dkstatics-public.digikala.com/digikala-products/3990211.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/format,webp/quality,q_90',
      'price': '\$379',
      'available': false,
    },
    {
      'name': 'Dali io6',
      'imageUrl':
          'https://dkstatics-public.digikala.com/digikala-products/c0531b6925883632fa60af63bdf863377cf99ce8_1655197978.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/format,webp/quality,q_90',
      'price': '\$380',
      'available': true,
    },
    {
      'name': 'Beoplay EQ',
      'imageUrl':
          'https://storage5.torob.com/backend-api/base/images/NS/vU/NSvUew1CFCm6I7w-.png_/216x216.jpg',
      'price': '\$422',
      'available': true
    },
  ];

  List accessories = [
    {
      'name': 'Koluman AUX CABLE KA - 31 (1 meter)',
      'imageUrl':
          'https://dkstatics-public.digikala.com/digikala-products/1157e77950219a233c6e7a3e2f180de92ac766be_1667314108.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/format,webp/quality,q_90',
      'price': '\$1.5',
      'available': true
    },
    {
      'name': 'USB OTG to USB-C converter PLUS model',
      'imageUrl':
          'https://dkstatics-public.digikala.com/digikala-products/4351107.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/format,webp/quality,q_90',
      'price': '\$0.2',
      'available': true
    },
    {
      'name': 'Luxar silicone model cover suitable for Apple Airpod Pro case',
      'imageUrl':
          'https://dkstatics-public.digikala.com/digikala-products/e3efd41ac4acb748f11370bfee0ec8bbaabb095b_1658087069.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/format,webp/quality,q_90',
      'price': '\$1.6',
      'available': false
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              buildTopBar(),
              const SizedBox(
                height: 26,
              ),
              ...buildTitleAndDesc(),
              const SizedBox(
                height: 25,
              ),
              CategoryTitle(
                  title: 'Products',
                  count: 41,
                  buttonText: 'Show all',
                  onButtonTap: () {}),
              SizedBox(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (var product in products)
                      ProductCard(
                          imageUrl: product['imageUrl'],
                          price: product['price'],
                          available: product['available'],
                          productName: product['name'])
                  ],
                ),
              ),
              CategoryTitle(
                  title: 'Accessories',
                  count: 19,
                  buttonText: 'Show all',
                  onButtonTap: () {}),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (var product in accessories)
                      ProductCard(
                          imageUrl: product['imageUrl'],
                          price: product['price'],
                          available: product['available'],
                          productName: product['name'])
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTopBar() {
    return Row(
      children: [
        InkWell(
          child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade200),
              child: const Center(child: Icon(Icons.chevron_left))),
        ),
        const Spacer(),
        InkWell(
          child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300)),
              child: const Center(child: Icon(Icons.search))),
        ),
      ],
    );
  }

  buildTitleAndDesc() {
    return [
      const Text(
        'Hi-Fi Shop & Service',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
      ),
      const SizedBox(
        height: 12,
      ),
      const Text(
        'Audio shop on Rustaveli Ave 57.\n\nThis shop offers both products and services',
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
      ),
    ];
  }
}
