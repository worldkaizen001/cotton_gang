part of  'package:cotton_gang/src/pages/notification/notification_page.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:    [
         TitleAndCloseButton(title:' Notification'),


        ],
      ),
    );
  }
}


