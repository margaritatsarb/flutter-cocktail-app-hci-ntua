import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Workout extends StatefulWidget {
  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  late VideoPlayerController _squats; 
  late VideoPlayerController _yoga;
  late VideoPlayerController _controller;
  late VideoPlayerController _jumpingjacks;  
  late VideoPlayerController _crunches;  
    
  // ignore: unused_field
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _squats = VideoPlayerController.asset("assets/my_video_squats.mp4");
    _yoga = VideoPlayerController.asset("assets/my_video_yoga.mp4");
    _controller = VideoPlayerController.asset("assets/my_video_pushups.mp4");
    _jumpingjacks = VideoPlayerController.asset("assets/my_video_jumpingjacks.mp4");
    _crunches = VideoPlayerController.asset("assets/my_video_crunches.mp4");    
   
    

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _squats.initialize();
    _initializeVideoPlayerFuture = _yoga.initialize();
    _initializeVideoPlayerFuture = _controller.initialize();
    _initializeVideoPlayerFuture = _jumpingjacks.initialize();
    _initializeVideoPlayerFuture = _crunches.initialize();    
    
    
   
    // Use the controller to loop the video.
    _squats.setLooping(false);
    _yoga.setLooping(false);
    _controller.setLooping(false);
    _jumpingjacks.setLooping(false);
    _crunches.setLooping(false);
    
  }
 
  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _squats.dispose();
    _yoga.dispose();
    _controller.dispose();
    _crunches.dispose();

    super.dispose();
  }

  // ignore: non_constant_identifier_names
  DialogBox(VideoPlayerController _controller) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Container(
          width: 200,
          height: 200,
          child: VideoPlayer(_controller),
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.play_arrow),
                onPressed: () {
                  // Wrap the play or pause in a call to `setState`. This ensures the
                  // correct icon is shown.
                  setState(() {
                    _controller.play();
                  });
                  
                },
              ),
              IconButton(
                icon: Icon(Icons.pause),
                onPressed: () {
                  // Wrap the play or pause in a call to `setState`. This ensures the
                  // correct icon is shown.
                  setState(() {
                    _controller.pause();
                  });
                },
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _controller.pause();
                  });
                  Navigator.of(context).pop();
                },
                icon: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Close"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'WORKOUT',            
            style: TextStyle(
              fontSize: 21,
              color: Color.fromARGB(255, 97, 66, 181)),
          ),
          elevation: 8.0,
          backgroundColor: Colors.purple[100],
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Colors.deepPurpleAccent,
            icon: Icon(Icons.arrow_back),
          ),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                    width: 100.0,  
                                     
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    
                    onTap: () {
                      DialogBox(_controller);
                    },
                    child: Card(
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                        
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('SQUATS',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text(
                            'No. of sets: 5 Sets \nCaloriesBurn:30 cal \nDuration: 5 mins',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[700],
                            )),
                            
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      DialogBox(_yoga);
                    },
                    child: Card(
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('YOGA',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text(
                            'No. of sets: 5 Sets \nCaloriesBurn:30 cal \nDuration: 5 mins',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[700],
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      DialogBox(_controller);
                    },
                    child: Card(
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('PUSH UPS',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text(
                            'No. of sets: 5 Sets \nCaloriesBurn:30 cal \nDuration: 5 mins',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[700],
                            )),
                      ),
                    ),
                    
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      DialogBox(_jumpingjacks);
                    },
                    child: Card(
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('JUMPING JACKS',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text(
                            'No. of sets: 5 Sets \nCaloriesBurn:30 cal \nDuration: 5 mins',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[700],
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      DialogBox(_crunches);
                    },
                    child: Card(
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('CRUNCHES',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text(
                            'No. of sets: 5 Sets \nCaloriesBurn:30 cal \nDuration: 5 mins',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[700],
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

