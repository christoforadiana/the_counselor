part of 'models.dart';

class Community with ChangeNotifier {
  final String id;
  final AssetImage image;
  final String nameCommunity;
  final String textCommunity;
  final int chatUnread;
  final DateTime time;

  Community({
    @required this.id,
    @required this.image,
    @required this.nameCommunity,
    @required this.textCommunity,
    @required this.chatUnread,
    @required this.time,
  });
}

List<Community> dummyCommunity = [
  Community(
    id: "c1",
    image: AssetImage("assets/images/mindful.png"),
    nameCommunity: "Mindful to the Dawn",
    textCommunity: "Anda: Betul, kita harus bisa fokus ke diri kita dulu sih",
    chatUnread: null,
    time: DateTime.now(),
  ),
];
