part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // MORNING
  final morningStartTime = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
    5,
    1,
  );
  final morningEndTime = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
    11,
    0,
  );

  // AFTERNOON
  final afternoonStartTime = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
    11,
    1,
  );
  final afternoonEndTime = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
    14,
    0,
  );

  // EVENING
  final eveningStartTime = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
    14,
    1,
  );
  final eveningEndTime = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
    18,
    0,
  );

  final currentTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final meditationData = Provider.of<MeditationProvider>(
      context,
      listen: false,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(
            defaultMargin,
            12,
            defaultMargin,
            70,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset(
                        "assets/images/user.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      (currentTime.isAfter(morningStartTime) &&
                              currentTime.isBefore(morningEndTime))
                          ? "Selamat pagi,\nApa kabar? Mau ngapain hari ini?"
                          : (currentTime.isAfter(afternoonStartTime) &&
                                  currentTime.isBefore(afternoonEndTime))
                              ? "Selamat siang,\nYuk semangat jalanin aktivitasnya!"
                              : (currentTime.isAfter(eveningStartTime) &&
                                      currentTime.isBefore(eveningEndTime))
                                  ? "Selamat sore,\nBagaimana harimu?"
                                  : "Selamat malam,\nJangan lupa istirahat ya...",
                      style: blackTextFont.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                BannerPodcast(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Rekomendasi Meditasi",
                  style: blackTextFont.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    itemCount: meditationData.medItems.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) => Container(
                      child: MeditationCard(
                        meditationData.medItems[index].id,
                        meditationData.medItems[index].title,
                        meditationData.medItems[index].session,
                        meditationData.medItems[index].assetImage,
                        () {
                          Navigator.of(context).pushNamed(
                              MeditationPage.routeName,
                              arguments: meditationData.medItems[index].id);
                        },
                      ),
                    ),
                  ),
                ),
                // DISINI CHART
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Mood Tracker Summary",
                  style: blackTextFont.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                // chartWidget,
                Container(
                  width: double.infinity,
                  height: 200,
                  // margin: EdgeInsets.symmetric(
                  //   horizontal: defaultMargin,
                  // ),
                  child: Image.asset(
                    "assets/images/mood_tracker.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
