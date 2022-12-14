part of 'package:cotton_gang/src/pages/search/search_page.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final searchController = TextEditingController();
  dynamic boy;

  List<dynamic> searchList = [];

  dynamic  searchItem (String text){
   var sum = products.where((sum)=> sum.productName == text);
   setState(() {
     searchList.add(sum);

   });


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customAppBar(),
      endDrawer: const CustomEndDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Titles(
              title: 'Search',
            ),
            Row(
              children: [
                Padding(
                  padding: const  EdgeInsets.only(left: 20, right: 0, top: 20),
                  child: CGangTextField(
                    prefixWidget: Icon(searchController.text.isEmpty? Iconsax.search_normal: null, color: const Color(0xff181818)),
                    controller: searchController,

                    validator: (val) {
                      return null;
                    },
                    onChanged: (val) {
                      setState(() {

                      });
                      return null;
                    },
                    width: 0.8,

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
                ),
                IconButton(onPressed: (){searchItem(searchController.text);
                  setState(() {
                dynamic    boy = searchItem(searchController.text);
                  });
                  print(searchController.text);
                  }, icon: Icon(Icons.send))
              ],
            ),
            const GenericEmptyState(emptyStateImage:CGangImages.searchEmptyState, firstText: 'oops', secondText: 'Your saved list is empty!',),

            Column(
              children: products.where((sum)=> sum.productName == searchController.text).map((e) {
                return Card(
                  child: Text(e.productName),
                );
      }).toList(),
            ),
            Column(
              children: searchList.map((e){
                return Text(e);
              }).toList(),
            )


           



          ],
        ),
      ),
    );
  }
}
