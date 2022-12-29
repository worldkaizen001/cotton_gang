part of 'package:cotton_gang/src/pages/homepage/homepage_page.dart';


class ProductCard extends StatefulWidget {
  final Function iconTapped, menuIconTapped;
  final bool isLiked;
  final String productImage, vendorName, productName, productDescription;
  final double price;

  const ProductCard(
      {required this.productDescription,
        required this.menuIconTapped,
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
                          child:  InkWell(
                            onTap: (){
                             widget.menuIconTapped();
                            },
                            child: const Center(
                              child: Icon(Icons.add,size: 23,color: Colors.white,),

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