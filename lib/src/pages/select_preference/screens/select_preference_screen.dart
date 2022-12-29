part of 'package:cotton_gang/src/pages/select_preference/select_preference.dart';

class SelectPreferenceScreen extends StatefulWidget {
  const SelectPreferenceScreen({Key? key}) : super(key: key);

  @override
  State<SelectPreferenceScreen> createState() => _SelectPreferenceScreenState();
}

class _SelectPreferenceScreenState extends State<SelectPreferenceScreen> {
  List<dynamic> preferences = [
    { "title": "Male", "onTapped": false, "height": 235.0, "width": 155.0, "glassHeight": 40.0,"glassWidth": 154.0, "image": CGangImages.female},
    { "title": "Female", "onTapped": false, "height": 235.0, "width":155.0, "glassHeight": 40.0,"glassWidth": 154.0,"image": CGangImages.female},
    { "title": "Unisex", "onTapped": false,"height": 125.0, "width":double.infinity, "glassHeight": 40.0,"glassWidth": 333.0,"image": CGangImages.unisex}
  ];
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                CGangImages.logo,
                height: ScreenSize.height(context) * 0.13,
                width: ScreenSize.width(context) * 0.13,
              ),
              CustomSizedBox.verticalSpace(40),
              Text(
                'Let’s Get To Know Your Preference',
                style: GoogleFonts.prompt(
                  fontWeight: FontWeight.w500,
                  fontSize: 27,
                  color: const Color(0xff181818),
                ),
              ),
              CustomSizedBox.verticalSpace(30),


              Wrap(
                spacing: 20,
                runSpacing: 25,

                children: preferences.map((obj,){
                  var title = obj["title"];

                  var  select = obj["onTapped"];
                  double height = obj["height"];
                  double width = obj["width"];
                  double gHeight = obj["glassHeight"];
                  double gWidth = obj["glassWidth"];
                  String imageFiles = obj["image"];
                  print(width);
                  print(height);
                  print(title);
                  return Trying(isSelect:select, title: title, height:height, width: width, glassHeight: gHeight, glassWidth: gWidth, isClicked: (){
                      setState(() {
                        obj["onTapped"] =! obj["onTapped"];
                        debugPrint('tappeding $obj');

                      });

                  }, images: imageFiles,);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class Trying extends StatefulWidget {
  final String title,images;
   bool isSelect;
 final  Function isClicked;
  final  double height, width,glassHeight,glassWidth;
    Trying({required this.images,required this.isClicked,required this.glassHeight, required this.glassWidth,required this.height, required this.width,required this.isSelect,required this.title,Key? key}) : super(key: key);

  @override
  State<Trying> createState() => _TryingState();
}

class _TryingState extends State<Trying> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        widget.isClicked();
        widget.isSelect =!  widget.isSelect;
      }



      ,
      child: Stack(
        children: [
          Container(
            height: widget.height,
            width:widget.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                  color: widget.isSelect?  Color(0xff1D8909)
                      : Colors.transparent,
                  width: 3),
              image:  DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  widget.images,
                ),
              ),
            ),

          ),
          Positioned(
            left: 0,
            bottom: 1,
            child: Center(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 40.0,
                    sigmaY: 40.0,
                  ),
                  child: Container(
                    color: Colors.black.withOpacity(0.45),
                    height: widget.glassHeight,
                    width: widget.glassWidth,
                    child: Center(
                      child: Text(
                        widget.title,
                        style: GoogleFonts.prompt(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: const Color(0xfff5f5f5),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

