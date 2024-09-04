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
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/home');
          },
          child: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        actions:[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
            child: Icon(Icons.perm_phone_msg_outlined),
          ),
        ],
      ),

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            Text(
              'WORKOUT DAY', style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 42,
            ),
            ),

            SizedBox(height: 20,),

            Container(
              height: 69,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Colors.black,
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(
                          'lib/images/joker.jpeg'),),
                    Spacer(),

                    Column(
                      children: [
                        Text('JOKER', style: TextStyle(
                          color: Colors.white70,
                          fontSize: 22,
                        ),),

                        Spacer(),
                        Text('Personal Trainer', style: TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                        ),),
                      ],
                    ),

                    Spacer(),
                    Text('12:00 AM', style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20,),

            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text('WORKOUT PROGRAM', style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),),
                    //Spacer(),

                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildWorkoutPlanner(
                            'Warmup',
                            'lib/images/warm-up.jpeg',
                            'Set 1', '2 mins',
                          ),
                          SizedBox(width: 12,),

                          buildWorkoutPlanner(
                            'Deadlift',
                            'lib/images/deadlift.jpeg',
                            'Set 2', '12 Reps',
                          ),
                          SizedBox(width: 12,),

                          buildWorkoutPlanner(
                            'Pull-ups',
                            'lib/images/pull-ups.jpeg',
                            'Set 3', '20 Reps',
                          ),
                          SizedBox(width: 12,),

                          buildWorkoutPlanner(
                            'Squats',
                            'lib/images/She Squats.jpeg',
                            'Set 4', '12 Reps',
                          ),
                          SizedBox(width: 12,),

                          buildWorkoutPlanner(
                            'Cycling',
                            'lib/images/cycling.jpeg',
                            'Set 5', '5 Mins',
                          ),
                          SizedBox(width: 12,),
                        ],
                      ),
                    ),

                    // Spacer(),

                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: MaterialButton(onPressed: (){},
                        child: Text('SIGN UP'),
                        height: 50,
                        color: Colors.orange,
                      ),
                    ),
                    //Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildWorkoutPlanner(String title, String image,
      String set, String reps){
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(title, style: TextStyle(
              color: Colors.white70,
              fontSize: 20,
            ),),
            SizedBox(height: 10,),
            Image.asset(image, height: 90,),
            SizedBox(height: 10,),
            Row(
              children: [
                Column(
                  children: [
                    Text(set, style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    ),),
                    Spacer(),

                    Text(reps, style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    ),),
                  ],
                ),
                CircleAvatar(child: Image.asset('lib/images/up-right.png'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
