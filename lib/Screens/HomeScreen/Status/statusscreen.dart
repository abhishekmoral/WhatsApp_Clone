import 'package:flutter/material.dart';
import '../../../Widgets/uihelper.dart';
import '../Widgets/uihelper.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // My Status
          ListTile(
            leading: Stack(
              children: [
                const CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(
                    "https://i.pinimg.com/736x/b0/ed/05/b0ed057b0a6ff234af7bc498a91edc42.jpg",
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.green,
                    child: const Icon(
                      Icons.add,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            title: UiHelper.CustomText(
              text: "My Status",
              height: 16,
              fontweight: FontWeight.bold,
              color: Colors.black,
            ),
            subtitle: UiHelper.CustomText(
              text: "Tap to add status update",
              height: 14,
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Recent updates",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),

          // Status List
          StatusTile(
            imageUrl:
            "https://t3.ftcdn.net/jpg/00/69/08/60/360_F_69086080_S3Uz9iTpjxQhKgA9OZiZANXq2VaTl2b3.jpg",
            name: "Kushal Kallu",
            time: "Today, 10:45 AM",
          ),

          StatusTile(
            imageUrl:
            "https://i.pinimg.com/736x/b0/ed/05/b0ed057b0a6ff234af7bc498a91edc42.jpg",
            name: "Priyanshu Makkhi",
            time: "Yesterday, 8:30 PM",
          ),
        ],
      ),
    );
  }
}
class StatusTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String time;

  const StatusTile({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 28,
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: UiHelper.CustomText(
        text: name,
        height: 16,
        fontweight: FontWeight.bold,
        color: Colors.black,
      ),
      subtitle: UiHelper.CustomText(
        text: time,
        height: 14,
      ),
    );
  }
}

