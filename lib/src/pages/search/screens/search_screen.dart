part of 'package:cotton_gang/src/pages/search/search_page.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return Scaffold(
      appBar: customAppBar(),
      body: Column(
        children: [
          CGangTextField(

            controller: searchController,
            validator: (val){
              return null;
            },
            onChanged: (val){
              return null;
            },
            width: 1,
            obscure: false,
            prefixWidget: const Icon(
              Iconsax.search_normal,
            ),
            hintText: 'Search product or seller',

            hintTextStyle: GoogleFonts.prompt(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              color: const Color(0xff697367),
            ),
          )
        ],
      ),
    );
  }
}
