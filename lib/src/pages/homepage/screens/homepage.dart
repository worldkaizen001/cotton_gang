part of 'package:cotton_gang/src/pages/homepage/homepage_page.dart';

final changeState = StateProvider<bool>((ref) => false);
class HomepageScreen extends ConsumerWidget {
  const HomepageScreen({Key? key}) : super(key: key);


  // List<Product> favorites = [];
  // bool toggle = false;



  @override
  Widget build(BuildContext context,WidgetRef ref) {
   var  change = ref.watch(changeState);
   var savedItem = ref.watch(savedItemsProvider);
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
                     var toggle  =   ref.read(changeState.notifier).update((state) => !state);

                        // var toggle = ref.read(changeState.notifier).state;

                       obj.isLiked = toggle;


                       obj.isLiked?  savedItem.addToSavedItems(obj):savedItem.removeSavedItems(obj);

                        // setState(() {
                        //   obj.isLiked = !obj.isLiked;
                        //   toggle = !toggle;
                        //
                        //   toggle ? favorites.add(obj) : favorites.remove(obj);
                        // });
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
