
class Message{
  final String text;
  final String? imagePath;
  final bool isSender;

  const Message({required this.text, this.imagePath, this.isSender = false});

  static const List<Message> messages = [
    Message(text:"Hello"),
    Message(text:"Hello!" , isSender: true),
    Message(text:"Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!"),
    Message(text:"what a Great Content Tp learn Flutter" , imagePath:"assets/images/Message.png"),
    Message(text:"what a Great Content Tp learn Flutter!" , isSender: true),
  ];


}