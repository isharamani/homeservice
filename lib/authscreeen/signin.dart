import 'package:flutter/material.dart';
import 'package:homeservice/authscreeen/signup.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController phonecontroller = TextEditingController();

  // GetPhoneNo({number}) async {
  //   try {
  //     await FirebaseAuth.instance.verifyPhoneNumber(
  //       phoneNumber: "+91" +number,
  //       verificationCompleted: (PhoneAuthCredential credential) {},
  //       verificationFailed: (FirebaseAuthException e) {},
  //       codeSent: (String verificationId, int? resendToken) {
  //         Get.to(OtpScreen(verificationid: verificationId));
  //         Get.snackbar("Otp Sent", "",snackPosition: SnackPosition.TOP,);
  //
  //
  //       },
  //       codeAutoRetrievalTimeout: (String verificationId) {},
  //     );
  //   }
  //   catch (e) {
  //     Get.snackbar("Error", "$e");
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x0F1621),
      body: Center(
        child: ListView(
          children: [ Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Image.asset("assets/logo.png"),
              SizedBox(height: 10),
              Text(
                "Biashara Konneckt",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("  Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "   Phone Number",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      key: _formKey,
                      child: IntlPhoneField(
                        decoration: InputDecoration(
                            labelText: "Phone Number",
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(borderSide: BorderSide(),borderRadius: BorderRadius.circular(10))),
                        initialCountryCode: "+91",
                        cursorColor: Colors.white,
                        controller: phonecontroller,
                        keyboardType: TextInputType.number,
                        inputFormatters: [],
                        onChanged: (value) {},
                        validator: (p0) {
                          if(p0!.isValidNumber()){
                            return null;
                          }
                          else{
                            return "Please enter your valid Number";
                          }
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                        //  GetPhoneNo(number: phonecontroller.value.text);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
                        }
                      },
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 1,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Center(
                      child: Text(
                        "Sign in with ",
                        style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                      )),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/Google.png"),
                      SizedBox(width: 30,),
                      Image.asset("assets/facebook.png"),
                      SizedBox(width: 30,),

                      Image.asset("assets/Apple.png"),
                    ],
                  ),
                  SizedBox(height: 60,),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Container(
                        height: 65,
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade700,width: 2),
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Continue as a Guest",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Create a New Account?",style: TextStyle(color: Colors.white,fontSize: 15),),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
                          },
                          child: Text("  Sign up?",style: TextStyle(color: Colors.purple.shade700),))
                    ],
                  )
                ],
              )
            ],
          ),],
        ),
      ),
    );
  }
}
