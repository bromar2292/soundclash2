import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundclash2/modals/pick_youtube_arguments.dart';
import 'package:soundclash2/bloc/rate_song_bloc/rate_song_bloc.dart';
import 'package:soundclash2/ui/pages/leaderboard_screen.dart';
import 'package:soundclash2/ui/widgets/sound_button.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../modals/game_modal.dart';

class RateSongScreen extends StatefulWidget {
  static const String id = 'rate_song_screen';
  final PickYoutubeArguments arguments;

/// to do list
  /// we dont want the next video to play we want play controls,
  /// we want the song names up
  /// we want the info page,
  /// we want the leaderboard to work

  const RateSongScreen({Key? key, required this.arguments}) : super(key: key);
  @override
  State<RateSongScreen> createState() => _RateSongScreenState();
}

class _RateSongScreenState extends State<RateSongScreen> {
  final List<int> rateButtonValues = [
    1,
    2,
    3,
    4,
    5,
  ];
  int? selectedRating;

  int songInList = 0;
  int score =1;
  List<String> songIdList = [];
  late YoutubePlayerController _youtubePlayerController;

  @override
  void initState() {
    super.initState();
    const String initialVideo =
        ""; // default video or first video from your list
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: initialVideo,
    );
  }

  @override
  void dispose() {
    _youtubePlayerController.dispose();
    super.dispose();
  }


  void _loadSongList(Game? game) {
    if (songIdList.isEmpty) {
      for (final player in game!.players) {
        songIdList.add(player.song);
      }
    }
    _youtubePlayerController.load(songIdList[songInList]);
  }

  Widget _buildYoutubePlayerSection() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 200,
        width: 200,
        child: YoutubePlayer(
          controller: _youtubePlayerController,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.blue,
        ),
      ),
    );
  }
  void playNextVideo() {
    if (songInList != songIdList.length - 1) {
      songInList = songInList + 1;
      _youtubePlayerController.load(songIdList[songInList]);
    }
  }

  Widget buildRatingButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: rateButtonValues
          .map(
            (rating) => ElevatedButton(
          onPressed: () {
            setState(() {
              selectedRating = rating;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
            rating == selectedRating ? Colors.green : null,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
          ),
          child: Text('$rating'),
        ),
      )
          .toList(),
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
                        _loadSongList(game);
                        return Column(
                          children: [
                            _buildYoutubePlayerSection(),
                            buildRatingButtons(),
                          ],
                        );
                      },
                      songRated: (game, song) {
                        _loadSongList(game);
                        return Column(
                          children: [
                            _buildYoutubePlayerSection(),
                            buildRatingButtons(),
                          ],
                        );
                      },
                    );
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(30.0),
                  child: SizedBox(height: 10),
                ),
                SoundButton(
                  context: context,
                  text: 'submit rating',
                  function: () async {
                    playNextVideo();
                    final String song = songIdList[songInList];
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