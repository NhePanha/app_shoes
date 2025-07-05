// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';

class ListProduct {
  String id;
  String name;
  String image;
  double rate;
  double price;
  String descriptions;
  double discount;
  double size;
  Color colors;
  String category; // Added category

  ListProduct({
    required this.id,
    required this.name,
    required this.image,
    required this.rate,
    required this.price,
    required this.descriptions,
    required this.discount,
    required this.size,
    required this.colors,
    required this.category, // Added category
  });
}

List<ListProduct> productlist = [
  ListProduct(
    id: '1',
    name: 'Classic Sneakers',
    image:
        'https://i.pinimg.com/736x/f7/06/0d/f7060d1110f63d2d18a3fcb4ac77a33e.jpg',
    rate: 4.5,
    price: 59.99,
    descriptions:
        'Comfortable and stylish sneakers for everyday wear.Comfortable and stylish sneakers for everyday wearComfortable and stylish sneakers for everyday wearComfortable and stylish sneakers for everyday wear',
    discount: 10.0,
    size: 42.0,
    colors: Color(0xFF2196F3),
    category: 'Sneakers',
  ),
  ListProduct(
    id: '2',
    name: 'Running Shoes',
    image:
        'https://i.pinimg.com/736x/6f/cd/fc/6fcdfc09651455d3c77a2e1285239eb9.jpg',
    rate: 4.2,
    price: 79.99,
    descriptions: 'Lightweight running shoes for maximum performance.',
    discount: 15.0,
    size: 41.0,
    colors: Color(0xFF4CAF50),
    category: 'Sports',
  ),
  ListProduct(
    id: '3',
    name: 'Leather Boots',
    image:
        'https://i.pinimg.com/736x/5c/81/23/5c812339adef78137c67a26b97548d14.jpg',
    rate: 4.8,
    price: 120.00,
    descriptions: 'Durable leather boots for all terrains.',
    discount: 20.0,
    size: 43.0,
    colors: Color(0xFF795548),
    category: 'Boots',
  ),
  ListProduct(
    id: '4',
    name: 'Canvas Shoes',
    image:
        'https://i.pinimg.com/736x/ae/4b/1c/ae4b1ce11d0f3af4321b13e89d10d2c0.jpg',
    rate: 4.0,
    price: 39.99,
    descriptions: 'Trendy canvas shoes for casual outings.',
    discount: 5.0,
    size: 40.0,
    colors: Color(0xFFFFC107),
    category: 'nike',
  ),
  ListProduct(
    id: '5',
    name: 'High Heels',
    image:
        'https://i.pinimg.com/736x/a7/7b/b3/a77bb32500ce80dabdb8c17080127243.jpg',
    rate: 4.6,
    price: 89.99,
    descriptions: 'Elegant high heels for special occasions.',
    discount: 12.0,
    size: 38.0,
    colors: Color(0xFFE91E63),
    category: 'adidas',
  ),
  ListProduct(
    id: '6',
    name: 'Flip Flops',
    image:
        'https://i.pinimg.com/736x/a2/36/04/a236040a02b89acef5708880fa380119.jpg',
    rate: 3.9,
    price: 19.99,
    descriptions: 'Comfortable flip flops for summer.',
    discount: 8.0,
    size: 41.0,
    colors: Color(0xFF00BCD4),
    category: 'adidas',
  ),
  ListProduct(
    id: '7',
    name: 'Formal Shoes',
    image:
        'https://i.pinimg.com/736x/f7/06/0d/f7060d1110f63d2d18a3fcb4ac77a33e.jpg',
    rate: 4.7,
    price: 99.99,
    descriptions: 'Perfect formal shoes for office wear.',
    discount: 18.0,
    size: 44.0,
    colors: Color(0xFF607D8B),
    category: 'Formal',
  ),
  ListProduct(
    id: '8',
    name: 'Loafers',
    image:
        'https://i.pinimg.com/736x/f7/06/0d/f7060d1110f63d2d18a3fcb4ac77a33e.jpg',
    rate: 4.3,
    price: 69.99,
    descriptions: 'Stylish loafers for all-day comfort.',
    discount: 10.0,
    size: 42.0,
    colors: Color(0xFF9C27B0),
    category: 'Loafers',
  ),
  ListProduct(
    id: '9',
    name: 'Sandals',
    image:
        'https://i.pinimg.com/736x/f7/06/0d/f7060d1110f63d2d18a3fcb4ac77a33e.jpg',
    rate: 4.1,
    price: 29.99,
    descriptions: 'Breathable sandals for hot weather.',
    discount: 7.0,
    size: 39.0,
    colors: Color(0xFFFF5722),
    category: 'nike',
  ),
  ListProduct(
    id: '10',
    name: 'Slip-On Shoes',
    image:
        'https://i.pinimg.com/736x/f7/06/0d/f7060d1110f63d2d18a3fcb4ac77a33e.jpg',
    rate: 4.4,
    price: 49.99,
    descriptions: 'Easy to wear slip-on shoes.',
    discount: 9.0,
    size: 41.0,
    colors: Color(0xFF3F51B5),
    category: 'Casual',
  ),
  ListProduct(
    id: '11',
    name: 'Sports Shoes',
    image:
        'https://i.pinimg.com/736x/f7/06/0d/f7060d1110f63d2d18a3fcb4ac77a33e.jpg',
    rate: 4.6,
    price: 85.00,
    descriptions: 'High-performance sports shoes.',
    discount: 14.0,
    size: 42.0,
    colors: Color(0xFF8BC34A),
    category: 'nike',
  ),
  ListProduct(
    id: '12',
    name: 'Ankle Boots',
    image:
        'https://i.pinimg.com/736x/f7/06/0d/f7060d1110f63d2d18a3fcb4ac77a33e.jpg',
    rate: 4.5,
    price: 110.00,
    descriptions: 'Trendy ankle boots for winter.',
    discount: 16.0,
    size: 40.0,
    colors: Color(0xFFBDB76B),
    category: 'Boots',
  ),
  ListProduct(
    id: '13',
    name: 'Moccasins',
    image:
        'https://i.pinimg.com/736x/f7/06/0d/f7060d1110f63d2d18a3fcb4ac77a33e.jpg',
    rate: 4.2,
    price: 54.99,
    descriptions: 'Soft moccasins for indoor and outdoor use.',
    discount: 11.0,
    size: 41.0,
    colors: Color(0xFFCD853F),
    category: 'Loafers',
  ),
  ListProduct(
    id: '14',
    name: 'Platform Shoes',
    image:
        'https://i.pinimg.com/736x/f7/06/0d/f7060d1110f63d2d18a3fcb4ac77a33e.jpg',
    rate: 4.3,
    price: 79.99,
    descriptions: 'Fashionable platform shoes.',
    discount: 13.0,
    size: 39.0,
    colors: Color(0xFF673AB7),
    category: 'Heels',
  ),
  ListProduct(
    id: '15',
    name: 'Ballet Flats',
    image:
        'https://i.pinimg.com/736x/f7/06/0d/f7060d1110f63d2d18a3fcb4ac77a33e.jpg',
    rate: 4.0,
    price: 34.99,
    descriptions: 'Comfortable ballet flats for daily wear.',
    discount: 6.0,
    size: 37.0,
    colors: Color(0xFFFFB6C1),
    category: 'Flats',
  ),
  ListProduct(
    id: '16',
    name: 'Chelsea Boots',
    image:
        'https://i.pinimg.com/736x/f7/06/0d/f7060d1110f63d2d18a3fcb4ac77a33e.jpg',
    rate: 4.7,
    price: 130.00,
    descriptions: 'Classic Chelsea boots for all outfits.',
    discount: 19.0,
    size: 43.0,
    colors: Color(0xFF6D4C41),
    category: 'Boots',
  ),
  ListProduct(
    id: '17',
    name: 'Espadrilles',
    image:
        'https://i.pinimg.com/736x/f7/06/0d/f7060d1110f63d2d18a3fcb4ac77a33e.jpg',
    rate: 4.1,
    price: 44.99,
    descriptions: 'Light and breathable espadrilles.',
    discount: 8.0,
    size: 40.0,
    colors: Color(0xFFFFE082),
    category: 'Casual',
  ),
  ListProduct(
    id: '18',
    name: 'Derby Shoes',
    image:
        'https://i.pinimg.com/736x/f7/06/0d/f7060d1110f63d2d18a3fcb4ac77a33e.jpg',
    rate: 4.5,
    price: 95.00,
    descriptions: 'Elegant derby shoes for formal occasions.',
    discount: 17.0,
    size: 42.0,
    colors: Color(0xFF263238),
    category: 'Formal',
  ),
  ListProduct(
    id: '19',
    name: 'Oxfords',
    image:
        'https://i.pinimg.com/736x/f7/06/0d/f7060d1110f63d2d18a3fcb4ac77a33e.jpg',
    rate: 4.6,
    price: 105.00,
    descriptions: 'Classic oxfords for business meetings.',
    discount: 15.0,
    size: 44.0,
    colors: Color(0xFF212121),
    category: 'Formal',
  ),
  ListProduct(
    id: '20',
    name: 'Hiking Boots',
    image:
        'https://i.pinimg.com/736x/f7/06/0d/f7060d1110f63d2d18a3fcb4ac77a33e.jpg',
    rate: 4.8,
    price: 140.00,
    descriptions: 'Rugged hiking boots for outdoor adventures.',
    discount: 22.0,
    size: 45.0,
    colors: Color(0xFF388E3C),
    category: 'Boots',
  ),
];
