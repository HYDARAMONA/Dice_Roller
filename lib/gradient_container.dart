import 'package:flutter/material.dart';
import 'package:first_app/the_dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.myColors});
  final List<Color> myColors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: myColors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: TheDiceRoller()),
    );
  }
}


// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.firstColor, this.secondColor, this.thirdColor,
//       {super.key});
//   final Color firstColor;
//   final Color secondColor;
//   final Color thirdColor;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             firstColor,
//             secondColor,
//             thirdColor,
//           ],
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Marshall Mathers'),
//       ),
//     );
//   }
// }
