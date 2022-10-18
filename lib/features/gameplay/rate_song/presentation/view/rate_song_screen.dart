import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:soundclash2/features/gameplay/rate_song/presentation/bloc/bloc/rate_song_bloc.dart';
import 'package:soundclash2/features/leaderboard/presentation/views/leaderboard_screen.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../../dummy_data/firebase_dummy/database.dart';

import '../../../../../widgets/sound_button.dart';
import '../../../../manage_games/uscases/get_game_list_usecase.dart';
import '../../../models/game.dart';
import '../../../models/player.dart';
import '../../../pick_youtube_song/domain/models/pick_youtube_arguments.dart';

class RateSongScreen extends StatefulWidget {
  static const String id = 'rate_song_screen';
  final PickYoutubeArguments arguments;

  RateSongScreen({Key? key, required this.arguments}) : super(key: key);
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

  @override
  void initState() {
    super.initState();
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
                    return state.when(initial: () {
                      context.read<RateSongBloc>().add(
                          RateSongBlocEvent.getPlayers(
                              objectId: widget.arguments.game.objectId));
                      return const CircularProgressIndicator();
                    }, playersLoaded: (game) {
                      late YoutubePlayerController _youtubePlayerController;
                      if (songIdList.isEmpty) {
                        game!.players.forEach((element) {
                          songIdList.add(element.song);
                        });
                      }
                      _youtubePlayerController = YoutubePlayerController(
                        initialVideoId: songIdList[songInList],
                        flags: const YoutubePlayerFlags(autoPlay: true),
                      );

                      return songInList > songIdList.length
                          ? Text('Game Over')
                          : Column(
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
                                            setState(() {});
                                          },
                                          style: ElevatedButton.styleFrom(
                                            shape: CircleBorder(),
                                            padding: const EdgeInsets.all(20),
                                          ),
                                          child: Text('$rating'),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ],
                            );
                    });
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
                    context.read<RateSongBloc>().add(
                          RateSongBlocEvent.rateSong(
                            objectId: widget.arguments.game.objectId,
                            userName: widget.arguments.userName,
                            rating: score,
                            songId: songIdList[songInList],
                          ),
                        );
                    print('${songIdList.length} length of song id');
                    print(songIdList);
                    if (songInList != songIdList.length) {
                      songInList = songInList + 1;
                    }
                    if (songInList == songIdList.length) {
                      Navigator.pushNamed(context, LeaderBoardScreen.id);
                    }
                    print(songInList);
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
