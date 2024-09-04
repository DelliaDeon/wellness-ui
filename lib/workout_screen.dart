import 'package:flutter/material.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.orangeAccent,
                          child: Icon(Icons.arrow_back_ios_new_outlined)),
                    ),
                  ),
                  Spacer(),
        
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                    child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.orangeAccent,
                        child: Icon(Icons.perm_phone_msg_outlined)),
                  ),
                ],
              ),
              SizedBox(height: 18,),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'WORKOUT DAY',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 45,
                  ),
                ),
              ),
              SizedBox(height: 25,),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black,
                  ),
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('lib/images/joker.jpeg'),
                        ),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(),
                            Text('JOKER', style: TextStyle(
                              color: Colors.white70,
                              fontSize: 22,
                            ),),
                            Text('Personal Trainer', style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),),
                            Spacer(),
                          ],
                        ),
                        Spacer(),
                        Text('12:00 AM', style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),

              Container(
                height: MediaQuery.of(context).size.height * 0.58, // Adjusted height for the ListView
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text('WORKOUT PROGRAM', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),),
                      SizedBox(height: 16,),
                      Expanded( // Ensure ListView takes remaining space
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildWorkoutPlanner('Deadlift', 'lib/images/warm-up.jpeg', 'Set 1', '12 Reps'),
                            SizedBox(width: 12,),
                            buildWorkoutPlanner('Pull-ups', 'lib/images/pull-ups.jpeg', 'Set 2', '20 Reps'),
                            SizedBox(width: 12,),
                            buildWorkoutPlanner('Squats', 'lib/images/She Squats.jpeg', 'Set 3', '12 Reps'),
                            SizedBox(width: 12,),
                            buildWorkoutPlanner('Cycling', 'lib/images/cycling.jpeg', 'Set 4', '5 Mins'),
                            SizedBox(width: 12,),
                          ],
                        ),
                      ),
                      SizedBox(height: 16,),

                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                          alignment: Alignment.center,
                          child: Text('SIGN UP', style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),),
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(30),
                          ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildWorkoutPlanner(String title, String image, String set, String reps){
    return Container(
      height: 200,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Text(title, style: TextStyle(
              color: Colors.white70,
              fontSize: 21,
              fontWeight: FontWeight.w400,
            ),),
            Spacer(),

            Container(
              height: 150,
              width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Spacer(),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(set, style: TextStyle(
                      color: Colors.white70,
                      fontSize: 19,
                    ),),
                    SizedBox(height: 5,),
                    Text(reps, style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    ),),
                  ],
                ),
                Spacer(),
                CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white70,
                    child: Image.asset('lib/images/up-right.png'))
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
