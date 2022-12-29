part of 'package:cotton_gang/src/pages/product_details/product_details_page.dart';

class ProductDetailsScreen extends StatefulWidget {
  final double price;
  final String ownerName;
  final String productName, productDescription, productImage;
  final List<String> newImages;

  const ProductDetailsScreen(
      {required this.newImages,
      required this.productImage,
      required this.price,
      required this.ownerName,
      required this.productDescription,
      required this.productName,
      Key? key})
      : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  dynamic currentState;
  dynamic current;

  final controller = PageController();
  List<Map<String, dynamic>> btnList = [
    {"title": "Description", "isClicked": false},
    {"title": "More Details", "isClicked": false},
    {"title": "reviews", "isClicked": false}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const TopRowSection(),
               const  SizedBox(
                  height: 20,
                ),
                PageViewAndController(
                  controller: controller,
                  newImages: widget.newImages,
                  price: widget.price,
                ),
                SizedBox(
                  height: 30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: btnList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              currentState = index;
                              print(currentState);
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linearToEaseOut,
                            width: 107,
                            margin: const EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                              color: currentState == index
                                  ? const Color(0xff39FF14)
                                  : Colors.grey,
                              borderRadius: currentState == index
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
                if (currentState == 0)
                  Description(
                    ownerName: widget.ownerName,
                    productName: widget.productName,
                    productDescription: widget.productDescription,
                  ),
                if (currentState == 1) const MoreDetails(),
                if (currentState == 2) const ReviewComments(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<dynamic> reviews = [
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
