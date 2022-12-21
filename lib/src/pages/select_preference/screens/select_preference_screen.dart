part of 'package:cotton_gang/src/pages/select_preference/select_preference.dart';

class SelectPreferenceScreen extends StatelessWidget {
  const SelectPreferenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Container(
              //   height: 230,
              //   width: 150,
              //   decoration:  BoxDecoration(
              //     borderRadius: BorderRadius.circular(25),
              //
              //     border: Border.all(color: Colors.blueAccent),
              //
              //     image: const DecorationImage(
              //       fit: BoxFit.cover,
              //       image: AssetImage(CGangImages.female,),
              //     ),
              //
              //   ),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Center(
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(10),
              //           child: BackdropFilter(
              //             filter: ImageFilter.blur(
              //               sigmaX: 40.0,
              //               sigmaY: 40.0,
              //             ),
              //             child: Container(
              //               color: Colors.black.withOpacity(0.45),
              //               height: 50,
              //               width: 140,
              //               child: Center(
              //                 child: Text(
              //                   "Male",
              //                   style: GoogleFonts.prompt(
              //                     fontWeight: FontWeight.w600,
              //                     fontSize: 20,
              //                     color: const Color(0xfff5f5f5),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   height: 230,
              //   width: 150,
              //   decoration:  BoxDecoration(
              //     borderRadius: BorderRadius.circular(25),
              //
              //     border: Border.all(color: Colors.blueAccent),
              //
              //     image: const DecorationImage(
              //       fit: BoxFit.cover,
              //       image: AssetImage(CGangImages.female,),
              //     ),
              //
              //   ),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Center(
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(10),
              //           child: BackdropFilter(
              //             filter: ImageFilter.blur(
              //               sigmaX: 40.0,
              //               sigmaY: 40.0,
              //             ),
              //             child: Container(
              //               color: Colors.black.withOpacity(0.45),
              //               height: 50,
              //               width: 140,
              //               child: Center(
              //                 child: Text(
              //                   "Male",
              //                   style: GoogleFonts.prompt(
              //                     fontWeight: FontWeight.w600,
              //                     fontSize: 20,
              //                     color: const Color(0xfff5f5f5),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   height: 230,
              //   width: 150,
              //   decoration:  BoxDecoration(
              //     borderRadius: BorderRadius.circular(25),
              //
              //     border: Border.all(color: Colors.blueAccent),
              //
              //     image: const DecorationImage(
              //       fit: BoxFit.cover,
              //       image: AssetImage(CGangImages.female,),
              //     ),
              //
              //   ),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Center(
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(10),
              //           child: BackdropFilter(
              //             filter: ImageFilter.blur(
              //               sigmaX: 40.0,
              //               sigmaY: 40.0,
              //             ),
              //             child: Container(
              //               color: Colors.black.withOpacity(0.45),
              //               height: 50,
              //               width: 140,
              //               child: Center(
              //                 child: Text(
              //                   "Male",
              //                   style: GoogleFonts.prompt(
              //                     fontWeight: FontWeight.w600,
              //                     fontSize: 20,
              //                     color: const Color(0xfff5f5f5),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   height: 230,
              //   width: 150,
              //   decoration:  BoxDecoration(
              //     borderRadius: BorderRadius.circular(25),
              //
              //     border: Border.all(color: Colors.blueAccent),
              //
              //     image: const DecorationImage(
              //       fit: BoxFit.cover,
              //       image: AssetImage(CGangImages.female,),
              //     ),
              //
              //   ),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Center(
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(10),
              //           child: BackdropFilter(
              //             filter: ImageFilter.blur(
              //               sigmaX: 40.0,
              //               sigmaY: 40.0,
              //             ),
              //             child: Container(
              //               color: Colors.black.withOpacity(0.45),
              //               height: 50,
              //               width: 140,
              //               child: Center(
              //                 child: Text(
              //                   "Male",
              //                   style: GoogleFonts.prompt(
              //                     fontWeight: FontWeight.w600,
              //                     fontSize: 20,
              //                     color: const Color(0xfff5f5f5),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   height: 230,
              //   width: 150,
              //   decoration:  BoxDecoration(
              //     borderRadius: BorderRadius.circular(25),
              //
              //     border: Border.all(color: Colors.blueAccent),
              //
              //     image: const DecorationImage(
              //       fit: BoxFit.cover,
              //       image: AssetImage(CGangImages.female,),
              //     ),
              //
              //   ),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Center(
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(10),
              //           child: BackdropFilter(
              //             filter: ImageFilter.blur(
              //               sigmaX: 40.0,
              //               sigmaY: 40.0,
              //             ),
              //             child: Container(
              //               color: Colors.black.withOpacity(0.45),
              //               height: 50,
              //               width: 140,
              //               child: Center(
              //                 child: Text(
              //                   "Male",
              //                   style: GoogleFonts.prompt(
              //                     fontWeight: FontWeight.w600,
              //                     fontSize: 20,
              //                     color: const Color(0xfff5f5f5),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   height: 230,
              //   width: 150,
              //   decoration:  BoxDecoration(
              //     borderRadius: BorderRadius.circular(25),
              //
              //     border: Border.all(color: Colors.blueAccent),
              //
              //     image: const DecorationImage(
              //       fit: BoxFit.cover,
              //       image: AssetImage(CGangImages.female,),
              //     ),
              //
              //   ),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Center(
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(10),
              //           child: BackdropFilter(
              //             filter: ImageFilter.blur(
              //               sigmaX: 40.0,
              //               sigmaY: 40.0,
              //             ),
              //             child: Container(
              //               color: Colors.black.withOpacity(0.45),
              //               height: 50,
              //               width: 140,
              //               child: Center(
              //                 child: Text(
              //                   "Male",
              //                   style: GoogleFonts.prompt(
              //                     fontWeight: FontWeight.w600,
              //                     fontSize: 20,
              //                     color: const Color(0xfff5f5f5),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   height: 230,
              //   width: 150,
              //   decoration:  BoxDecoration(
              //     borderRadius: BorderRadius.circular(25),
              //
              //     border: Border.all(color: Colors.blueAccent),
              //
              //     image: const DecorationImage(
              //       fit: BoxFit.cover,
              //       image: AssetImage(CGangImages.female,),
              //     ),
              //
              //   ),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Center(
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(10),
              //           child: BackdropFilter(
              //             filter: ImageFilter.blur(
              //               sigmaX: 40.0,
              //               sigmaY: 40.0,
              //             ),
              //             child: Container(
              //               color: Colors.black.withOpacity(0.45),
              //               height: 50,
              //               width: 140,
              //               child: Center(
              //                 child: Text(
              //                   "Male",
              //                   style: GoogleFonts.prompt(
              //                     fontWeight: FontWeight.w600,
              //                     fontSize: 20,
              //                     color: const Color(0xfff5f5f5),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   height: 230,
              //   width: 150,
              //   decoration:  BoxDecoration(
              //     borderRadius: BorderRadius.circular(25),
              //
              //     border: Border.all(color: Colors.blueAccent),
              //
              //     image: const DecorationImage(
              //       fit: BoxFit.cover,
              //       image: AssetImage(CGangImages.female,),
              //     ),
              //
              //   ),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Center(
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(10),
              //           child: BackdropFilter(
              //             filter: ImageFilter.blur(
              //               sigmaX: 40.0,
              //               sigmaY: 40.0,
              //             ),
              //             child: Container(
              //               color: Colors.black.withOpacity(0.45),
              //               height: 50,
              //               width: 140,
              //               child: Center(
              //                 child: Text(
              //                   "Male",
              //                   style: GoogleFonts.prompt(
              //                     fontWeight: FontWeight.w600,
              //                     fontSize: 20,
              //                     color: const Color(0xfff5f5f5),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              Stack(
                children: [
                  Container(
                    height: 230,
                    width: 150,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(25),

                      border: Border.all(color: Colors.red),

                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(CGangImages.female,),
                      ),

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                      ],
                    ),
                  ),
                  Positioned(
                    left: 2.30,
                    bottom:2,
                    child:  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 40.0,
                          sigmaY: 40.0,
                        ),
                        child: Container(
                          color: Colors.black.withOpacity(0.45),
                          height: 50,
                          width: 145,
                          child: Center(
                            child: Text(
                              "Male",
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
                  ),)

                ],
              )
            ],
          ),

        ],
      ),
    );
  }
}
