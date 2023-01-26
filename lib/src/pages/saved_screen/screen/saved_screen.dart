part of 'package:cotton_gang/src/pages/saved_screen/saved_screen_page.dart';

// final onClick = StateProvider<int>((ref) {
//   var currentIndex = 0;
//   return currentIndex;
// });

class SavedScreen extends ConsumerWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var changeState = ref.watch(onClick);
    List<Map<String, dynamic>> btnList = [
      {"title": "Description", "isClicked": false},
      {"title": "More Details", "isClicked": false},
      {"title": "reviews", "isClicked": false}
    ];
    final savedItem = ref.watch(savedItemsProvider);

    return Scaffold(
      appBar: customAppBar(),
      endDrawer: const CustomEndDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Titles(
              title: 'Saved',
            ),
            // if (savedItem.savedItemsList.isEmpty) const GenericEmptyState(
            //         emptyStateImage: CGangImages.savedEmptyState,
            //         firstText: 'oops',
            //         secondText: 'Your saved list is empty!',
            //       ) else Column(children: [
            //         SizedBox(
            //           height: 990,
            //           child: ListView.builder(
            //               key: const PageStorageKey<String>('pages'),
            //               itemCount: savedItem.savedItemsList.length,
            //               itemBuilder: (context, index) {
            //                 var items = savedItem.savedItemsList[index];
            //                 return SavedItemsCard(
            //                     productDescription: items.productDescription,
            //                     menuIconTapped: () {
            //                       return showDialog(context: context, builder: (BuildContext context){
            //                         return  AlertDialog(
            //                           title: const Text('Delete Confirmation'),
            //                           content: const Text('Are you sure you want to delete this item?'),
            //                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            //                           actions: [
            //                             TextButton(onPressed: (){
            //                               savedItem.removeSavedItems(items);
            //                               Navigator.pop(context);
            //
            //
            //                             }, child: const Text('Delete')),
            //                             TextButton(onPressed: (){
            //                               Navigator.pop(context);
            //                             }, child: const Text('Cancel'))
            //                           ],
            //                         );
            //                       });
            //                     },
            //                     isLiked: items.isLiked,
            //                     productName: items.productName,
            //                     iconTapped: () {
            //                       return showDialog(context: context, builder: (BuildContext context){
            //                         return  AlertDialog(
            //                           elevation: 10,
            //                           backgroundColor: Colors.grey[200],
            //
            //                           title: const Text('Delete Confirmation'),
            //                           content: const Text('Are you sure you want to delete this item?'),
            //                           shape: RoundedRectangleBorder(
            //                               borderRadius: BorderRadius.circular(10),),
            //                           actions: [
            //                             TextButton(onPressed: (){
            //                               savedItem.removeSavedItems(items);
            //                               Navigator.pop(context);
            //
            //
            //                             }, child: const Text('Delete')),
            //                             TextButton(onPressed: (){
            //                               Navigator.pop(context);
            //                             }, child: const Text('Cancel'))
            //                           ],
            //                         );
            //                       });
            //
            //                     },
            //                     productImage: items.productImages[0],
            //                     price: items.price,
            //                     vendorName: items.vendorName);
            //               }),
            //         ),
            //       ]),


            if (savedItem.savedItemsList.isEmpty) const GenericEmptyState(
              emptyStateImage: CGangImages.savedEmptyState,
              firstText: 'oops',
              secondText: 'Your saved list is empty!',)
                    .animate().fadeIn(duration: Duration(milliseconds: 300)).shake(delay: Duration(milliseconds: 400),duration: Duration(milliseconds: 350) )
            else Column(
                key: const PageStorageKey<String>('static'),

                children: savedItem.savedItemsList.map((item){

                  return SavedItemsCard(productDescription: item.productDescription , menuIconTapped:(){}, isLiked: item.isLiked, productName: item.productName, iconTapped: (){
                    return showDialog(context: context, builder: (BuildContext context){
                      return  AlertDialog(
                        elevation: 10,
                        backgroundColor: Colors.grey[200],

                        title: const Text('Delete Confirmation'),
                        content: const Text('Are you sure you want to delete this item?'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),),
                        actions: [
                          TextButton(onPressed: (){
                            savedItem.removeSavedItems(item);
                            Navigator.pop(context);


                          }, child: const Text('Delete')),
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: const Text('Cancel'))
                        ],
                      );
                    });

                  }, productImage: item.productImages[0], price: item.price, vendorName: item.vendorName);
                }).toList(),
              )



          ],
        ),
      ),
    );
  }
}
