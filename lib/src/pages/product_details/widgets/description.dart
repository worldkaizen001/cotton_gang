part of 'package:cotton_gang/src/pages/product_details/product_details_page.dart';

class Description extends StatelessWidget {
  final String ownerName, productName, productDescription;
  const Description(
      {required this.ownerName,
      required this.productName,
      required this.productDescription,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
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
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage(CGangImages.female),
                            ),
                            CustomSizedBox.horizontalSpace(4),
                            Text(
                              ownerName,
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
              SizedBox(
                height: 42,
                width: 90,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '100 likes',
                        style: GoogleFonts.prompt(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffF9F9F9),
                        ),
                      ),
                      Icon(
                        Iconsax.heart,
                        size: 20,
                        color: Color(0xff39FF14),
                      )
                    ],
                  ),
                  color: Color(0xff181818),
                ),
              ),
            ],
          ),
        ),
        Text(
          productName,
          style: GoogleFonts.prompt(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: const Color(0xff181818),
          ),
        ),
        Text(
          productDescription,
          style: GoogleFonts.prompt(
            fontSize: 13,
            fontWeight: FontWeight.w300,
            color: const Color(0xff555555),
          ),
        ),
        CustomSizedBox.verticalSpace(10),
        CGangButton(
          title: 'Contact Seller',
          buttonHeight: 0.07,
          buttonWidth: 1,
          buttonColor: const Color(0xff181818),
          callBack: () {},
          borderRadius: 4,
        ),
      ],
    );
  }
}
