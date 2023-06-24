import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundclash2/features/gameplay/pick_youtube_song/domain/models/pick_youtube_arguments.dart';
import 'package:soundclash2/features/gameplay/rate_song/presentation/bloc/bloc/rate_song_bloc.dart';
import 'package:soundclash2/features/leaderboard/presentation/views/leaderboard_screen.dart';
import 'package:soundclash2/widgets/sound_button.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RateSongScreen extends StatefulWidget {
  static const String id = 'rate_song_screen';
  final PickYoutubeArguments arguments;

  /// to do:
  ///

  const RateSongScreen({Key? key, required this.arguments}) : super(key: key);
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
  List<String> songIdList = [];
  late YoutubePlayerController _youtubePlayerController;

  @override
  void initState() {
    super.initState();
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: '',
    );
  }

  @override
  void dispose() {
    _youtubePlayerController.dispose();
    super.dispose();
  }

  void playNextVideo() {
    if (songInList != songIdList.length - 1) {
      songInList = songInList + 1;
      _youtubePlayerController.load(songIdList[songInList]);
    }
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
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Text(
                    ' Please rate song ',
                  ),
                ),
                BlocBuilder<RateSongBloc, RateSongBlocState>(
                  builder: (context, state) {
                    String song = '';
                    return state.when(
                      initial: () {
                        context.read<RateSongBloc>().add(
                              RateSongBlocEvent.getPlayers(
                                objectId: widget.arguments.game.objectId,
                              ),
                            );
                        return const CircularProgressIndicator();
                      },
                      playersLoaded: (game, song) {
                        if (songIdList.isEmpty) {
                          for (final element in game!.players) {
                            songIdList.add(element.song);
                          }
                        }
                        song = songIdList[songInList];

                        _youtubePlayerController = YoutubePlayerController(
                          initialVideoId: song,
                        );
                        _youtubePlayerController.load(song);
                        print('omar' + song);
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SizedBox(
                                height: 200,
                                width: 200,
                                child: YoutubePlayer(
                                  controller: _youtubePlayerController,
                                  showVideoProgressIndicator: true,
                                  progressIndicatorColor: Colors.blue,
                                  // onReady: youtubePlayerController.load( game.players[songInList].song,endAt:1,startAt: 1),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: rateButton
                                  .map(
                                    (rating) => ElevatedButton(
                                      onPressed: () {
                                        score = rating;

                                        print(song);
                                        print(songIdList[songInList]);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder(),
                                        padding: const EdgeInsets.all(20),
                                      ),
                                      child: Text('$rating'),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ],
                        );
                      },
                      songRated: (game, song) {
                        if (songIdList.isEmpty) {
                          for (final element in game!.players) {
                            songIdList.add(element.song);
                          }
                        }
                        song = songIdList[songInList];

                        // _youtubePlayerController = YoutubePlayerController(
                        //   initialVideoId: song,
                        // );
                        _youtubePlayerController.load(song);
                        print('omar' + song);
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SizedBox(
                                height: 200,
                                width: 200,
                                child: YoutubePlayer(
                                  controller: _youtubePlayerController,
                                  showVideoProgressIndicator: true,
                                  progressIndicatorColor: Colors.blue,
                                  // onReady: youtubePlayerController.load( game.players[songInList].song,endAt:1,startAt: 1),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: rateButton
                                  .map(
                                    (rating) => ElevatedButton(
                                      onPressed: () {
                                        score = rating;

                                        print(song);
                                        print(songIdList[songInList]);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder(),
                                        padding: const EdgeInsets.all(20),
                                      ),
                                      child: Text('$rating'),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ],
                        );
                      },
                    );
                  },
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
                  function: () async {
                    // print(score);

                    print('${songIdList.length} length of song id list');
                    print(songIdList);
                    playNextVideo();
                    String song = songIdList[songInList];
                    print(song);
                    print(songInList);

                    context.read<RateSongBloc>().add(
                          RateSongBlocEvent.rateSong(
                            objectId: widget.arguments.game.objectId,
                            userName: widget.arguments.userName,
                            rating: score,
                            songId: songIdList[songInList],
                          ),
                        );

                    if (songInList == songIdList.length - 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Leaderboard(
                            arguments: widget.arguments,
                          ),
                        ),
                      );
                    }

                    //controller.updateSongInList(context);
// check to see if there has been a vote
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
