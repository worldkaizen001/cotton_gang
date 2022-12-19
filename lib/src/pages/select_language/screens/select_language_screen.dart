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
    List.generate(
        2,
        (index) => Row(
              children: [
                const Text('Delta'),
                Checkbox(
                    value: isChecked,
                    onChanged: (val) {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    })
              ],
            ));
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
                      padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(text,style:  GoogleFonts.prompt(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: const Color(0xff181818),
                                  ),),
                                  Checkbox(
                                      value: isValue,
                                      shape: const CircleBorder(),
                                      onChanged: (_) {
                                        setState(() {
                                          obj["isTapped"] =! obj["isTapped"];
                                          // isValue =! isValue;

                                          isChecked = obj["isTapped"];

                                          isSelected.contains(obj)
                                              ? isSelected.remove(obj)
                                              : isSelected.add(obj);
                                        });
                                      }),
                                  // Radio(value: isValue, groupValue: 'groupValue', onChanged: (val){
                                  //   setState(() {
                                  //     obj["isTapped"] =! obj["isTapped"];
                                  //   });
                                  // })
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
              CustomSizedBox.verticalSpace(40),

              CGangButton(
                title: 'Select',
                buttonHeight: 0.060,
                buttonWidth: 1,
                buttonColor: isSelected.isEmpty
                    ? const Color(0xff181818).withOpacity(0.49)
                    : const Color(0xff181818),
                callBack: isSelected.isEmpty ? () {} : () {},
                textStyle: GoogleFonts.prompt(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color(0xffF9F9F9)),
                borderRadius: 4,
                borderColor: const Color(0xff181818),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GridTile(child: SizedBox(
                      height: 50,
                        width: 100,
                        child: Card(
                          color: Colors.grey,
                          child: Text('data'),
                        ))),
                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}

// Wrap(
// spacing: 20,
// children: interest.map((index) => GestureDetector(
// onTap: (){
// setState((){
// selected.contains(index)?
// selected.remove(index): selected.add(index);
// });
// },
// child: Padding(
// padding:  const EdgeInsets.symmetric(vertical: 5) ,
// child: Card(
// elevation: 0,
// shape: RoundedRectangleBorder(
// side: BorderSide(
// color: selected.contains(index)? Colors.teal : Colors.black,
// ),
// borderRadius: BorderRadius.circular(100),
// ),
// child: Padding(
// padding: const EdgeInsets.all(10),
// child: Row(
// mainAxisSize: MainAxisSize.min,
// children: [
// Text(
// index,
//
// ),
// selected.contains(index)
// ? const Icon(
// Icons.check,
// size: 20,
// )
// : Container(),
// ],
// ),
// ),
// ),
// ),
// )).toList(),
// ),
