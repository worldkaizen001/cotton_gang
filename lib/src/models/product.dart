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

List<Product> products = [
  Product(
      productImages: [CGangImages.savedEmptyState, CGangImages.unisex,CGangImages.searchEmptyState],
      productDescription: 'bad ass',
      id: 1,
      productName: 'balance',
      price: 250,
      vendorName: 'rume volt',
      isLiked: false),
  Product(
      productImages: [CGangImages.logo, CGangImages.boarding1,CGangImages.female],
      productDescription: 'clean shirt',
      id: 2,
      productName: 'puma',
      price: 300,
      vendorName: 'lelly bobs',
      isLiked: false),
  Product(
      productImages: [CGangImages.lvBag, CGangImages.unisex,CGangImages.female],
      productDescription: 'bad ass',
      id: 1,
      productName: 'balance',
      price: 250,
      vendorName: 'rume volt',
      isLiked: false),
];

