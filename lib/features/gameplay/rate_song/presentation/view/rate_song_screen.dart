import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../../dummy_data/firebase_dummy/database.dart';

import '../../../../../widgets/sound_button.dart';
import '../../../models/player.dart';

class RateSongScreen extends StatefulWidget {
  static const String id = 'rate_song_screen';
  final List<Player> youtubelist = [];
  RateSongScreen(String objectId, {Key? key}) : super(key: key);
  @override
  State<RateSongScreen> createState() => _RateSongScreenState();
}

class _RateSongScreenState extends State<RateSongScreen> {
  final List<int> rateButton = [
    1,
    2,
    3,
    4,
    5,
  ];

  int songInList = 0;
  int score = 1;

  List<Player> youtubeList = DataBaseDummy().youtubeList;
  late YoutubePlayerController youtubePlayerController;
  changeScore(int song, int value) {
    //youtubeList[song].score = value;
    score = value;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: youtubeList[0].song,
      flags: const YoutubePlayerFlags(autoPlay: true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RATE SONG'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // int songInList = controller.songInList;

            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Text(
                    ' Please rate song ',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: YoutubePlayer(
                      controller: youtubePlayerController,
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.blue,
                      // onReady: _youtubePlayerController.reload(),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: rateButton
                      .map(
                        (rating) => ElevatedButton(
                          onPressed: () {
                            changeScore(songInList, rating);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: const EdgeInsets.all(20),
                            // <-- Splash color
                          ),
                          child: Text('$rating'),
                        ),
                      )
                      .toList(),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'you have given the score $score ',
                  ),
                ),
                SoundButton(
                  context: context,
                  text: 'submit rating',
                  function: () {
                    //controller.updateSongInList(context);

                    //  controller.update();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
