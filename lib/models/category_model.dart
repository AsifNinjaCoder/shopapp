import 'package:shopapp/models/more_category.dart';

class Category {
  final String name;
  final String imageUrl;
  final List<MoreCategory> categoryproduct;
  const Category(
      {required this.name,
      required this.imageUrl,
      required this.categoryproduct});

  static const List<Category> category = [
    Category(
      name: 'Electronics',
      imageUrl: 'https://i.postimg.cc/DyF1TTh7/download.jpg',
      categoryproduct: [
        MoreCategory(name: 'Headphones', imageUrl: 'https://i.postimg.cc/8C3YCbBB/download.jpg'),
        MoreCategory(name: 'Laptop', imageUrl: 'https://i.postimg.cc/sxC0YDLM/download-1.jpg'),
        MoreCategory(name: 'Tablets', imageUrl: 'https://i.postimg.cc/g06Dgb88/download-2.jpg'),
        MoreCategory(name: 'Powerbanks', imageUrl: 'https://i.postimg.cc/YqqzJWQp/download-3.jpg'),
        MoreCategory(name: 'Televisions', imageUrl: 'https://i.postimg.cc/pXTK0ttr/download-4.jpg'),
      ],
    ),
    Category(
      name: 'Grocery',
      imageUrl: 'https://i.postimg.cc/ZKqmMwRV/download-1.jpg',
      categoryproduct: [
        MoreCategory(name: 'Vegetables', imageUrl: 'https://i.postimg.cc/hG9mJDVy/download-5.jpg'),
        MoreCategory(name: 'Fruits', imageUrl: 'https://i.postimg.cc/c4r8RMQ8/download-6.jpg'),
        MoreCategory(name: 'Atta & Rice', imageUrl: 'https://i.postimg.cc/tJfJSwhn/download-7.jpg'),
        MoreCategory(name: 'Dry Fruits', imageUrl: 'https://i.postimg.cc/65kTdsWD/download-8.jpg'),
        MoreCategory(name: 'Chicken', imageUrl: 'https://i.postimg.cc/qB9CG6Qb/download-9.jpg'),
      ],
    ),
    Category(name: 'Furniture', imageUrl: 'https://i.postimg.cc/BvfHpLgc/download-2.jpg', categoryproduct: [
      MoreCategory(name: 'Beds', imageUrl: 'https://i.postimg.cc/MZs9Z56c/download-1.png'),
      MoreCategory(name: 'Sofas', imageUrl: 'https://i.postimg.cc/MZs9Z56c/download-1.png'),
      MoreCategory(name: 'Office table', imageUrl: 'https://i.postimg.cc/MZs9Z56c/download-1.png'),
      MoreCategory(name: 'Office chairs', imageUrl: 'https://i.postimg.cc/MZs9Z56c/download-1.png'),
      MoreCategory(name: 'Tv units', imageUrl: 'https://i.postimg.cc/MZs9Z56c/download-1.png'),
    ]),
    Category(name: 'Personal Care', imageUrl: 'https://i.postimg.cc/1z06jm7x/download-3.jpg', categoryproduct: [
      MoreCategory(name: 'Skin Care', imageUrl: 'https://i.postimg.cc/MZs9Z56c/download-1.png'),
      MoreCategory(name: 'Hair Care', imageUrl: 'https://i.postimg.cc/MZs9Z56c/download-1.png'),
      MoreCategory(name: "Men's Grooming", imageUrl: 'https://i.postimg.cc/MZs9Z56c/download-1.png'),
      MoreCategory(name: 'Office chairs', imageUrl: 'https://i.postimg.cc/MZs9Z56c/download-1.png'),
      MoreCategory(name: 'Make-up', imageUrl: 'https://i.postimg.cc/MZs9Z56c/download-1.png'),
    ]),
    Category(name: 'Sports', imageUrl: 'https://i.postimg.cc/wx156p7N/download-4.jpg', categoryproduct: [
      MoreCategory(name: 'Shoe', imageUrl: 'https://n4.sdlcdn.com/imgs/d/h/i/Asian-Gray-Running-Shoes-SDL691594953-1-2127d.jpg'),
      MoreCategory(name: 'Sportswear', imageUrl: 'https://i.postimg.cc/MZs9Z56c/download-1.png'),
      MoreCategory(name: "SportsGear", imageUrl: 'https://i.postimg.cc/MZs9Z56c/download-1.png'),
      MoreCategory(name: 'Fitness Eqipment', imageUrl: 'https://i.postimg.cc/MZs9Z56c/download-1.png'),
    ]),
  ];
}
