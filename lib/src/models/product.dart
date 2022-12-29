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
      productImages: [CGangImages.female, CGangImages.unisex,CGangImages.searchEmptyState],
      productDescription: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
      id: 1,
      productName: 'Balenciaga',
      price: 250,
vendorName: 'Amin Sarr',      isLiked: false),
  Product(
      productImages: [CGangImages.lvBag, CGangImages.boarding1,CGangImages.female],
      productDescription: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
      id: 2,
      productName: 'Louis Vuitton',
      price: 300,
      vendorName: 'lelly bobs',
      isLiked: false),
  Product(
      productImages: [CGangImages.lvBag, CGangImages.unisex,CGangImages.female],
      productDescription: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
      id: 1,
      productName: 'balance Boy',
      price: 250,
      vendorName: 'rume volt',
      isLiked: false),
];

