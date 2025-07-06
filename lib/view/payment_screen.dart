import 'package:e_com_app/model/list_product.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  final int qty;
  final dynamic product;
  final String selectedColor;
  final int selectedSize;
  const PaymentScreen({
    super.key,
    required this.product,
    required this.qty,
    required this.selectedColor,
    required this.selectedSize,
  });

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool isDeleted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
          isDeleted
              ? Center(child: Text('No product selected.'))
              : Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 2),
                      color: const Color.fromARGB(59, 20, 20, 20),
                      spreadRadius: 0.7,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(widget.product.image),
                  ),
                  title: Text(widget.product.name),
                  subtitle: Text(
                    'Qty: ${widget.qty}, Color: ${widget.selectedColor}, Size: ${widget.selectedSize}',
                  ),
                  trailing: InkWell(
                    onTap: () {
                      setState(() {
                        isDeleted = true;
                      });
                    },
                    child: Icon(Icons.delete_rounded),
                  ),
                ),
              ),
    );
  }
}
