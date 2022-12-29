part of 'package:cotton_gang/src/pages/saved_screen/saved_screen_page.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      endDrawer: const CustomEndDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Titles(
            title: 'Saved',
          ),
          GenericEmptyState(emptyStateImage:CGangImages.savedEmptyState, firstText: 'oops', secondText: 'Your saved list is empty!',),
        ],
      ),
    );
  }
}
