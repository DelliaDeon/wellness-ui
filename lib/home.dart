import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Text(
              'FitConnect',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('lib/images/water.jpeg'),),
          )
        ],
      ),

      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10,),

              // first child
              Row(
                children: [
                  Text(
                      'GYM GENIUS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w300,
                    ),
                  ),

                  Spacer(),
                  CircleAvatar(
                    child: Image.asset(
                        'lib/images/increase.png'
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20,),

              // second child
              Container(
                height: MediaQuery.of(context).size.height * 0.41,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      //SizedBox(height: 5,),
                      Row(
                        children: [
                          buildFeatureContainer(context,
                              Icons.local_fire_department_outlined,
                              '483', 'KCAL BURN'),
                          Spacer(),
                          buildFeatureContainer(context,
                              Icons.monitor_weight_outlined,
                              '85 KG', 'WEIGHT'),
                          Spacer(),
                          buildFeatureContainer(context,
                              Icons.access_time_rounded,
                              '3 H', 'GYM TIME'),
                        ],
                      ),

                      SizedBox(height: 20,),

                      Row(
                        children: [
                          Text('CALORIES', style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                          ),),
                          Spacer(),
                          Column(
                            children: [
                              Text('WEEKLY AVERAGE', style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text('2.741 KCAL', style: TextStyle(
                                color: Colors.black87,
                                fontSize: 23,
                                fontWeight: FontWeight.w400,
                              ),),
                            ],
                          ),
                        ],
                      ),

                      Spacer(),
                      Row(
                        children: [
                          buildBarGraph(context,
                              50.0, Colors.black54, 'SUN'
                          ),
                          Spacer(),

                          buildBarGraph(context,
                              60.0, Colors.black54, 'MON'
                          ),
                          Spacer(),

                          buildBarGraph(context,
                              55.0, Colors.black54, 'TUE'
                          ),
                          Spacer(),

                          buildBarGraph(context,
                              70.0, Colors.black54, 'WED'
                          ),
                          Spacer(),

                          buildBarGraph(context,
                              90.0, Colors.orange, 'THU'
                          ),
                          Spacer(),

                          buildBarGraph(context,
                              70.0, Colors.black54, 'FRI'
                          ),
                          Spacer(),

                          buildBarGraph(context,
                              50.0, Colors.black54, 'SAT'
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 25,),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/workout');
                },
                child: buildCustomButton(context,
                  Colors.white24,
                  Colors.white60,
                  'lib/images/dumbbell.png',
                  'Workout Day',
                  '23-08-04',
                ),
              ),

              Spacer(),
              buildCustomButton(context,
                Colors.orange,
                Colors.black87,
                'lib/images/heartbeat.png',
                'Cardio Day',
                '23-08-06',
              ),

              Spacer(),
              buildCustomButton(context,
                Colors.white,
                Colors.black54,
                'lib/images/running-man.png',
                'Stretching',
                '23-08-08',
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFeatureContainer(
      BuildContext context,
      IconData icon,
      String num,
      String name
      ){
    return Container(
      height: 110,
      width: MediaQuery.of(context).size. width * 0.27,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.black54,
      ),
      child: Column(
        children: [
          Spacer(),
          Icon(icon, color: Colors.orange, size: 27,),
          SizedBox(height: 2,),
          Text(num, style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.w400,
            fontSize: 25,
          ),),
          Text(name, style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w900,
            //fontSize: 10,
          ),),
          Spacer(),
        ],
      ),
    );
  }

  Widget buildBarGraph(BuildContext context,
      double inputHeight,
      Color inputColor,
      String inputText
      ){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          alignment: AlignmentDirectional.bottomEnd,
          height: inputHeight,
          width: MediaQuery.of(context).size.width * 0.075,
          decoration: BoxDecoration(
            color: inputColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),

        SizedBox(height: 5,),
        Container(
          height: 15,
          child: Text(inputText, style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ],
    );
  }

  Widget buildCustomButton(BuildContext context,
      Color mainColor, Color textColor,
      String image, String name, String date){
    return Container(
      height: 69,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: mainColor,
      ),
      width: MediaQuery.of(context).size.width * 0.9,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            CircleAvatar(
              child: Image.asset(
                  image, height: 30,),),
            Spacer(),
            Text(name, style: TextStyle(
              color: textColor,
              fontSize: 22,
            ),),
            Spacer(),
            Text(date, style: TextStyle(
              color: textColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
      ),
    );
  }
}
