part of 'providers.dart';

class PodcastProvider with ChangeNotifier {
  List<Podcast> _dummyPodcast1 = [
    Podcast(
      id: "dp11",
      podcastName: "Rain",
      creatorName: "Name Dummy",
      imagePodcast: AssetImage("assets/images/raining.png"),
    ),
    Podcast(
      id: "dp12",
      podcastName: "Flower",
      creatorName: "Name Dummy",
      imagePodcast: AssetImage("assets/images/flowers.png"),
    ),
    Podcast(
      id: "dp13",
      podcastName: "Sunset",
      creatorName: "Name Dummy",
      imagePodcast: AssetImage("assets/images/sunset.png"),
    ),
  ];

  List<Podcast> _dummyPodcast2 = [
    Podcast(
      id: "dp21",
      podcastName: "Imagining The World",
      creatorName: "William Spears",
      imagePodcast: AssetImage("assets/images/world.png"),
    ),
    Podcast(
      id: "dp22",
      podcastName: "Kacamatamu",
      creatorName: "Surya Cahya",
      imagePodcast: AssetImage("assets/images/glasses.png"),
    ),
    Podcast(
      id: "dp23",
      podcastName: "Ibukota",
      creatorName: "Chicory",
      imagePodcast: AssetImage("assets/images/capital.png"),
    ),
    Podcast(
      id: "dp24",
      podcastName: "Sendiri, bukan Menyendiri",
      creatorName: "Tere Liye",
      imagePodcast: AssetImage("assets/images/alone.png"),
    ),
    Podcast(
      id: "dp25",
      podcastName: "Senja",
      creatorName: "Bintang Pratama",
      imagePodcast: AssetImage("assets/images/sunset_vibes.png"),
    ),
  ];

  List<Podcast> get dummyPodcast1 {
    return [..._dummyPodcast1];
  }

  List<Podcast> get dummyPodcast2 {
    return [..._dummyPodcast2];
  }

  Podcast findById(String id) {
    return _dummyPodcast2.firstWhere((element) => element.id == id);
  }
}
