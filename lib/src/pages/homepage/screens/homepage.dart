part of 'package:cotton_gang/src/pages/homepage/homepage_page.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  List<Product> favorites = [];
  bool toggle = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      endDrawer: const CustomEndDrawer(),
      backgroundColor: const Color(0xffF9F9F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text(FirebaseAuth.instance.currentUser!.displayName!),
               const Titles(
                title: 'Home',
              ),
              Column(
                children: products.map((obj) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetailsScreen(
                                    newImages: obj.productImages,
                                    productImage: obj.productImages[0],
                                    ownerName: obj.vendorName,
                                    productDescription: obj.productDescription,
                                    price: obj.price,
                                    productName: obj.productName,
                                  )));
                    },
                    child: ProductCard(
                      menuIconTapped: () {},
                      iconTapped: () {
                        setState(() {
                          obj.isLiked = !obj.isLiked;
                          toggle = !toggle;

                          toggle ? favorites.add(obj) : favorites.remove(obj);
                        });
                      },
                      isLiked: obj.isLiked,
                      price: obj.price,
                      productImage: obj.productImages[0],
                      vendorName: obj.vendorName,
                      productDescription: obj.productDescription,
                      productName: obj.productName,
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
