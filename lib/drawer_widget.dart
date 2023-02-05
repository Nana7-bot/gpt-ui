import 'package:flutter/material.dart';

import 'constants.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ////////////////
            ///// New chat button
            //////////////////////////
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade100, width: 0.3),
                borderRadius: BorderRadius.circular(4),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.white,
                ),
                title: Text(
                  "New chat",
                  style: kTextStyle9.copyWith(color: Colors.white60),
                ),
              ),
            ),

            ////////////////
            ///// Conversations List
            //////////////////////////
            Expanded(child:
              ListView(
                children: [
                  ConversationCard(labelString: "Social Media app names",),
                  ConversationCard(labelString: "Social Media app names",),
                  ConversationCard(labelString: "Social Media app names",),
                  ConversationCard(labelString: "Social Media app names",),
                  ConversationCard(labelString: "Social Media app names",),
                  ConversationCard(labelString: "Social Media app names Social Media app names Social Media app names",),

                  ConversationCard(labelString: "Social Media app names",),
                  ConversationCard(labelString: "Social Media app names",),
                  ConversationCard(labelString: "Social Media app names Social Media app names Social Media app names",),
                ],
              ),),

            ////////////////
            ///// Divider
            //////////////////////////
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: const Divider(
                thickness: .3,
                color: Colors.white60,
              ),
            ),

            ////////////////
            ///// More options
            //////////////////////////
            Column(
              children: [
                MoreOption(
                  labelString: "Clear conversations",
                  labelIcon: Icons.delete_outline,
                ),
                MoreOption(
                  labelString: "Dark mode",
                  labelIcon: Icons.dark_mode_outlined,
                ),
                MoreOption(
                  labelString: "OpenAI Discord",
                  labelIcon: Icons.discord,
                ),
                MoreOption(
                  labelString: "Updates & FAQ",
                  labelIcon: Icons.update,
                ),
                MoreOption(
                  labelString: "Log out",
                  labelIcon: Icons.logout,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ConversationCard extends StatelessWidget {
  const ConversationCard({
    super.key,
    required this.labelString,
  });

  final String labelString;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.messenger_outline, size: 20, color: Colors.white),
      title: Text(
        labelString,
        overflow: TextOverflow.ellipsis,
        style: kTextStyle8.copyWith(color: Colors.white),
      ),
    );
  }
}


class MoreOption extends StatelessWidget {
  const MoreOption({
    super.key,
    required this.labelString,
    required this.labelIcon,
  });

  final String labelString;
  final IconData labelIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(labelIcon, size: 20, color: Colors.white),
      title: Text(
        labelString,
        style: kTextStyle8.copyWith(color: Colors.white),
      ),
    );
  }
}
