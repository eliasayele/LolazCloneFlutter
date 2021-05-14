import 'package:flutter/material.dart';
import 'package:lolazflutter/models/Chat.dart';

class MessageProvider extends ChangeNotifier {
  String userID = 'elias';
  String name = 'Elias Flutter';
  late String selectedConversation;

  String getSelectedConversations() => this.selectedConversation;

  List<Chat> conversations = [
    Chat(
      id: '1',
      name: 'Ariana Grande',
      isOnline: true,
      messages: [
        Message(
          time: new DateTime.now().subtract(Duration(minutes: 50)),
          content: 'Hi Eli This is just to say Hi!',
          senderId: 'arianagrande',
        ),
        Message(
          time: new DateTime.now().subtract(Duration(minutes: 58)),
          content: 'Hi Ariana, What\'s up?',
          senderId: 'elias',
        ),
        Message(
          time: new DateTime.now().subtract(Duration(minutes: 55)),
          content: 'I am good, what is new?',
          senderId: 'arianagrande',
        ),
        Message(
          time: new DateTime.now().subtract(Duration(minutes: 52)),
          content: 'Nothing is new I will call you sometime.',
          senderId: 'elias',
        ),
      ],
    ),
    Chat(
      id: '2',
      name: 'Selena Gomez',
      isOnline: true,
      messages: [
        Message(
          time: new DateTime.now().subtract(Duration(minutes: 50)),
          content: 'Hi Elias This is just to say Hi!',
          senderId: 'arianagrande',
        ),
        Message(
          time: new DateTime.now().subtract(Duration(minutes: 48)),
          content: 'Hi Selena, What\'s up?',
          senderId: 'elias',
        ),
        Message(
          time: new DateTime.now().subtract(Duration(minutes: 45)),
          content: 'I am good, what is new?',
          senderId: 'arianagrande',
        ),
        Message(
          time: new DateTime.now().subtract(Duration(minutes: 40)),
          content: 'Nothing is new I will call you sometime.',
          senderId: 'elias',
        ),
      ],
    ),
    Chat(
      id: '3',
      name: 'Kim Kardashian',
      isOnline: true,
      messages: [
        Message(
          time: new DateTime.now().subtract(Duration(minutes: 43)),
          content: 'Hi Elu This is just to say Hi!',
          senderId: 'arianagrande',
        ),
        Message(
          time: new DateTime.now().subtract(Duration(minutes: 42)),
          content: 'Hi Kim, What\'s up?',
          senderId: 'elias',
        ),
        Message(
          time: new DateTime.now().subtract(Duration(minutes: 40)),
          content: 'I am good, what is new?',
          senderId: 'arianagrande',
        ),
        Message(
          time: new DateTime.now().subtract(Duration(minutes: 38)),
          content: 'Nothing is new I will call you sometime.',
          senderId: 'elias',
        ),
      ],
    ),
    Chat(
      id: '4',
      name: 'Miley Cyrus',
      isOnline: true,
      messages: [
        Message(
          time: new DateTime.now().subtract(Duration(minutes: 36)),
          content: 'Hi Elias This is just to say Hi!',
          senderId: 'arianagrande',
        ),
        Message(
          time: new DateTime.now().subtract(Duration(minutes: 36)),
          content: 'Hi Miley, What\'s up?',
          senderId: 'elias',
        ),
        Message(
          time: new DateTime.now().subtract(Duration(minutes: 32)),
          content: 'I am good, what is new?',
          senderId: 'arianagrande',
        ),
        Message(
          time: new DateTime.now().subtract(Duration(minutes: 55)),
          content: 'Nothing is new I will call you sometime.',
          senderId: 'elias',
        ),
      ],
    ),
    Chat(
      id: '5',
      name: 'Michael Jackson',
      isOnline: true,
      messages: [
        Message(
          time: new DateTime.now(),
          content: 'Hi Elisho This is just to say Hi!',
          senderId: 'arianagrande',
        ),
        Message(
          time: new DateTime.now(),
          content: 'Hi Michael, What\'s up?',
          senderId: 'elias',
        ),
        Message(
          time: new DateTime.now(),
          content: 'I am good, what is new?',
          senderId: 'arianagrande',
        ),
        Message(
          time: new DateTime.now(),
          content: 'Nothing is new I will call you sometime.',
          senderId: 'elias',
        ),
      ],
    ),
    Chat(
      id: '6',
      name: 'Tom Cruise',
      isOnline: true,
      messages: [
        Message(
          time: new DateTime.now(),
          content: 'Hi Elias This is just to say Hi!',
          senderId: 'arianagrande',
        ),
        Message(
          time: new DateTime.now(),
          content: 'Hi Tom, What\'s up?',
          senderId: 'elias',
        ),
        Message(
          time: new DateTime.now(),
          content: 'I am good, what is new?',
          senderId: 'arianagrande',
        ),
        Message(
          time: new DateTime.now(),
          content: 'Nothing is new I will call you sometime.',
          senderId: 'elias',
        ),
      ],
    ),
    Chat(
      id: '7',
      name: 'Taylor Swift',
      isOnline: true,
      messages: [
        Message(
          time: new DateTime.now(),
          content: 'Hi Elias This is just to say Hi!',
          senderId: 'arianagrande',
        ),
        Message(
          time: new DateTime.now(),
          content: 'Hi Taylor, What\'s up?',
          senderId: 'elias',
        ),
        Message(
          time: new DateTime.now(),
          content: 'I am good, what is new?',
          senderId: 'arianagrande',
        ),
        Message(
          time: new DateTime.now(),
          content: 'Nothing is new I will call you sometime.',
          senderId: 'gearmias',
        ),
      ],
    ),
    Chat(
      id: '8',
      name: 'Beyonce',
      isOnline: true,
      messages: [
        Message(
          time: new DateTime.now(),
          content: 'Hi Elias This is just to say Hi!',
          senderId: 'arianagrande',
        ),
        Message(
          time: new DateTime.now(),
          content: 'Hi B, What\'s up?',
          senderId: 'elias',
        ),
        Message(
          time: new DateTime.now(),
          content: 'I am good, what is new?',
          senderId: 'arianagrande',
        ),
        Message(
          time: new DateTime.now(),
          content: 'Nothing is new I will call you sometime.',
          senderId: 'gearmias',
        ),
      ],
    ),
  ];
  setSelectedConversation(String conversationId) {
    this.selectedConversation = conversationId;
    notifyListeners();
  }

  sendMessage(String senderID, conversationID, content) {
    Message newMessage =
        Message(time: new DateTime.now(), content: content, senderId: senderID);
    List<Chat> updatedConversation = conversations.map((conversation) {
      if (conversation.id == conversationID) {
        conversation.messages = [...conversation.messages, newMessage];
        return conversation;
      } else {
        return conversation;
      }
    }).toList();
    this.conversations = updatedConversation;
    notifyListeners();
  }
}
