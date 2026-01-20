import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/HomeScreen/Contact/contactpage.dart';
import '../../../Widgets/uihelper.dart';
import '../Widgets/uihelper.dart';

class ChatsScreen extends StatelessWidget {
  ChatsScreen({super.key});

  final List<Map<String, String>> arrContent = [
    {
      "images":
          "https://t3.ftcdn.net/jpg/00/69/08/60/360_F_69086080_S3Uz9iTpjxQhKgA9OZiZANXq2VaTl2b3.jpg",
      "name": "Kushal Kallu",
      "lastmass": "Lorem Ipsum",
      "time": "05:45",
      "msg": "7",
    },
    {
      "images":
          "https://i.pinimg.com/736x/b0/ed/05/b0ed057b0a6ff234af7bc498a91edc42.jpg",
      "name": "Priyanshu Makkhieeeee",
      "lastmass": "Monkey",
      "time": "06:45",
      "msg": "6",
    },
    {
      "images":
          "https://t3.ftcdn.net/jpg/00/69/08/60/360_F_69086080_S3Uz9iTpjxQhKgA9OZiZANXq2VaTl2b3.jpg",
      "name": "Kushal Kallu",
      "lastmass": "Lorem Ipsum",
      "time": "05:45",
      "msg": "7",
    },
    {
      "images":
          "https://i.pinimg.com/736x/b0/ed/05/b0ed057b0a6ff234af7bc498a91edc42.jpg",
      "name": "Priyanshu Makkhieeeee",
      "lastmass": "Monkey",
      "time": "06:45",
      "msg": "6",
    },
    {
      "images":
          "https://t3.ftcdn.net/jpg/00/69/08/60/360_F_69086080_S3Uz9iTpjxQhKgA9OZiZANXq2VaTl2b3.jpg",
      "name": "Kushal Kallu",
      "lastmass": "Lorem Ipsum",
      "time": "05:45",
      "msg": "7",
    },
    {
      "images":
          "https://i.pinimg.com/736x/b0/ed/05/b0ed057b0a6ff234af7bc498a91edc42.jpg",
      "name": "Priyanshu Makkhieeeee",
      "lastmass": "Monkey",
      "time": "06:45",
      "msg": "6",
    },
    {
      "images":
          "https://t3.ftcdn.net/jpg/00/69/08/60/360_F_69086080_S3Uz9iTpjxQhKgA9OZiZANXq2VaTl2b3.jpg",
      "name": "Kushal Kallu",
      "lastmass": "Lorem Ipsum",
      "time": "05:45",
      "msg": "7",
    },
    {
      "images":
          "https://i.pinimg.com/736x/b0/ed/05/b0ed057b0a6ff234af7bc498a91edc42.jpg",
      "name": "Priyanshu Makkhieeeee",
      "lastmass": "Monkey",
      "time": "06:45",
      "msg": "6",
    },
    {
      "images":
      "https://t3.ftcdn.net/jpg/00/69/08/60/360_F_69086080_S3Uz9iTpjxQhKgA9OZiZANXq2VaTl2b3.jpg",
      "name": "Kushal Kallu",
      "lastmass": "Lorem Ipsum",
      "time": "05:45",
      "msg": "7",
    },
    {
      "images":
      "https://i.pinimg.com/736x/b0/ed/05/b0ed057b0a6ff234af7bc498a91edc42.jpg",
      "name": "Priyanshu Makkhieeeee",
      "lastmass": "Monkey",
      "time": "06:45",
      "msg": "6",
    },
    {
      "images":
      "https://t3.ftcdn.net/jpg/00/69/08/60/360_F_69086080_S3Uz9iTpjxQhKgA9OZiZANXq2VaTl2b3.jpg",
      "name": "Kushal Kallu",
      "lastmass": "Lorem Ipsum",
      "time": "05:45",
      "msg": "7",
    },
    {
      "images":
      "https://i.pinimg.com/736x/b0/ed/05/b0ed057b0a6ff234af7bc498a91edc42.jpg",
      "name": "Priyanshu Makkhieeeee",
      "lastmass": "Monkey",
      "time": "06:45",
      "msg": "6",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: arrContent.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(arrContent[index]["images"]!),
            ),

            title: UiHelper.CustomText(
              text: arrContent[index]["name"]!,
              height: 16,
              fontweight: FontWeight.bold,
              color: Colors.black,
            ),

            subtitle: UiHelper.CustomText(
              text: arrContent[index]["lastmass"]!,
              height: 14,
            ),

            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(
                  text: arrContent[index]["time"]!,
                  height: 12,
                ),
                const SizedBox(height: 5),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green,
                  child: UiHelper.CustomText(
                    text: arrContent[index]["msg"]!,
                    height: 12,
                    color: Colors.white,
                    fontweight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton:GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder:( context)=>Contactpage()));
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color(0xFF00A884),
          child: Image.asset("assets/images/mode_comment.png"),

        ),
      ),
    );
  }
}
