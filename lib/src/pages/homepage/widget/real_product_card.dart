part of 'package:cotton_gang/src/pages/homepage/homepage_page.dart';

final changeIcon = StateProvider<bool>((ref) => true);

class RealProductCard extends ConsumerWidget {
  final RealProducts realProducts;
  final Function? iconTapped, menuIconTapped;
  final bool? isLiked;

  const RealProductCard(
      {required this.realProducts,
      this.iconTapped,
      this.isLiked,
      this.menuIconTapped,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var change = ref.watch(changeIcon);
    bool prada = false;
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
                        image: NetworkImage(realProducts.image),
                        fit: BoxFit.cover)),
              ),
              // Positioned(
              //   right: 20,
              //   top: 20,
              //   child: Center(
              //     child: ClipRRect(
              //       borderRadius: const BorderRadius.only(
              //           bottomLeft: Radius.circular(5),
              //           bottomRight: Radius.circular(5)),
              //       child: BackdropFilter(
              //         filter: ImageFilter.blur(
              //           sigmaX: 10.0,
              //           sigmaY: 10.0,
              //         ),
              //         child: SizedBox(
              //           height: 40,
              //           width: 40,
              //           child: Card(
              //             color: Colors.black.withOpacity(0.45),
              //             child:  InkWell(
              //               onTap: (){
              //                menuIconTapped();
              //               },
              //               child: const Center(
              //                 child: Icon(Icons.add,size: 23,color: Colors.white,),
              //
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
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
                                text: realProducts.price.toString()),
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
                      iconTapped!();
                      bool check =
                          ref.read(changeIcon.notifier).update((state) {
                        return state != state;
                      });
                      var dance = check;
                    },
                    icon: change
                        ? const Icon(Iconsax.heart5)
                        : const Icon(Iconsax.heart),
                    color: const Color(0xff39FF14),
                  )),
            ],
          ),
        ),
        TitleAndDescription(
          productTitle: realProducts.title,
          productDescription: realProducts.description,
        )
      ],
    );
  }
}
