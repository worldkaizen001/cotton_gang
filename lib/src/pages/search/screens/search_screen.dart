part of 'package:cotton_gang/src/pages/search/search_page.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customAppBar(),
      endDrawer: const CustomEndDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Titles(
            title: 'Search',
          ),
          Padding(
            padding: const  EdgeInsets.only(left: 20, right: 20, top: 20),
            child: CGangTextField(
              controller: searchController,
              validator: (val) {
                return null;
              },
              onChanged: (val) {
                setState(() {

                });
                return null;
              },
              width: 1,
              obscure: false,
              cursorColor: const  Color(0xff181818),
                prefixIcon: searchController.text.isEmpty? Iconsax.search_normal: null,
              prefixIconColor: const Color(0xff181818),
              hintText: 'Search product or seller',
              hintTextStyle: GoogleFonts.prompt(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: const Color(0xff697367),
              ),
            ),
          )
        ],
      ),
    );
  }
}
