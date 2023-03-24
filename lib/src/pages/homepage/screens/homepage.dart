part of 'package:cotton_gang/src/pages/homepage/homepage_page.dart';

final productsProvider = FutureProvider<List<RealProducts>>((ref) {
  var apiService = ref.watch(apiServicesProvider);
  return apiService.getRealProducts();
});

final apiServicesProvider = Provider<ApiServices>((ref) => ApiServices());

class ApiServices {
  Future<List<RealProducts>> getRealProducts() async {
    String endPoint = 'https://fakestoreapi.com/products';
    var uri = Uri.parse(endPoint);

    var response = await http.get(uri);
    if (response.statusCode == 200) {
      print(response.body);
      var data = jsonDecode(response.body);

      return data == null ? [] : List.from(data.map(RealProducts.fromJson));
    } else {
      throw Exception();
    }
  }
}

final changeState = StateProvider<bool>((ref) => false);

class HomepageScreen extends ConsumerWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  // List<Product> favorites = [];
  // bool toggle = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool changeAm;
    var change = ref.watch(changeState);
    var savedItem = ref.watch(savedItemsProvider);
    var stateItem = ref.watch(saveItemProvider);
    var listOfProducts = ref.watch(productsProvider);
    var changeColor = ref.watch(changeIcon);
    return Scaffold(
      appBar: customAppBar(),
      endDrawer: const CustomEndDrawer(),
      backgroundColor: const Color(0xffF9F9F9),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () {
            ///i added this future provider just to test the refresh method the the provider
            return ref.refresh(productsProvider.future);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text(FirebaseAuth.instance.currentUser!.displayName!),
              const Titles(
                title: 'Home',
              ),
              listOfProducts.when(data: (data) {
                return Expanded(
                  child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        var title = data[index].title;
                        var price = data[index].price;
                        var desc = data[index].description;
                        var image = data[index].image;
                        var cert = data[index].category;
                        var rating = data[index].rating;

                        print("i am here and na $title be this");
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RealProductDetailsScreen(
                                          realProducts: data[index],
                                          ownerName: 'kay',
                                        )));
                          },
                          child: RealProductCard(
                            realProducts: data[index],
                            iconTapped: () {
                              var toggle = ref
                                  .read(changeState.notifier)
                                  .update((state) => !state);

                              // var toggle = ref.read(changeState.notifier).state;

                              var isLiked = toggle;

                              isLiked
                                  ? savedItem.addToSavedItems(data[index])
                                  : savedItem.removeSavedItems(data[index]);
                              isLiked
                                  ? ref
                                      .read(saveItemProvider.notifier)
                                      .addItem(data[index])
                                  : ref
                                      .read(saveItemProvider.notifier)
                                      .removeItem(data[index]);

                              // setState(() {
                              //   obj.isLiked = !obj.isLiked;
                              //   toggle = !toggle;

                              //   toggle ? favorites.add(obj) : favorites.remove(obj);
                              // });
                            },
                            menuIconTapped: () {},
                            isLiked: changeColor,
                          ),
                        );
                      }),
                );
              }, error: (error, _) {
                return Text(error.toString());
              }, loading: () {
                return Center(child: const CircularProgressIndicator());
              }),

              // Column(
              //   children: products.map((obj) {
              //     return GestureDetector(
              //       onTap: () {
              //         Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) => ProductDetailsScreen(
              //                       newImages: obj.productImages,
              //                       productImage: obj.productImages[0],
              //                       ownerName: obj.vendorName,
              //                       productDescription:
              //                           obj.productDescription,
              //                       price: obj.price,
              //                       productName: obj.productName,
              //                     )));
              //       },
              //       child: ProductCard(
              //         menuIconTapped: () {},
              //         iconTapped: () {
              //           var toggle = ref
              //               .read(changeState.notifier)
              //               .update((state) => !state);

              //           // var toggle = ref.read(changeState.notifier).state;

              //           obj.isLiked = toggle;

              //           obj.isLiked
              //               ? savedItem.addToSavedItems(obj)
              //               : savedItem.removeSavedItems(obj);
              //           obj.isLiked
              //               ? ref.read(saveItemProvider.notifier).addItem(obj)
              //               : ref
              //                   .read(saveItemProvider.notifier)
              //                   .removeItem(obj);

              //           // setState(() {
              //           //   obj.isLiked = !obj.isLiked;
              //           //   toggle = !toggle;
              //           //
              //           //   toggle ? favorites.add(obj) : favorites.remove(obj);
              //           // });
              //         },
              //         isLiked: obj.isLiked,
              //         price: obj.price,
              //         productImage: obj.productImages[0],
              //         vendorName: obj.vendorName,
              //         productDescription: obj.productDescription,
              //         productName: obj.productName,
              //       ),
              //     );
              //   }).toList(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
