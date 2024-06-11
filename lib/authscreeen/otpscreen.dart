// import 'package:count_down_time/count_down_time.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
//
// class VerificationCodeScreen extends StatefulWidget {
//   @override
//   _VerificationCodeScreenState createState() => _VerificationCodeScreenState();
// }
//
// class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
//   TextEditingController _controller = TextEditingController();
//   CountDownTimeController _countdownController = CountDownTimeController();
//   int _endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 20;
//
//   @override
//   void initState() {
//     super.initState();
//     _countdownController = CountDownTimeController();
//   }
//
//   void onEnd() {
//     print('Countdown ended');
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     _countdownController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             // Handle back button press
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Verification code',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'We just sent you a verify code. Check your inbox to get them.',
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Colors.grey),
//             ),
//             SizedBox(height: 32),
//             PinCodeTextField(
//               appContext: context,
//               length: 4,
//               controller: _controller,
//               onChanged: (value) {
//                 print(value);
//               },
//               pinTheme: PinTheme(
//                 shape: PinCodeFieldShape.box,
//                 borderRadius: BorderRadius.circular(5),
//                 fieldHeight: 50,
//                 fieldWidth: 40,
//                 activeFillColor: Colors.black,
//                 inactiveFillColor: Colors.black,
//                 selectedFillColor: Colors.black,
//                 activeColor: Colors.blue,
//                 inactiveColor: Colors.grey,
//                 selectedColor: Colors.blue,
//               ),
//               cursorColor: Colors.white,
//               textStyle: TextStyle(color: Colors.white),
//               keyboardType: TextInputType.number,
//               backgroundColor: Colors.transparent,
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
//                 // Handle continue button press
//               },
//               child: Text('Continue'),
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.white, backgroundColor: Colors.grey, // Text color
//                 padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
//                 textStyle: TextStyle(fontSize: 16),
//               ),
//             ),
//             SizedBox(height: 16),
//             CountdownTimer(
//               controller: _countdownController,
//               onEnd: onEnd,
//               endTime: _endTime,
//               widgetBuilder: (_, time) {
//                 if (time == null) {
//                   return Text('Re-send code');
//                 }
//                 return Text(
//                   'Re-send code in 0:${time.sec}',
//                   style: TextStyle(color: Colors.blue),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             GridView.count(
//               crossAxisCount: 3,
//               shrinkWrap: true,
//               childAspectRatio: 2,
//               mainAxisSpacing: 8,
//               crossAxisSpacing: 8,
//               children: List.generate(12, (index) {
//                 return ElevatedButton(
//                   onPressed: () {
//                     // Handle number button press
//                     String value = index == 10 ? '0' : (index + 1).toString();
//                     if (index == 9) return;
//                     if (index == 11) return;
//                     if (_controller.text.length < 4) {
//                       setState(() {
//                         _controller.text += value;
//                       });
//                     }
//                   },
//                   child: index == 9
//                       ? SizedBox.shrink()
//                       : index == 11
//                       ? Icon(Icons.backspace_outlined)
//                       : Text(
//                     index == 10 ? '0' : (index + 1).toString(),
//                     style: TextStyle(fontSize: 24),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.grey[800], // Background color
//                     onPrimary: Colors.white, // Text color
//                     padding: EdgeInsets.symmetric(vertical: 16),
//                   ),
//                 );
//               }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }