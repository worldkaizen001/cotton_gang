part of 'package:cotton_gang/src/pages/product_details/product_details_page.dart';

final realTouch = StateProvider<int>((ref) {
  var currentIndexState = 0;
  return currentIndexState;
});

class RealProductDetailsScreen extends ConsumerWidget {
  final RealProducts realProducts;

  final String ownerName;
  // final String productName, productDescription, productImage;
  // final String newImages;

  const RealProductDetailsScreen(
      {required this.realProducts, this.ownerName = 'Test', Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var changeAll = ref.watch(realTouch);

    final controller = PageController();
    List<Map<String, dynamic>> btnList = [
      {
        "title": "Description",
        "isClicked": false,
      },
      {
        "title": "More Details",
        "isClicked": false,
      },
      {
        "title": "reviews",
        "isClicked": false,
      }
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const TopRowSection(
                  title: 'Product details',
                ),
                Text(changeAll.toString()),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(realProducts.image),
                  )),
                ),
                SizedBox(
                  height: 50,
                ),
                // PageViewAndController(
                //   controller: controller,
                //   newImages: realProducts.image,
                //   price: realProducts.price,
                // ),
                SizedBox(
                  height: 30,
                  child: ListView.builder(
                      // key: const PageStorageKey<String>('page'),
                      scrollDirection: Axis.horizontal,
                      itemCount: btnList.length,
                      itemBuilder: (context, index) {
                        var title = btnList[index]["title"];
                        return GestureDetector(
                          onTap: () {
                            ref.read(realTouch.notifier).update((state) {
                              return state = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linearToEaseOut,
                            width: 107,
                            margin: const EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                              color: changeAll == index
                                  ? const Color(0xff39FF14)
                                  : Colors.grey,
                              borderRadius: changeAll == index
                                  ? BorderRadius.circular(6)
                                  : BorderRadius.circular(6),
                            ),
                            child: Center(
                                child: Text(
                              btnList[index]["title"],
                            )),
                          ),
                        );
                      }),
                ),
                if (changeAll == 0)
                  Description(
                    ownerName: ownerName,
                    productName: realProducts.title,
                    productDescription: realProducts.description,
                  ),
                if (changeAll == 1) const MoreDetails(),
                if (changeAll == 2) const ReviewComments(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<dynamic> realReviews = [
  {
    "name": "jane Bo",
    "image": CGangImages.logo,
    "comments":
        "I found a 2007 study on effects of hand sanitizers on blood alcohol level in adults. The 12 subjects applied 4 mL of hand sanitizer for 30 seconds per application, 20 applications over a 30 min period (total exposure time 10 min).",
  },
  {
    "name": "welter ku",
    "image": CGangImages.female,
    "comments":
        "I found a 2007 study on effects of hand sanitizers on blood alcohol level in adults. The 12 subjects applied 4 mL of hand sanitizer for 30 seconds per application, 20 applications over a 30 min period (total exposure time 10 min).",
  }
];
