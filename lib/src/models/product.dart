import 'package:cotton_gang/src/helpers/images.dart';

class Product {
  final String vendorName, productName, productDescription;
  final double price;
  final int id;
   bool isLiked;
   List<String> productImages;

  Product(
      {
        required this.productImages,
        required this.productDescription,
       required this.id,
        required this.isLiked,
      required this.productName,
      required this.price,
      required this.vendorName});
}

// List<Product> products = [
//   Product(productDescription: 'bad ass', id: 1, productName: 'balance', price: 250, productImage: CGangImages.female, vendorName: 'rume volt', isLiked: false),
//   Product(productDescription: 'clean shirt', id: 2, productName: 'puma', price: 300, productImage: CGangImages.product1, vendorName: 'lelly bobs', isLiked: false),
// ];
