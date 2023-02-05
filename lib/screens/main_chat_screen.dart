import 'package:flutter/material.dart';
import 'package:gpt/constants.dart';

import '../drawer_widget.dart';
import '../main_chat_widgets.dart';

class MainChatScreen extends StatelessWidget {
   MainChatScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool conversationStart = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kPrimaryColorBlack,
        automaticallyImplyLeading: false,
        leading: IconButton(
          splashRadius: 0.1,
          icon: const Icon(
            Icons.menu,
            size: 20,
          ),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        centerTitle: true,
        title: Text(
          "New chat",
          style: kTextStyle12,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              size: 20,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: conversationStart?ListView(
              children: [
                ChatGptMessageCard(),

                UserMessageCard(),

                ChatGptMessageCard(),

                UserMessageCard(),

                ChatGptMessageCard(),

                UserMessageCard(),

                ChatGptMessageCard(),

                UserMessageCard(),

                ChatGptMessageCard(),

                UserMessageCard(),

                ChatGptMessageCard(),

                UserMessageCard(),

                ChatGptMessageCard(),

                UserMessageCard(),
              ],
            ):
            ListView(
              children: [
                kSizedBoxHeight20,
                Text(
                  "ChatGPT",
                  style: kTextStyle25.copyWith(letterSpacing: 1.2),
                  textAlign: TextAlign.center,
                ),
                kSizedBoxHeight40,

                ////////////////////
                //// HeadLing 1
                /////////////////////////////////
                const HeadLineWidget(
                  labelString: "Examples",
                  labelIcon: Icons.wb_sunny_outlined,
                ),
                kSizedBoxHeight20,

                ///////////////////////////////////////////
                //// Quick Action Buttons
                ///////////////////////////////
                QuickActionButton(
                  labelString: "Explain quantum computing in simple terms",
                  onTapAction: () {},
                ),
                kSizedBoxHeight10,

                QuickActionButton(
                  labelString: "Got any creative idea for a 10 year old's birthday",
                  onTapAction: () {},
                ),
                kSizedBoxHeight10,

                QuickActionButton(
                  labelString: "How do I make an Http request in JavaScript",
                  onTapAction: () {},
                ),
                kSizedBoxHeight30,


                ////////////////////
                //// HeadLing 2
                /////////////////////////////////
                const HeadLineWidget(
                  labelString: "Capabilities",
                  labelIcon: Icons.electric_bolt_outlined,
                ),
                kSizedBoxHeight20,

                ///////////////////////////////////////////
                //// HomeCards for Capabilities
                ///////////////////////////////
                const HomeCard(
                  labelString: "Remember what user said earlier in conversations",
                ),
                kSizedBoxHeight10,
                const HomeCard(
                  labelString: "Allow user to provide follow-up corrections",
                ),
                kSizedBoxHeight10,
                const HomeCard(
                  labelString: "Trained to decline inappropriate request",
                ),
                kSizedBoxHeight30,


                ////////////////////
                //// HeadLing 3
                /////////////////////////////////
                const HeadLineWidget(
                  labelString: "Limitations",
                  labelIcon: Icons.error_outline,
                ),
                kSizedBoxHeight20,

                ///////////////////////////////////////////
                //// HomeCards for Limitations
                ///////////////////////////////
                const HomeCard(
                  labelString: "May occasionally generate incorrect information",
                ),
                kSizedBoxHeight10,
                const HomeCard(
                  labelString: "May occasionally produce harmful instructions or biased content",
                ),
                kSizedBoxHeight10,
                const HomeCard(
                  labelString: "Limited knowledge of world and events after 2021",
                ),
                kSizedBoxHeight30,



              ],
            ),
          ),

          /////////////////////////////////////
          ///// Input User Text field
          ////////////////////////////////////
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey),
              ),
            ),
            child: TextField(
              style: kTextStyle8,
              maxLines: 10,
              minLines: 1,
              cursorColor: kSecondaryColorGreen,
              decoration: InputDecoration(
                  hintText: "Waiting for your text",
                  hintStyle: kTextStyle8,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade500)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: kSecondaryColorGreen)),
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.send,
                      size: 20,
                      color: kSecondaryColorGreen,
                    ),
                    onPressed: () {},
                  )),
            ),
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: kPrimaryColorBlack,
        child: DrawerWidget(),
      ),
    );
  }
}

class ChatGptMessageCard extends StatelessWidget {
  const ChatGptMessageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300),),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 30,
                height: 30,
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: kSecondaryColorGreen
                ),
                child: ImageIcon(AssetImage("images/logo.png"),),
              ),

              Row(
                children: [
                  Icon(Icons.thumb_up_alt_outlined,size: 15,color: Colors.grey,),
                  kSizedBoxWidth10,
                  Icon(Icons.thumb_down_alt_outlined,size: 15,color: Colors.grey,),
                ],
              )
            ],
          ),
          kSizedBoxHeight5,
          Text("My name is Michael Nana Adams and I love to code. Subscribe to Mightmike's channel for more contents ",style: kTextStyle8.copyWith(letterSpacing: 1.2),)
        ],
      ),
    );
  }
}

class UserMessageCard extends StatelessWidget {
  const UserMessageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300),),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: kSecondaryColorGreen,
                  image: DecorationImage(
                    image: AssetImage("images/adams.jpeg")
                  )
                ),
              ),
            ],
          ),
          kSizedBoxHeight5,
          Text("My name is Michael Nana Adams and I love to code. Subscribe to Mightmike's channel for more contents ",style: kTextStyle8.copyWith(letterSpacing: 1.2),)
        ],
      ),
    );
  }
}

