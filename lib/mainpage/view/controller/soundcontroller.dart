import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

import '../../../const.dart';

class SoundController extends GetxController{

bool stateplay = false;
  playaudio() async {
    await player.pause();

    await player.setAudioSource(
      ConcatenatingAudioSource(
        // Start loading next item just before reaching it.
        useLazyPreparation: true, // default
        // Customise the shuffle algorithm.
        shuffleOrder: DefaultShuffleOrder(), // default
        // Specify the items in the playlist.
        children: [
          // AudioSource.uri(Uri.parse("${name}/${number}.mp3")),
        ],
      ),

      // Playback will be prepared to start from track1.mp3
      initialIndex: 0, // default
      // Playback will be prepared to start from position zero.
      initialPosition: Duration.zero, // default
    );
    await player.setAsset('audio/Interstellar.mp3');

    await player.setLoopMode(LoopMode.all);

    player.play();
    stateplay=true;
    update();
  }
  stopaduio() async {
    await player.setAudioSource(

      ConcatenatingAudioSource(
        // Start loading next item just before reaching it.
        useLazyPreparation: true, // default
        // Customise the shuffle algorithm.
        shuffleOrder: DefaultShuffleOrder(), // default
        // Specify the items in the playlist.
        children: [


        ],
      ),
      // Playback will be prepared to start from track1.mp3
      initialIndex: 0, // default
      // Playback will be prepared to start from position zero.
      initialPosition: Duration.zero, // default
    );
    await player.setAsset('audio/Interstellar.mp3');

    await player.stop();
    stateplay=false;
    update();
  }







}