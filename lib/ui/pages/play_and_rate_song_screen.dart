import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundclash2/modals/pick_youtube_arguments.dart';
import 'package:soundclash2/ui/pages/leaderboard_screen.dart';
import 'package:soundclash2/ui/widgets/sound_button.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../bloc/rate_song_bloc/rate_song_cubit.dart';
import '../../bloc/rate_song_bloc/rate_song_state.dart';
import '../../modals/game_modal.dart';
import '../../modals/player.dart';

class PlayAndRateSongScreen extends StatefulWidget {
  static const String id = 'rate_song_screen';
  final PickYoutubeArguments arguments;

  /// to do list

  const PlayAndRateSongScreen({Key? key, required this.arguments})
      : super(key: key);
  @override
  State<PlayAndRateSongScreen> createState() => _PlayAndRateSongScreenState();
}

class _PlayAndRateSongScreenState extends State<PlayAndRateSongScreen> {
  final List<int> rateButtonValues = [
    1,
    2,
    3,
    4,
    5,
  ];
  int? selectedRating;
  String? currentVideoTitle;
  int songInList = 0;
  int score = 1;
  List<Player> currentPlayer = [];
  List<String> songIdList = [];
  late YoutubePlayerController _youtubePlayerController;
  bool _isControllerInitialized = false;
  String nameOfPlayer = '';
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _youtubePlayerController.dispose();
    super.dispose();
  }

  void _initializeYoutubePlayer(String initialVideoId) {
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: initialVideoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    _youtubePlayerController.addListener(() {
      if (_youtubePlayerController.metadata.title != null) {
        currentVideoTitle = _youtubePlayerController.metadata.title;
        setState(() {}); // Trigger rebuild to display the title
      }
    });

    setState(() {}); // Trigger a rebuild to display the player
  }

  void _loadSongList(Game? game) {
    if (songIdList.isEmpty) {
      for (final player in game!.players) {
        songIdList.add(player.song);
        currentPlayer.add(player);
      }
    }
    try {
      if (songIdList.isNotEmpty
          //    && _isControllerInitialized
          ) {
        /// omar need to fix this cant initalise every time

        _initializeYoutubePlayer(songIdList[songInList]);
        _isControllerInitialized = true;
      } else if (_isControllerInitialized) {
        _youtubePlayerController.load(songIdList[songInList]);
      }
    } catch (e, stack) {
      print("error $e");
    }
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
      setState(() {});
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
                backgroundColor: rating == selectedRating ? Colors.green : null,
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
                BlocBuilder<RateSongCubit, RateSongState>(
                  builder: (context, state) {
                    if (state is RateSongInitialState) {
                      // Trigger loading the players as soon as the widget is built and the state is initial.
                      // This is equivalent to the 'initial' case in your BlocBuilder.
                      context
                          .read<RateSongCubit>()
                          .getPlayers(widget.arguments.game.objectId);

                      return const CircularProgressIndicator();
                    } else if (state is RateSongLoadedGameState) {
                      _loadSongList(state.game);
                      currentVideoTitle =
                          _youtubePlayerController.metadata.title ?? "";
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Text(
                              ' Please rate ${currentPlayer[songInList].user} song ',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "$currentVideoTitle",
                            ),
                          ),
                          _buildYoutubePlayerSection(), // Build your YouTube player section
                          buildRatingButtons(), // Build your rating buttons
                        ],
                      );
                    }
                    return const SizedBox.shrink();
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
                    if (selectedRating != null) {
                      playNextVideo();
                      //   final String song = songIdList[songInList];
                      context.read<RateSongCubit>().rateSong(
                            objectId: widget.arguments.game.objectId,
                            userName: widget.arguments.userName,
                            rating: selectedRating!,
                            songId: songIdList[songInList],
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
