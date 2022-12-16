part of 'package:cotton_gang/src/pages/select_language/select_language_page.dart';


class SelectLanguage extends StatefulWidget {
  const SelectLanguage({Key? key}) : super(key: key);

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {

  List language  = [
    {'lang': 'pidin', 'isTapped': false, "look":false},
    {'lang': 'english', 'isTapped': true},

  ];

List selected = [];


  bool isChecked = false;
  @override
  Widget build(BuildContext context) {


    List.generate(2, (index) => Row(
      children: [
        const Text('Delta'),
        Checkbox(value: isChecked, onChanged: (val){
          setState(() {
            isChecked =! isChecked;
          });
        })
      ],
    ));
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: Column(
            children: [
              // Image.asset(
              //   CGangImages.logo,
              //   height: ScreenSize.height(context) * 0.27,
              //   width: ScreenSize.width(context) * 0.27,
              // ),
              // CustomSizedBox.verticalSpace(50),

             // Column(
             //   children: languages.map((index) {
             //     return GestureDetector(
             //       // onTap: (){
             //       //   setState(() {
             //       //     index.isTapped = isChecked;
             //       //   });
             //       // },
             //       child: Row(
             //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
             //         children: [
             //           Text(index.tribe),
             //           Checkbox(value: index.isTapped, onChanged: (val){
             //             setState(() {
             //
             //               isChecked =! isChecked;
             //             });
             //           })
             //         ],
             //       ),
             //     );
             //   }).toList(),
             // ),
              Column(
               children: language.map((obj) {
                 bool isValue = obj["isTapped"];
                 String text = obj["lang"];
                 return Row(children:  [Text(text), Checkbox(value: isValue, onChanged: (_){
                   setState(() {
                     obj["isTapped"]= !obj["isTapped"];
                     // isValue =! isValue;

                     isChecked = obj["isTapped"];

                     selected.contains(obj)?
                     selected.remove(obj): selected.add(obj);
                   });
                 })],);
               }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 15,right: 30),
                child: SizedBox(
                  height: 250,
                  width: 300,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    color: const Color(0xfff9f9f9),
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
                        // SizedBox(
                        //   height: 150,
                        //   child: ListView.builder(
                        //     itemCount: language.length,
                        //       itemBuilder: (ctx,index){
                        //       final data = language[index];
                        //       return Row(
                        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //         children: [
                        //            Text(data),
                        //           Checkbox(value: isChecked, onChanged: (val){
                        //             setState(() {
                        //               isChecked =! isChecked;
                        //             });
                        //           })
                        //         ],
                        //       );
                        //       }),
                        // ),


                      ],
                    ),
                  ),
                ),
              ),
              // ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: isChecked ? Colors.red : Colors.teal,
              //     ),
              //     onPressed: (){}, child: Text('gance')),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selected.isNotEmpty ? Colors.black : Colors.teal,
                  ),
                  onPressed: (){}, child: Text('gance')),



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

