import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '/../config.dart';
import '/../controller/auth_controller.dart';
import '/../screens/home/walking.dart';
import '/../screens/home/workout.dart';
import '/../screens/home/BMI_Calculator.dart';
//import '/../widgets/hero_title.dart';
import '/../widgets/rounded_elevated_button.dart';
import '../../widgets/button_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GetBuilder<AuthController>(
        builder: (_authController) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/Profile.jpg'),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${_authController.displayName.toString().capitalizeString()}!',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                  width: 105.0,
                  child: Divider(color: Colors.black),
                ),
                ButtonWidget(
                  text: 'CALCULATE BMI',
                  onClicked: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BmiCalculator()));
                  },
                ),
                const SizedBox(height: 18),
                RoundedElevatedButton(
                  title: 'WALKING',
                  onPressed: () {
                    _authController.walking();

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WalkingScreen(),
                      ),
                    );
                  },
                  padding: EdgeInsets.symmetric(
                    horizontal: Config.screenWidth! * 0.3,
                  ),
                ),
                const SizedBox(height: 18),
                RoundedElevatedButton(
                  title: 'WORKOUT',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Workout()));
                  },
                  padding: EdgeInsets.symmetric(
                      horizontal: Config.screenWidth! * 0.3),
                ),
                const SizedBox(height: 80),
                ButtonWidget(
                  text: 'SIGN OUT',
                  onClicked: () => _authController.signout(),
                ),
                const SizedBox(height: 28),
              ],
            ),
          );
        },
      ),
    );
  }
}



// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: GetBuilder<AuthController>(
//         builder: (_authController) {
//           return Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               HeroTitle(
//                   title:
//                       'Hello ${_authController.displayName.toString().capitalizeString()}!',
//                   subtitle: 'Let\'s Start...'),
//               Expanded(flex: 6, child: Container()),
//               ButtonWidget(
//                 text: 'Calculate BMI',
//                 onClicked: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => BmiCalculator()));
//                 },
//               ),
//               const SizedBox(height: 18),
//               RoundedElevatedButton(
//                 title: 'WALKING',
//                 onPressed: () => _authController.walking(),
//                 padding: EdgeInsets.symmetric(
//                   horizontal: Config.screenWidth! * 0.3,
//                 ),
//               ),
              
             
//               const SizedBox(height: 18),
//               RoundedElevatedButton(
//                 title: 'WORKOUT',
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Workout()));
//                 },
//                 padding:
//                     EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.3),
//               ),
//               const SizedBox(height: 32),
//               ButtonWidget(
//                 text: 'Sign out',
//                 onClicked: () => _authController.signout(),
//               ),
//               const SizedBox(height: 28),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
