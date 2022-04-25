import 'package:flutter/material.dart';
import 'package:soundclash2/widgets/input_info.dart';
import 'package:soundclash2/widgets/sound_button.dart';
import 'package:soundclash2/widgets/submit_circle_button.dart';

class PickYoutubeSong extends StatelessWidget {
  static const String id = 'pick_song_screen';

  final _controllerUser = TextEditingController();
  final _controllerUrl = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF3F9),
      appBar: AppBar(
        title: const Text('youTube Selector'),
      ),
      body: Stack(
        children: [
          Container(
            height: 400,
            color: Colors.orange,
          ),
          Center(
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5)
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InputInfo(
                    request: 'enter your url',
                    function: (text) {
                      print(text);
                    },
                    icon: const Icon(Icons.search),
                    controller: _controllerUrl,
                  ),
                  // GetBuilder<PickYoutubeSongController>(
                  //   builder: (PickYoutubeSongController controller) {
                  //     return Column(
                  //       children: controller.youtubeList
                  //           .map(
                  //             (url) => Text(url.url!),
                  //           )
                  //           .toList(),
                  //     );
                  //   },
                  // ),
                  SoundButton(
                    context: context,
                    function: () {},
                    text: 'Add song to list ',
                  ),
                  // this needs to send a username and song
                  SoundButton(
                    context: context,
                    function: () {},
                    text: 'auto generate list',
                  ),
                ],
              ),
            ),
          ),
          SubmitButton(function: () {})
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
