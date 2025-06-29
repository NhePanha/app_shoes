import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_com_app/model/list_product.dart';
import 'package:e_com_app/view/product_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenProduct extends StatefulWidget {
  const HomeScreenProduct({super.key});

  @override
  State<HomeScreenProduct> createState() => _HomeScreenProductState();
}

class _HomeScreenProductState extends State<HomeScreenProduct> {
  final List<String> imgList = [
    'https://picsum.photos/id/237/400/200',
    'https://picsum.photos/id/238/400/200',
    'https://picsum.photos/id/239/400/200',
  ];
  final List<String> categories = [
    'All',
    'Nike',
    'Adidas',
    'Puma',
    'Reebok',
    'New Balance',
    'Asics',
    'Under Armour',
    'Converse',
    'Vans',
    'Fila',
    'Jordan',
    'Skechers',
    'Saucony',
    'Hoka',
    'Brooks',
    'Mizuno',
    'On Running',
    'Balenciaga',
    'Yeezy',
  ];
  bool isSeleted = false;
  int selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 70, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.sort, size: 35, color: Colors.black),
                Icon(Icons.search, size: 35, color: Colors.black),
              ],
            ),
          ),
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                height: 180.0,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                autoPlayInterval: Duration(seconds: 3),
              ),
              items:
                  imgList
                      .map(
                        (item) => Container(
                          margin: EdgeInsets.all(5.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              item,
                              fit: BoxFit.cover,
                              width: 1000.0,
                            ),
                          ),
                        ),
                      )
                      .toList(),
            ),
          ),
          // Track selected index for category
          Expanded(
            flex: 1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final catego = categories[index];
                return InkWell(
                  onTap: () {
                    setState(() {
                      // Set selected index
                      selectedCategoryIndex = index;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color:
                            selectedCategoryIndex == index
                                ? Colors.red
                                : Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          catego,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color:
                                selectedCategoryIndex == index
                                    ? Colors.white
                                    : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          /// grid product
          Expanded(
            flex: 11,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 10.0,
              ),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: productlist.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number of items per row
                  crossAxisSpacing: 10, // horizontal space between tiles
                  mainAxisSpacing: 10, // vertical space between tiles
                  mainAxisExtent: 250,
                ),
                itemBuilder: (context, index) {
                  final product = productlist[index];
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailScreen(
                        product: product,
                      )));
                    },
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.80),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withValues(alpha: 0.4),
                                offset: Offset(0, 2),
                                blurRadius: 0.5,
                                spreadRadius: 0.2,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 160,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(product.image),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      product.name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.red.withOpacity(0.8),
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      product.descriptions,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.withOpacity(0.8),
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      "\$${product.price.toStringAsFixed(2)}",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "\$${product.discount.toStringAsFixed(2)}",
                                      style: TextStyle(
                                        color: Colors.redAccent,
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor:
                                            CupertinoColors.destructiveRed,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 10,
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.grey.withValues(alpha: 0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.shopify,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
