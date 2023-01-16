import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WTFellowship Third Project',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(

          child: Column(
              children: [
                Header(),
                Padding(padding: EdgeInsets.all(20)),
                Name(),
                Padding(padding: EdgeInsets.all(5)),
                LastName(),
                Padding(padding: EdgeInsets.all(5)),
                Email(),
                Padding(padding: EdgeInsets.all(5)),
                Password(),
                Padding(padding: EdgeInsets.all(5)),
                ConfirmPassword(),
                Padding(padding: EdgeInsets.all(25)),
                Button(),
                Padding(padding: EdgeInsets.all(12)),
                SizedBox(
                    child:Text("Already have an account?", style:TextStyle(color:Colors.red.shade200)))
              ]
          ),
        )
    );
  }
}

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Material (
        elevation:5,
        child:
        Container(
            padding: EdgeInsets.only(top: 50.0),
            color: Colors.grey.shade200,
            height:100,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Icon(Icons.arrow_back_ios_outlined),
                ),
                SizedBox(
                  child:
                  Text("Create Account",
                      style: TextStyle(fontSize:17.5,fontWeight:FontWeight.w600)),
                ),
                Opacity(opacity: 0.0,
                  child: Text("C"),
                )
              ],
            )
        )
    );
  }
}

class Name extends StatelessWidget {
  const Name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:45,
      margin:EdgeInsets.fromLTRB(25, 0, 25,0),
      color: Colors.grey.shade200,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.account_circle_outlined ,
              size:20,
              color: Colors.grey,
            ),
          ),
          Expanded(
              child: TextField(
                decoration: InputDecoration(
                    labelText:"Name",
                    border: InputBorder.none
                ),
              )
          ),

        ],
      ),
    );
  }
}

class LastName extends StatelessWidget {
  const LastName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:45,
      margin:EdgeInsets.fromLTRB(25, 0, 25,0),
      color: Colors.grey.shade200,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.account_circle_outlined ,
              size:20,
              color: Colors.grey,
            ),
          ),
          Expanded(
              child: TextField(
                decoration: InputDecoration(
                    labelText:"LastName",
                    border: InputBorder.none
                ),
              )
          ),

        ],
      ),
    );
  }
}

class Email extends StatelessWidget {
  const Email({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:45,
      margin:EdgeInsets.fromLTRB(25, 0, 25,0),
      color: Colors.grey.shade200,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.email_outlined,
              size:20,
              color: Colors.grey,
            ),
          ),
          Expanded(
              child: TextField(
                decoration: InputDecoration(
                    labelText:"Email",
                    border: InputBorder.none
                ),
              )
          ),

        ],
      ),
    );
  }
}


class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:45,
      margin:EdgeInsets.fromLTRB(25, 0, 25,0),
      color: Colors.grey.shade200,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.lock_outlined ,
              size:20,
              color: Colors.grey,
            ),
          ),
          Expanded(
              child: TextField(
                decoration: InputDecoration(
                    labelText:"Password",
                    border: InputBorder.none
                ),
              )
          ),

        ],
      ),
    );
  }
}

class ConfirmPassword extends StatelessWidget {
  const ConfirmPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:45,
      margin:EdgeInsets.fromLTRB(25, 0, 25,0),
      color: Colors.grey.shade200,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.lock_outlined ,
              size:20,
              color: Colors.grey,
            ),
          ),
          Expanded(
              child: TextField(
                decoration: InputDecoration(
                    labelText:"Confirm Password",
                    border: InputBorder.none
                ),
              )
          ),

        ],
      ),
    );
  }
}

class Phone extends StatelessWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:45,
      margin:EdgeInsets.fromLTRB(25, 0, 25,0),
      color: Colors.grey.shade200,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.phone_outlined ,
              size:20,
              color: Colors.grey,
            ),
          ),
          Expanded(
              child: TextField(
                decoration: InputDecoration(
                    labelText:"Phone",
                    border: InputBorder.none
                ),
              )
          ),

        ],
      ),
    );
  }
}


class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(260, 45),
        primary: Colors.red,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0)
        ),
      ),

      onPressed: () {},
      child: const Text('SIGN UP', style:TextStyle(fontWeight:FontWeight.w200)),
    );
  }
}



