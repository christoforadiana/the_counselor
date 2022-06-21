part of 'providers.dart';

class PaketProvider with ChangeNotifier {
  List<Paket> _paketItems = [
    Paket(
      id: "pk1",
      title: "1 Hari",
      sessionKonseling: 1,
      duration: 75,
      interestTest: "Tes Minat Bakat",
      stressTest: "Tes Tingkat Stress",
      psikoterapi: "",
      price: "100.000",
    ),
    Paket(
      id: "pk2",
      title: "1 Minggu",
      sessionKonseling: 1,
      duration: 75,
      interestTest: "Tes Minat Bakat",
      stressTest: "Tes Tingkat Stress",
      psikoterapi: "Psikoterapi",
      price: "600.000",
    ),
  ];

  List<Paket> get paketItems {
    return [..._paketItems];
  }

  Paket findById(String id) {
    return _paketItems.firstWhere((element) => element.id == id);
  }
}
