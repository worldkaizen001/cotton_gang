part of 'package:cotton_gang/src/pages/select_language/select_language_page.dart';

class SelectState extends StatefulWidget {
  const SelectState({Key? key}) : super(key: key);

  @override
  State<SelectState> createState() => _SelectStateState();
}

class _SelectStateState extends State<SelectState> {
  List<dynamic> preferredStates = [
    {"state": "Rivers State", "isTouched": false},
    {"state": "Lagos State", "isTouched": false},
    {"state": "Delta State", "isTouched": false},
    {"state": "Kano State", "isTouched": false},
    {"state": "Bayelsa State", "isTouched": false},
    {"state": "Kogi State", "isTouched": false},
    {"state": "Edo State", "isTouched": false},
  ];

  List<dynamic> isSelected = [];

  List stra (String state) => preferredStates.where((element) => element["state"] == state).toList();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                CGangImages.logo,
                height: 50,
                width: 50,
              ),
              CustomSizedBox.verticalSpace(40),
              Text(
                'Select the states you’d like to shop in and have your orders delivered to.',
                style: GoogleFonts.prompt(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: const Color(0xff181818),
                ),
                textAlign: TextAlign.center,
              ),
              CustomSizedBox.verticalSpace(30),
              Column(
                children: preferredStates.map((obj) {
                  var states = obj["state"];
                  var value = obj["isTouched"];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        states,
                        style: GoogleFonts.prompt(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: const Color(0xff181818),
                        ),
                      ),
                      Checkbox(
                        
                        activeColor: const Color(0xff181818),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          value: value,
                          onChanged: (_) {
                            setState(() {
                              obj["isTouched"] = !obj["isTouched"];
                              isSelected.contains(obj)
                                  ? isSelected.remove(obj)
                                  : isSelected.add(obj);
                            });
                          }),
                    ],
                  );
                }).toList(),
              ),

              CustomSizedBox.verticalSpace(100),
              CGangButton(
                title: 'Select',
                buttonHeight: 0.060,
                buttonWidth: 1,
                buttonColor: isSelected.isEmpty
                    ? const Color(0xff181818).withOpacity(0.49)
                    : const Color(0xff181818),
                callBack: isSelected.isEmpty ? () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar( const SnackBar(

                    content: Text('Please select a state'),
                    duration: Duration(seconds: 3),
                  ));
                } : () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return BottomNavigation();
                  }));
                },
                textStyle: GoogleFonts.prompt(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color(0xffF9F9F9)),
                borderRadius: 4,
                borderColor: isSelected.isEmpty
                    ? const Color(0xff181818).withOpacity(0.2)
                    : const Color(0xff181818),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
