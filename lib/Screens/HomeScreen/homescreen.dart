import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/HomeScreen/Calls/callsscreen.dart';
import 'package:whatsapp/Screens/HomeScreen/Chats/chatscreen.dart';
import 'package:whatsapp/Screens/HomeScreen/Status/statusscreen.dart';
import 'package:whatsapp/Screens/HomeScreen/camera/camerascreen.dart';
import 'package:whatsapp/Widgets/uihelper.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt, color: Colors.white)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
           indicatorColor: Colors.white,
          ),
          toolbarHeight: 100,
          title: UiHelper.CustomText(
            text: "WhatsApp",
            height: 20,
            color: Colors.white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/Search.png"),
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}
