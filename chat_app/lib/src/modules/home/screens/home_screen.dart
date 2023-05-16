import 'package:chat_app/src/components/message/send_message.dart';
import 'package:chat_app/src/components/message/stream_message.dart';
import 'package:chat_app/src/modules/home/controllers/home_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("⚡️Chat"),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () async => await controller.logout(),
                child: const Text("Logout Account"),
              ),
              PopupMenuItem(
                onTap: () async => await controller.delete(),
                child: const Text("Delete Account"),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          StreamMessage(controller.streamMessage()
              as Stream<QueryDocumentSnapshot<Map<String, dynamic>>>),
          SendMessage(
            controller.textController,
            onPressed: () async => controller.sendMessage(),
          ),
        ],
      ),
    );
  }
}
