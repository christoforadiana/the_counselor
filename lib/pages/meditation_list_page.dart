part of 'pages.dart';

class MeditationListPage extends StatelessWidget {
  static const routeName = '/meditation-list';

  @override
  Widget build(BuildContext context) {
    final meditationData = Provider.of<MeditationProvider>(
      context,
      listen: false,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Meditasi"),
        backgroundColor: accentColor1,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(
              defaultMargin,
              20,
              defaultMargin,
              30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    gradient: LinearGradient(
                      colors: [
                        mainColor,
                        accentColor1,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 24,
                        width: 24,
                        margin: EdgeInsets.only(
                          left: 12,
                          right: 6,
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Meditasi Favorit",
                        style: whiteTextFont.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.12,
                  decoration: BoxDecoration(
                    color: accentColor2,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(
                    Icons.watch_later,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              bottom: 20,
            ),
            child: Text(
              "Berdamai dengan diri",
              style: blackTextFont.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 200,
                  width: 160,
                  child: MeditationCard(
                    "bd1",
                    "Mengisi Kesepian",
                    "1 Sesi",
                    AssetImage("assets/images/meditation2.png"),
                    () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              bottom: 20,
            ),
            child: Text(
              "Menjadi Produktif",
              style: blackTextFont.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              itemCount: meditationData.medItems.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) => Container(
                margin: EdgeInsets.only(
                    left: (index == 0) ? defaultMargin : 0,
                    right: (index == meditationData.medItems.length - 1)
                        ? defaultMargin
                        : 16),
                child: MeditationCard(
                  meditationData.medItems[index].id,
                  meditationData.medItems[index].title,
                  meditationData.medItems[index].session,
                  meditationData.medItems[index].assetImage,
                  () {
                    Navigator.of(context).pushNamed(MeditationPage.routeName,
                        arguments: meditationData.medItems[index].id);
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
