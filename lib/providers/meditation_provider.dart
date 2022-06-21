part of 'providers.dart';

class MeditationProvider with ChangeNotifier {
  List<Meditation> _medItems = [
    Meditation(
      id: "m1",
      assetImage: AssetImage("assets/images/m1.png"),
      title: "Lawan Stress",
      session: "2 Sesi",
      color: Color(0xFFFF5934),
      titleSession1: "Pengenalan",
      subTitleSession1: "Yuk mulai melangkah untuk lawan stress kamu.",
      titleSession2: "Berdamai dengan diri sendiri",
      subTitleSession2:
          "Stress adalah bagian dari diri kita, untuk itu kita harus berdamai dengan diri kita sendiri.",
    ),
    Meditation(
      id: "m2",
      assetImage: AssetImage("assets/images/m2.png"),
      title: "Mengisi Kesepian",
      session: "2 Sesi",
      color: Color(0xFF3464FF),
      titleSession1: "Pengenalan",
      subTitleSession1: "Yuk mulai melangkah agar tidak kesepian.",
      titleSession2: "Berdamai dengan diri sendiri",
      subTitleSession2:
          "Stress adalah bagian dari diri kita, untuk itu kita harus berdamai dengan diri kita sendiri.",
    ),
    Meditation(
      id: "m3",
      assetImage: AssetImage("assets/images/m3.png"),
      title: "Mengatasi Kecemasan",
      session: "2 Sesi",
      color: Color(0xFF219653),
      titleSession1: "Pengenalan",
      subTitleSession1: "Kenalin diri kamu sebelum kamu melawan ketakutanmu.",
      titleSession2: "Berdamai dengan diri sendiri",
      subTitleSession2:
          "Takut adalah bagian dari diri kita, untuk itu kita harus berdamai dengan diri kita sendiri.",
    ),
    Meditation(
      id: "m4",
      assetImage: AssetImage("assets/images/m4.png"),
      title: "Menghadapi Burnout",
      session: "2 Sesi",
      color: Color(0xFFA243C6),
      titleSession1: "Pengenalan",
      subTitleSession1:
          "Kamu sudah lakuin yang terbaik kok, yuk tenang sejenak.",
      titleSession2: "Penenangan hati",
      subTitleSession2:
          "Kegagalan dalam mencapai target pekerjaanmu adalah hal yang biasa, yuk berdamai dengan hati kamu sendiri.",
    ),
  ];

  List<Meditation> get medItems {
    return [..._medItems];
  }

  Meditation findById(String id) {
    return _medItems.firstWhere((element) => element.id == id);
  }
}
