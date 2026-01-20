import 'package:flutter/material.dart';
import '../../../Widgets/uihelper.dart';

class Contactpage extends StatelessWidget {
  const Contactpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(
          text: "Select contact",
          height: 18,
          fontweight: FontWeight.bold,
          color: Colors.white,
        ),
        backgroundColor: const Color(0XFF00A884),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 15),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),

      body: ListView(
        children: [
          // New Group
          ContactActionTile(
            icon: Icons.group,
            title: "New group",
          ),

          // New Contact
          ContactActionTile(
            icon: Icons.person_add,
            title: "New contact",
            showQr: true,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Contacts on WhatsApp",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Contact List
          ContactTile(
            imageUrl:
            "https://i.pinimg.com/736x/b0/ed/05/b0ed057b0a6ff234af7bc498a91edc42.jpg",
            name: "Priyanshu Makkhi",
            status: "Hey there! I am using WhatsApp",
          ),

          ContactTile(
            imageUrl:
            "https://t3.ftcdn.net/jpg/00/69/08/60/360_F_69086080_S3Uz9iTpjxQhKgA9OZiZANXq2VaTl2b3.jpg",
            name: "Kushal Kallu",
            status: "Busy",
          ),
        ],
      ),
    );
  }
}
class ContactActionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool showQr;

  const ContactActionTile({
    super.key,
    required this.icon,
    required this.title,
    this.showQr = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: const Color(0XFF00A884),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: UiHelper.CustomText(
        text: title,
        height: 16,
        fontweight: FontWeight.bold,
        color: Colors.black,
      ),
      trailing: showQr
          ? const Icon(Icons.qr_code)
          : null,
    );
  }
}
class ContactTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String status;

  const ContactTile({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.status,
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
      subtitle: UiHelper.CustomText(
        text: status,
        height: 14,
      ),
    );
  }
}

