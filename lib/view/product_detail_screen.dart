import 'package:e_com_app/model/list_product.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  final ListProduct product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool click = false;
  final List<String> colors = ['red', 'yellow', 'pink', 'grey'];
  final List<int> sizes = [37, 38, 39, 40, 41, 42, 43];
  int selectedcolors = 0;
  int selectedsize = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                child: Image.network(widget.product.image, fit: BoxFit.cover),
              ),
            ],
          ),
          Positioned(
            top: 380,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 380,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 1),
                    color: Colors.grey,
                    blurRadius: 10,
                    spreadRadius: 0.2,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "rating : ${widget.product.rate}",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                        Icon(Icons.star, color: Colors.amber, size: 20),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child:
                              click
                                  ? Text(
                                    widget.product.descriptions,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  )
                                  : Text("Descriptions more"),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              click = !click;
                            });
                          },
                          icon:
                              click
                                  ? Icon(
                                    Icons.keyboard_arrow_up_rounded,
                                    size: 40,
                                  )
                                  : Icon(Icons.arrow_forward_ios),
                        ),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey),
                    Text("Select Colors : "),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 35,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: colors.length,
                        separatorBuilder:
                            (context, index) => SizedBox(width: 10),
                        itemBuilder: (context, index) {
                          final col = colors[index];
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedcolors = index;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color:
                                    selectedcolors == index
                                        ? const Color(0xA756A2FF)
                                        : Colors.white,
                                border: Border.all(
                                  color:
                                      selectedcolors == index
                                          ? Colors.white
                                          : const Color(0xFF050505),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  col,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Select size : "),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 35,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: sizes.length,
                        separatorBuilder:
                            (context, index) => SizedBox(width: 10),
                        itemBuilder: (context, index) {
                          final siz = sizes[index];
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedsize = index;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color:
                                    selectedsize == index
                                        ? const Color(0xA756A2FF)
                                        : Colors.white,
                                border: Border.all(
                                  color:
                                      selectedsize == index
                                          ? Colors.grey
                                          : const Color(0xFFFF5353),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "${siz}",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {
                  Navigator.pop(context); /// next back
                }, icon: Icon(Icons.arrow_back_ios,size: 30,color: Colors.grey,)),
                Container(
                  width: 45,height: 45,
                  decoration: BoxDecoration(color: Colors.grey.withValues(alpha: 0.4),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Icon(Icons.favorite_outline,size: 25,color: Colors.grey,)
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
