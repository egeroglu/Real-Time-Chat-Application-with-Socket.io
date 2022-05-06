import 'package:flutter/material.dart';
import 'package:w_chat/CustomUI/CustomCard.dart';
import 'package:w_chat/Model/ChatModel.dart';
import 'package:w_chat/Screens/SelectContact.dart';

class Chatpage extends StatefulWidget{
  Chatpage ({Key? key, required this.chatmodels, required this.sourcechat}) : super (key:key);
  final List<ChatModel> chatmodels;
  final ChatModel sourcechat;
  @override
  ChatpageState createState() => ChatpageState();

}

class ChatpageState extends State<Chatpage>{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (builder) => SelectContact()));
        },
        backgroundColor: Colors.blue,
        child: Text("Find"),
      ),
      body: ListView.builder(
        itemCount: widget.chatmodels.length,
        itemBuilder: (context,index) => CustomCard(
            chatModel: widget.chatmodels[index],
            sourcechat: widget.sourcechat,
          ),
      ),
    );
  }
}