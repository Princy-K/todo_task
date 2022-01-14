import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late ChewieController _chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _chewieController = ChewieController(
      aspectRatio: 16/9,
      autoInitialize: true,
      autoPlay: true,
      showOptions: true,
      customControls: Row(
        children: [

        ],
      ),
      videoPlayerController:
      VideoPlayerController.network("https://176vod-adaptive.akamaized.net/exp=1642010083~acl=%2Ff3ced6c3-380d-48de-9746-3c147138586f%2F%2A~hmac=b632cfc6227b54a6416829378b7a20703f0cfd7df56e3359517f6a8e8aee12b3/f3ced6c3-380d-48de-9746-3c147138586f/sep/video/2ca2c161,2d4fdf38,7dc61b91,ee1bcac0/audio/f1482b7c,136fbac7/master.m3u8?query_string_ranges=1"),
    );
  }

  @override
  void dispose() {
    _chewieController.videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height*0.28,
        child: Chewie(
             controller: _chewieController,
        ),
      ),
    );
  }
}
