import 'package:flutter/material.dart';
// import 'package:imagebutton/imagebutton.dart';

class HomeStudentScreen extends StatefulWidget {
  @override
  _HomeStudentScreenState createState() => _HomeStudentScreenState();

  final Widget someChild;
  final bool isVisible;
  HomeStudentScreen({this.someChild, this.isVisible});

  void _showList() {}

  void _onImageTapped() {}
}

class _HomeStudentScreenState extends State<HomeStudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Container(
            width: 300,
            height: 220,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/agriculture.jpg'),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  bottom: 0,
                  left: 0,
                  child: Column(
                    children: [
                      Text(
                        "Agriculture",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      TextButton(
                        child: Text("AgricultureTitle"),
                        onPressed: () {
                          setState(() {
                            //Opacity(opacity: this.isVisible ? 1.0 : 0.0, child: this.someChild);
                          });
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: Colors.black, thickness: 3,),
          Container(
            width: 320,
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/architecture.jpg'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  left: 0,
                  top: 0,
                  child: Column(
                    children: [
                      Text(
                        "Architecture",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Architecture",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: Colors.black, thickness: 3,),
          Container(
            width: 320,
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/arts.jpg'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  left: 0,
                  top: 0,
                  child: Column(
                    children: [
                      Text(
                        "Arts",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Arts",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: Colors.black, thickness: 3,),
          Container(
            width: 320,
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/business.jpg'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  left: 0,
                  top: 0,
                  child: Column(
                    children: [
                      Text(
                        "Business",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Business",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: Colors.black, thickness: 3,),
          Container(
            width: 320,
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/computer.jpg'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  left: 0,
                  top: 0,
                  child: Column(
                    children: [
                      Text(
                        "Computer",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Computer",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: Colors.black, thickness: 3,),
          Container(
            width: 320,
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/education.jpg'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  left: 0,
                  top: 0,
                  child: Column(
                    children: [
                      Text(
                        "Education",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Education",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: Colors.black, thickness: 3,),
          Container(
            width: 320,
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/engineering.jpg'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  left: 0,
                  top: 0,
                  child: Column(
                    children: [
                      Text(
                        "Engineering",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Engineering",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: Colors.black, thickness: 3,),
          Container(
            width: 320,
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/fitness.jpg'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  left: 0,
                  top: 0,
                  child: Column(
                    children: [
                      Text(
                        "Fitness",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Fitness",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: Colors.black, thickness: 3,),
          Container(
            width: 320,
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/humanitites.jpg'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  left: 0,
                  top: 0,
                  child: Column(
                    children: [
                      Text(
                        "Humanities",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Humanities",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: Colors.black, thickness: 3,),
          Container(
            width: 320,
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/law.jpg'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  left: 0,
                  top: 0,
                  child: Column(
                    children: [
                      Text(
                        "Law",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Law",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: Colors.black, thickness: 3,),
          Container(
            width: 320,
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/mba.jpg'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  left: 0,
                  top: 0,
                  child: Column(
                    children: [
                      Text(
                        "MBA",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "MBA",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: Colors.black, thickness: 3,),
          Container(
            width: 320,
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/media.jpg'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  left: 0,
                  top: 0,
                  child: Column(
                    children: [
                      Text(
                        "Media",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Media",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: Colors.black, thickness: 3,),
          Container(
            width: 320,
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/medicine.jpg'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  left: 0,
                  top: 0,
                  child: Column(
                    children: [
                      Text(
                        "Medicine",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Medicine",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: Colors.black, thickness: 3,),
          Container(
            width: 320,
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/sciences.jpg'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  left: 0,
                  top: 0,
                  child: Column(
                    children: [
                      Text(
                        "Sciences",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Sciences",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: Colors.black, thickness: 3,),
          Container(
            width: 320,
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/travel.jpg'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  left: 0,
                  top: 0,
                  child: Column(
                    children: [
                      Text(
                        "Travel",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Travel",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )

          /*Image.asset(
            'assets/images/agriculture.jpg',
            fit: BoxFit.cover,
          ),
          Divider(color: Colors.black, thickness: 3,),
          TextButton(
            child: Text("Agriculture"),
            onPressed: () {},
          ),
          Image.asset(
            'assets/images/architecture.jpg',
            fit: BoxFit.cover,
          ),
          Divider(color: Colors.black, thickness: 3,),
          Image.asset(
            'assets/images/arts.jpg',
            fit: BoxFit.cover,
          ),
          Divider(color: Colors.black, thickness: 3,),
          Image.asset(
            'assets/images/business.jpg',
            fit: BoxFit.cover,
          ),
          Divider(color: Colors.black, thickness: 3,),
          Image.asset(
            'assets/images/computer.jpg',
            fit: BoxFit.cover,
          ),
          Divider(color: Colors.black, thickness: 3,),
          Image.asset(
            'assets/images/education.jpg',
            fit: BoxFit.cover,
          ),
          Divider(color: Colors.black, thickness: 3,),
          Image.asset(
            'assets/images/engineering.jpg',
            fit: BoxFit.cover,
          ),
          Divider(color: Colors.black, thickness: 3,),
          Image.asset(
            'assets/images/fitness.jpg',
            fit: BoxFit.cover,
          ),
          Divider(color: Colors.black, thickness: 3,),
          Image.asset(
            'assets/images/humanitites.jpg',
            fit: BoxFit.cover,
          ),
          Divider(color: Colors.black, thickness: 3,),
          Image.asset(
            'assets/images/law.jpg',
            fit: BoxFit.cover,
          ),
          Divider(color: Colors.black, thickness: 3,),
          Image.asset(
            'assets/images/mba.jpg',
            fit: BoxFit.cover,
          ),
          Divider(color: Colors.black, thickness: 3,),
          Image.asset(
            'assets/images/media.jpg',
            fit: BoxFit.cover,
          ),
          Divider(color: Colors.black, thickness: 3,),
          Image.asset(
            'assets/images/medicine.jpg',
            fit: BoxFit.cover,
          ),
          Divider(color: Colors.black, thickness: 3,),
          Image.asset(
            'assets/images/sciences.jpg',
            fit: BoxFit.cover,
          ),
          Divider(color: Colors.black, thickness: 3,),
          Image.asset(
            'assets/images/travel.jpg',
            fit: BoxFit.cover,
          ),*/
        ],
      ),
    );
  }
}
