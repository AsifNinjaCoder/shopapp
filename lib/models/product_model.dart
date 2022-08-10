class Product {
  final String id;
  final String name;
  final double price;
  final String imageUrl;
  final String description;
  final String category;
  final bool sell;
  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.category,
    required this.sell,
  });
  static const List<Product> products = [
    Product(
      id: "1",
      name: "Nike",
      price: 25.0,
      imageUrl:
          "https://rukminim1.flixcart.com/image/832/832/jao8uq80/shoe/3/r/q/sm323-9-sparx-white-original-imaezvxwmp6qz6tg.jpeg?q=70",
      description:
          "Asian Plasma-08 sports shoes for men | Latest Stylish Casual sport shoes for men | running shoes for boys | Lace up Lightweight navy shoes for running, walking, gym, trekking, hiking & party Running Shoes For Men",
      category: "Shoe",
      sell: false,
    ),
    Product(
        id: "2",
        name: "Brasher",
        price: 26.0,
        imageUrl:
            "https://cdn-image.travelandleisure.com/sites/default/files/styles/1600x1000/public/merrell_0.jpg?itok=wFRPiIPw",
        description:
            "Asian Plasma-08 sports shoes for men | Latest Stylish Casual sport shoes for men | running shoes for boys | Lace up Lightweight navy shoes for running, walking, gym, trekking, hiking & party Running Shoes For Men",
        category: "Shoe",
        sell: false,
            ),
   
    Product(
        id: "3",
        name: "Puma",
        price: 28.0,
        imageUrl:
            "https://n4.sdlcdn.com/imgs/d/h/i/Asian-Gray-Running-Shoes-SDL691594953-1-2127d.jpg",
        description:
            "Asian Plasma-08 sports shoes for men | Latest Stylish Casual sport shoes for men | running shoes for boys | Lace up Lightweight navy shoes for running, walking, gym, trekking, hiking & party Running Shoes For Men",
        category: "Shoe",
        sell: true,    
            ),
    Product(
        id: "4",
        name: "Nike",
        price: 25.0,
        imageUrl:
            "https://rukminim1.flixcart.com/image/832/832/jao8uq80/shoe/3/r/q/sm323-9-sparx-white-original-imaezvxwmp6qz6tg.jpeg?q=70",
        description:
            "Asian Plasma-08 sports shoes for men | Latest Stylish Casual sport shoes for men | running shoes for boys | Lace up Lightweight navy shoes for running, walking, gym, trekking, hiking & party Running Shoes For Men",
        category: "Shoe",
        sell: true,
        ),
    Product(
        id: "5",
        name: "Brasher",
        price: 30.0,
        imageUrl:
            "https://cdn-image.travelandleisure.com/sites/default/files/styles/1600x1000/public/merrell_0.jpg?itok=wFRPiIPw",
        description:
            "Asian Plasma-08 sports shoes for men | Latest Stylish Casual sport shoes for men | running shoes for boys | Lace up Lightweight navy shoes for running, walking, gym, trekking, hiking & party Running Shoes For Men",
         category: "Shoe",
        sell: true,    
            ),
    Product(
        id: "6",
        name: "Puma",
        price: 31.0,
        imageUrl:
            "https://n4.sdlcdn.com/imgs/d/h/i/Asian-Gray-Running-Shoes-SDL691594953-1-2127d.jpg",
        description:
            "Asian Plasma-08 sports shoes for men | Latest Stylish Casual sport shoes for men | running shoes for boys | Lace up Lightweight navy shoes for running, walking, gym, trekking, hiking & party Running Shoes For Men",
         category: "Shoe",
        sell: true,
            ),
    Product(
        id: "7",
        name: "Nike",
        price: 32.0,
        imageUrl:
            "https://rukminim1.flixcart.com/image/832/832/jao8uq80/shoe/3/r/q/sm323-9-sparx-white-original-imaezvxwmp6qz6tg.jpeg?q=70",
        description:
            "Asian Plasma-08 sports shoes for men | Latest Stylish Casual sport shoes for men | running shoes for boys | Lace up Lightweight navy shoes for running, walking, gym, trekking, hiking & party Running Shoes For Men",
             category: "Shoe",
        sell: false,
        ),
    Product(
        id: "8",
        name: "Brasher",
        price: 33.0,
        imageUrl:
            "https://cdn-image.travelandleisure.com/sites/default/files/styles/1600x1000/public/merrell_0.jpg?itok=wFRPiIPw",
        description:
            "Asian Plasma-08 sports shoes for men | Latest Stylish Casual sport shoes for men | running shoes for boys | Lace up Lightweight navy shoes for running, walking, gym, trekking, hiking & party Running Shoes For Men",
             category: "Shoe",
        sell: false,
        ),
    Product(
        id: "9",
        name: "Puma",
        price: 34.0,
        imageUrl:
            "https://n4.sdlcdn.com/imgs/d/h/i/Asian-Gray-Running-Shoes-SDL691594953-1-2127d.jpg",
        description:
            "Asian Plasma-08 sports shoes for men | Latest Stylish Casual sport shoes for men | running shoes for boys | Lace up Lightweight navy shoes for running, walking, gym, trekking, hiking & party Running Shoes For Men",
             category: "Shoe",
        sell: false,
        ),
    Product(
        id: "10",
        name: "Realme Tv",
        price: 21999.99,
        imageUrl:
            "https://i.postimg.cc/m2ThjvKq/download.jpg",
        description:
            "Vast selection of TV's including LCD, Ultra HD, 4K. Great deals and discounts. Buy now. Easy & Fast Delivery. Top Brands. No Cost EMI Available. Low Prices. Best Deals. Huge Selection. Great Offers.",
             category: "Televisions",
        sell: false,
        ),
    Product(
        id: "11",
        name: "Xiaomi Tv",
        price: 24999.0,
        imageUrl:
            "https://i.postimg.cc/0ybkHPnt/download-1.jpg",
        description:
            "Vast selection of TV's including LCD, Ultra HD, 4K. Great deals and discounts. Buy now. Easy & Fast Delivery. Top Brands. No Cost EMI Available. Low Prices. Best Deals. Huge Selection. Great Offers.",
             category: "Televisions",
        sell: false,
        ),
    Product(
        id: "12",
        name: "Kaju",
        price: 34.0,
        imageUrl:
            "https://i.postimg.cc/qMZ0KWr2/download-2.jpg",
        description:
            "Buy premium quality Almonds (Badam) online at best price in India. Wide range of Almonds is available online at Nutraj.com. Check Price and Buy Now.",
             category: "Dry Fruits",
        sell: false,
        ),
    Product(
        id: "13",
        name: "Almond",
        price: 34.0,
        imageUrl:
            "https://i.postimg.cc/g2Z9ZJNP/download-3.jpg",
        description:
            "Buy premium quality Almonds (Badam) online at best price in India. Wide range of Almonds is available online at Nutraj.com. Check Price and Buy Now.",
             category: "Dry Fruits",
        sell: false,
        ),    

  ];
}
