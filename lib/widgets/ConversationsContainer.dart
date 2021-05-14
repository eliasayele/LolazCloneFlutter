import 'package:flutter/material.dart';
import 'package:lolazflutter/providers/messageProvider.dart';
import 'package:lolazflutter/widgets/MessageDetail.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart' as timeago;

class ConversationsContainer extends StatelessWidget {
  //final DateFormat dateFormat = DateFormat("HH:mm a");
  @override
  Widget build(BuildContext context) {
    return Consumer<MessageProvider>(
      builder: (context, state, child) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.5), width: 1),
                  ),
                  child: Text(
                    'Messages',
                    style: TextStyle(
                        letterSpacing: 1.2,
                        fontFamily: 'Lato',
                        fontSize: 30,
                        color: Colors.grey[800]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: state.conversations.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          splashColor: Colors.grey.withOpacity(0.2),
                          onTap: () {
                            Provider.of<MessageProvider>(context, listen: false)
                                .setSelectedConversation(
                                    (index + 1).toString());

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ChangeNotifierProvider(
                                          create: (_) => MessageProvider(),
                                          child: MessageDetail(
                                            conversation:
                                                state.conversations[index],
                                            selectedConversation:
                                                state.selectedConversation,
                                            userID: state.userID,
                                          ),
                                        )));
                            // print(.id);
                          },
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: NetworkImage(
                                      "data:image/jpeg;base64,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"),
                                ),
                                title: Text(
                                  '${state.conversations[index].name}',
                                  style: TextStyle(
                                    // fontFamily: 'Lato',
                                    letterSpacing: 1.1,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  '${state.conversations[index].messages[state.conversations[index].messages.length - 1].content}',
                                ),
                                //   DateTime durationDate = DateTime.fromMillisecondsSinceEpoch(0);
                                // String duration = DateFormat('hh:mm:ss').format(durationDate);
                                trailing: Text(
                                  '${timeago.format(state.conversations[index].messages[state.conversations[index].messages.length - 1].time)}',
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
