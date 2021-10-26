import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp  (
      debugShowCheckedModeBanner: false,
      title:"Nneoma's baby",
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Login()
    );
  }
}


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true ,
       title: Text('Login to Nneoma',),
        actions: <Widget>[  new Stack(
              children: <Widget>[
          new IconButton(icon: Icon(Icons.notifications), onPressed: (){},
      )
    ]
      )
      ]
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(50),
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,

                ),
                child: Center(child: const Text("Nneoma's baby", style: TextStyle(color: Colors.white60))),
              ),
              SizedBox(height: 40,),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.account_circle_rounded),
                  label: Text("username")
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock_outline_rounded),
                  label: Text("password")
                ),
                obscureText: true,

              ),
              SizedBox(height: 40),
              MaterialButton(
                onPressed:  (){
                  print("");
                },
                color: Colors.blue,
                child:
                  Text('Login', style: TextStyle(color: Colors.white60)),

              ),
              SizedBox(height: 10),

              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                color: Colors.cyan,
                child: Text('SignUp', style: TextStyle(color: Colors.white60)),

              ),
              SizedBox(height: 60),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Text("Forgot Password?" ,textAlign: TextAlign.right,),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true ,
          title: Text('Get loved up!',),
        ),
        body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.all(50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                        Container(
                        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Text('Create Account,',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                fontSize: 30)),
                        ),
            Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text("Sign up baby boo!",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontWeight: FontWeight.bold,
                        height: 0.5,
                        fontSize: 20
                        )),
            ),
                      SizedBox(height: 40,),
                      TextFormField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.account_circle_rounded),
                            label: Text("Your first name, love")
                        ),
                      ),
            SizedBox(height: 10,),
            TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.account_circle_rounded),
                    label: Text("And your surname")
                ),
            ),
            SizedBox(height: 10,),
            TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.email_outlined),
                    label: Text("Email")
                )
            ),
                      SizedBox(height: 10,),
                      TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.lock_outline_rounded),
                              label: Text("And password")
                          ),
                        obscureText: true,
                      ),
                      SizedBox(height: 30,),
            MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                color: Colors.blue,
              child: Text('Get loved!', style: TextStyle(color: Colors.white60)),
            )
                    ]
                )
            )
        )
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true ,
        title: Text('Welcome to Nneoma!',),
    )
    );
  }
}

