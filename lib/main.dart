import 'package:flutter/material.dart';

void main() {
  runApp(const CrtAct());
}

class CrtAct extends StatelessWidget {
  const CrtAct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Registration',
      // theme: ThemeData(
      //   primarySwatch: Colors.white,
      // ),
      home: CrtActF(),
    );
  }
}

class CrtActF extends StatefulWidget {
  const CrtActF({Key? key}) : super(key: key);

  @override
  State<CrtActF> createState() => _CrtActState();
}

class _CrtActState extends State<CrtActF> {
  final myControllerMail=TextEditingController();
  final myControllerFName=TextEditingController();
  final myControllerLName=TextEditingController();
  final myControllerPass=TextEditingController();
  final myControllerCPass=TextEditingController();




  @override
  void dispose() {
    myControllerMail.dispose();
    myControllerFName.dispose();
    myControllerLName.dispose();
    myControllerPass.dispose();
    myControllerCPass.dispose();
   print('Dispose is called');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      // left: true,
      // padding:const EdgeInsets.all(2),

      child:Scaffold(
      resizeToAvoidBottomInset : false,

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
        ),
        title: const Text('   Create account',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                // backgroundColor: Colors.white,
                color: Colors.black87)),
      ),

      body: Padding ( padding : const EdgeInsets.only(left :10), child :  Column(
        // crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const SizedBox(
            height:70,
          ),

          Row(

            children: const [
               SizedBox(width: 10,),
              Text('Appname',
                  style:
                  TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    color: Colors.blueAccent,

                  )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: myControllerMail,
              decoration: const InputDecoration(
            suffixIcon: Icon(Icons.mail),
            labelText: 'E-mail address',
          )),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
              controller: myControllerFName,
              decoration: const InputDecoration(
            suffixIcon: Icon(
              Icons.person_outline_outlined,
            ),
            labelText: 'First name',
          )),
          const SizedBox(

            height: 10,
          ),
          TextFormField(
              controller: myControllerLName,
              decoration: const InputDecoration(
            suffixIcon: Icon(
              Icons.person,
            ),
            labelText: 'Last name',
          )),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
              controller: myControllerPass,
              decoration: const InputDecoration(
            suffixIcon: Icon(
              Icons.lock,
            ),
            labelText: 'Password',
          )),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
              controller: myControllerCPass,
              decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.lock),
            labelText: 'Confirm password',
          )),
          const SizedBox(
            height: 50,
          ),
            SizedBox(
             width: 350,
             height: 40,
           child:  ElevatedButton(onPressed: () {
             showDialog(context: context,
                 builder:(context){
                return AlertDialog(
                  title: const Text('Check your Details :'),
                insetPadding:const  EdgeInsets.fromLTRB(30, 30, 30, 450),
                content:Column(
                  children: [
                    Text(myControllerMail.text ),
                    Text(myControllerFName.text ),
                    Text(myControllerLName.text ),
                    Text(myControllerPass.text ),
                    Text(myControllerCPass.text ),
                  ],
                ),
                  actions:  [
                    OutlinedButton(onPressed: () {},
                        child:const Text('Ok'), ),

                     const SizedBox(width: 40,),

                    OutlinedButton(onPressed: () {  
                    },
                      child:const Text('Cancel'), ),

                    const SizedBox(width: 30,),

                  ],
                );
                 }
             );
           },
             style: ElevatedButton.styleFrom(
               // alignment: Alignment.center,
               primary: Colors.green,

             ),
              child: const Text('REGISTER',
                style:TextStyle(
                  // backgroundColor: Colors.green,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
             ),
           ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
            child: OutlinedButton(onPressed: () {
                print('OnPressed calling');
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context)
                      {
                        return const FrgtPage();
                      },
                      )
                  );
            },
                 style: OutlinedButton.styleFrom(
                   // minimumSize: const Size.fromWidth(1),
                 shape:const StadiumBorder(),
                 side: const BorderSide(width: 1, color: Colors.blue),
              ),
                child:const Text('I FORGOT MY PASS',
            style: TextStyle(
                color: Colors.black,
              fontSize: 12,
            ),),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
           Row(
             children: [
               const SizedBox(
                 width: 10,
               ),
               Container(
                 alignment:Alignment.bottomLeft,

          child: SizedBox(
                width: 160,
                height: 45,
                child:  ElevatedButton(onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(8.0)) ,
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.facebook_sharp),
                      Text('Facebook',

                        style:TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                    ],
                  ),

                  // child: const
                ),
          ),),
              const SizedBox(
                width: 50,
              ),
          Container(
                alignment:Alignment.bottomRight,

                    child: SizedBox(
                      width: 150,
                      height: 45,
                      child:  ElevatedButton(onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(8.0)) ,
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.social_distance_outlined),
                             Text('Twitter',
                          style:TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                        ),
                          ],
                      ),
                    ),

                ),),
             ],
           ),
        ],
      ),
    ),
    ));
  }
}

class FrgtPage extends StatefulWidget {
  const FrgtPage({Key? key}) : super(key: key);

  @override
  State<FrgtPage> createState() => _FrgtPageState();
}

class _FrgtPageState extends State<FrgtPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Forgot Password'),
          ),
          body: Column(
            children: [
              const SizedBox(height: 10,),
              TextFormField(
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.email_outlined,
                    ),
                    labelText: 'Email id',
                  )),
              const SizedBox(height: 10,),

              const SizedBox(height: 10,),
              TextFormField(
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.mail_lock_sharp,
                    ),
                    labelText: '*************Enter OTP sent to your Gmail',
                  )),
              const SizedBox(height: 50,),

              Container(
                alignment:Alignment.center,

                child: SizedBox(
                  width: 300,
                  height: 55,
                  child:  ElevatedButton(onPressed:null,
                    style: ElevatedButton.styleFrom(
                      shape:RoundedRectangleBorder(borderRadius:BorderRadiusDirectional.circular(8.0)) ,
                    ),
                    child: Row(
                      children: const [
                        Text('You can set your new password now',
                          style:TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),

                ),),
             TextButton(onPressed:() {
               Navigator.pop(context);
               },
               child:const Text('Go Back'),
             ),
            ],
          ),
        ),
    );
  }
}

