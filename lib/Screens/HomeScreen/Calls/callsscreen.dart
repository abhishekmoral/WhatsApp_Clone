import 'package:flutter/material.dart';
import '../../../Widgets/uihelper.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Create call link
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.green,
              child: const Icon(
                Icons.link,
                color: Colors.white,
              ),
            ),
            title: UiHelper.CustomText(
              text: "Create call link",
              height: 16,
              fontweight: FontWeight.bold,
              color: Colors.black,
            ),
            subtitle: UiHelper.CustomText(
              text: "Share a link for your WhatsApp call",
              height: 14,
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Recent",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),

          // Call List
          CallTile(
            imageUrl:
            "https://i.pinimg.com/736x/b0/ed/05/b0ed057b0a6ff234af7bc498a91edc42.jpg",
            name: "Priyanshu Makkhi",
            time: "Today, 11:30 AM",
            isVideo: true,
            isMissed: false,
          ),

          CallTile(
            imageUrl:
            "https://t3.ftcdn.net/jpg/00/69/08/60/360_F_69086080_S3Uz9iTpjxQhKgA9OZiZANXq2VaTl2b3.jpg",
            name: "Kushal Kallu",
            time: "Yesterday, 9:10 PM",
            isVideo: false,
            isMissed: true,
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(Icons.add_call),
      ),
    );
  }
}
class CallTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String time;
  final bool isVideo;
  final bool isMissed;

  const CallTile({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.time,
    required this.isVideo,
    required this.isMissed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(imageUrl),
      ),

      title: UiHelper.CustomText(
        text: name,
        height: 16,
        fontweight: FontWeight.bold,
        color: Colors.black,
      ),

      subtitle: Row(
        children: [
          Icon(
            isMissed ? Icons.call_missed : Icons.call_received,
            size: 16,
            color: isMissed ? Colors.red : Colors.green,
          ),
          const SizedBox(width: 6),
          UiHelper.CustomText(
            text: time,
            height: 14,
          ),
        ],
      ),

      trailing: Icon(
        isVideo ? Icons.videocam : Icons.call,
        color: Colors.green,
      ),
    );
  }
}
