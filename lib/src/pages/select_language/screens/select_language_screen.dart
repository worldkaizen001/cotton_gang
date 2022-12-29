part of 'package:cotton_gang/src/pages/select_language/select_language_page.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({Key? key}) : super(key: key);

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  List language = [
    {'lang': 'Nigerian pidin', 'isTapped': false, "look": false},
    {'lang': 'Nigerian english', 'isTapped': false},
  ];

  List isSelected = [];

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                CGangImages.logo,
                height: ScreenSize.height(context) * 0.27,
                width: ScreenSize.width(context) * 0.27,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, right: 20),
                child: SizedBox(
                  height: 180,
                  width: 300,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: const Color(0xfff9f9f9),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: Column(
                        children: [
                          Text(
                            'Select preferred language',
                            style: GoogleFonts.prompt(
                              textStyle: const TextStyle(
                                color: Color(0xff181818),
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Column(
                            children: language.map((obj) {
                              bool isValue = obj["isTapped"];
                              String text = obj["lang"];
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    text,
                                    style: GoogleFonts.prompt(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: const Color(0xff181818),
                                    ),
                                  ),
                                  Checkbox(
                                    activeColor: Color(0xff181818),
                                      value: isValue,
                                      shape: const CircleBorder(),
                                      onChanged: (_) {
                                        setState(() {
                                          obj["isTapped"] = !obj["isTapped"];


                                          isSelected.contains(obj)
                                              ? isSelected.remove(obj)
                                              : isSelected.add(obj);
                                        });
                                      }),
                                ],
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 50,
              ),

              CGangButton(
                title: 'Select',
                buttonHeight: 0.060,
                buttonWidth: 1,
                buttonColor: isSelected.isEmpty
                    ? const Color(0xff181818).withOpacity(0.49)
                    : const Color(0xff181818),
                callBack: isSelected.isEmpty
                    ? () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar( const SnackBar(

                          content: Text('Please select a language'),
                          duration: Duration(seconds: 3),
                        ));
                      }
                    : () {},
                textStyle: GoogleFonts.prompt(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color(0xffF9F9F9)),
                borderRadius: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
