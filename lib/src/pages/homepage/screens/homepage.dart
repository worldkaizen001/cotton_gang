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
                                newImages:obj.productImages,
                                productImage: obj.productImages[0],
                                ownerName: obj.vendorName,
                                    productDescription: obj.productDescription,
                                    price: obj.price,
                                    productName: obj.productName,
                                  )));
                    },
                    child: ProductCard(
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

class ProductCard extends StatefulWidget {
  final Function iconTapped;
  final bool isLiked;
  final String productImage, vendorName, productName, productDescription;
  final double price;

  const ProductCard(
      {required this.productDescription,
      required this.isLiked,
      required this.productName,
      required this.iconTapped,
      required this.productImage,
      required this.price,
      required this.vendorName,
      Key? key})
      : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
          child: Stack(
            children: [
              Container(
                height: 216,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage(
                          widget.productImage,
                        ),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                right: 20,
                top: 20,
                child: Center(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 10.0,
                        sigmaY: 10.0,
                      ),
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: Card(
                          color: Colors.black.withOpacity(0.45),
                          child: const Center(
                            child: Icon(
                              Iconsax.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 13,
                bottom: 16,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 40.0,
                        sigmaY: 40.0,
                      ),
                      child: Container(
                        color: Colors.black.withOpacity(0.45),
                        height: 30,
                        width: 90,
                        child: Center(
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                style: GoogleFonts.prompt(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: const Color(0xfff5f5f5),
                                ),
                                text: '\$'),
                            TextSpan(
                                style: GoogleFonts.prompt(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: const Color(0xfff5f5f5),
                                ),
                                text: widget.price.toString()),
                          ])),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  right: 13,
                  bottom: 16,
                  child: IconButton(
                    onPressed: () {
                      widget.iconTapped();
                    },
                    icon: widget.isLiked
                        ? const Icon(Iconsax.menu)
                        : const Icon(Iconsax.heart),
                    color: const Color(0xff39FF14),
                  )),
              Positioned(
                left: 20,
                top: 20,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 40.0,
                        sigmaY: 40.0,
                      ),
                      child: Container(
                        color: Colors.black.withOpacity(0.45),
                        height: 38,
                        width: 100,
                        child: Center(
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 15,
                                backgroundImage: AssetImage(CGangImages.female),
                              ),
                              CustomSizedBox.horizontalSpace(2),
                              Text(
                                widget.vendorName,
                                style: GoogleFonts.prompt(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xfff9f9f9),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        TitleAndDescription(
          productTitle: widget.productName,
          productDescription: widget.productDescription,
        )
      ],
    );
  }
}

class Titles extends StatelessWidget {
  final String title;

  const Titles({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Text(
        title,
        style: GoogleFonts.prompt(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: const Color(0xff555555),
        ),
      ),
    );
  }
}

class TitleAndDescription extends StatelessWidget {
  final String productTitle, productDescription;

  const TitleAndDescription(
      {required this.productTitle, required this.productDescription, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productTitle,
            style: GoogleFonts.prompt(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: const Color(0xff181818),
            ),
          ),
          CustomSizedBox.verticalSpace(10),
          Text(
            productDescription,
            style: GoogleFonts.prompt(
              fontSize: 11,
              fontWeight: FontWeight.w300,
              color: const Color(0xff181818),
            ),
          )
        ],
      ),
    );
  }
}

class ImageAndTitle extends StatelessWidget {
  final String title;
  final Function iconCallback;

  const ImageAndTitle(
      {required this.iconCallback, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                CGangImages.logo,
                height: 42,
                width: 42,
              ),
              IconButton(
                  onPressed: () {
                    iconCallback();
                  },
                  icon: const Icon(
                    Iconsax.menu,
                    color: Color(0xff181818),
                    size: 28,
                  ))
            ],
          ),
          CustomSizedBox.verticalSpace(20),
          Text(
            title,
            style: GoogleFonts.prompt(
              fontSize: 27,
              fontWeight: FontWeight.w500,
              color: const Color(0xff555555),
            ),
          ),
        ],
      ),
    );
  }
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

AppBar customAppBar() {
  return AppBar(
    elevation: 0.3,
    automaticallyImplyLeading: false,
    backgroundColor: const Color(0xffF9F9F9),
    toolbarHeight: 80,
    leadingWidth: 60,
    leading: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Image.asset(
        CGangImages.logo,
      ),
    ),
    actions: [
      Builder(
        builder: (context) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: IconButton(
            icon: const Icon(
              Iconsax.menu,
              size: 25,
              color: Colors.black,
            ),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
        ),
      ),
    ],
  );
}
