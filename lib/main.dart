import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'new.dart';
import 'package:flutter/cupertino.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool switching = false;
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: Stack(children: [
              new Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [0.5, 0.8],
                    colors: [Color(0xffEC4981), Color(0xFFEC8A70)],
                  ),
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: Image(
                                  image: AssetImage(
                                      'images/Screenshot 2021-06-21 225021 (1).png'))),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Builder(
                            builder: (context) => ToggleSwitch(
                              initialLabelIndex: 0,
                              totalSwitches: 2,
                              activeBgColor: [Colors.white],
                              activeFgColor: Colors.black,
                              labels: ['Existing', 'New'],
                              minHeight: 40,
                              minWidth: 150,
                              cornerRadius: 50,
                              inactiveFgColor: Colors.white,
                              inactiveBgColor: Colors.white10,
                              radiusStyle: true,
                              borderWidth: 7,
                              borderColor: [Colors.white10],
                              onToggle: (index) {
                                if (index == 1) {
                                  var builder = PageRouteBuilder(
                                      pageBuilder: (BuildContext context,
                                          Animation animation,
                                          Animation secondaryAnimation) {
                                        return newpage();
                                      },
                                      transitionsBuilder: (
                                          BuildContext context,
                                          Animation<double> animation,
                                          Animation<double> secondaryAnimation,
                                          Widget child,
                                          ) {
                                        return new SlideTransition(
                                          position: new Tween<Offset>(
                                            begin: const Offset(0.0,0.0),
                                            end: Offset.zero,
                                          ).animate(animation),
                                          child: child,
                                        );

                                      });
                                  return Navigator.of(context).push(builder);
                                }
                              },
                            ),
                          )
                          // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 250,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                            ),
                            child: Card(
                              borderOnForeground: false,
                              elevation: 30,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(top: 30),
                                          width: 300,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText: 'Email Address',
                                                prefixIcon: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 20),
                                                  child: Icon(
                                                    Icons.mail_outlined,
                                                    color: Colors.black,
                                                    size: 40,
                                                  ),
                                                ),
                                                contentPadding:
                                                    EdgeInsets.only(bottom: 30),
                                                hintStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(top: 40),
                                          width: 300,
                                          child: TextField(
                                            obscureText: _isHidden,
                                            decoration: InputDecoration(
                                                hintText: 'Password',
                                                suffixIcon: InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      _isHidden = !_isHidden;
                                                    });
                                                  },
                                                  child: Icon(
                                                    _isHidden
                                                        ? Icons.visibility
                                                        : Icons.visibility_off,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                contentPadding:
                                                    EdgeInsets.only(bottom: 30),
                                                prefixIcon: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 30.0),
                                                  child: Icon(
                                                    Icons.lock_outline,
                                                    color: Colors.black,
                                                    size: 40,
                                                  ),
                                                ),
                                                hintStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              new Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 550.0)),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                      gradient: new LinearGradient(
                          colors: [Color(0xffEC4981), Color(0xFFEC8A70)],
                          stops: [0.2, 0.8]),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        print('Login Pressed');
                      },
                      child: Text('LOGIN',
                          style: new TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              )),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 700),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 800),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.white70,
                          indent: 80,
                        ),
                      ),
                      Text('Or',
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      Expanded(
                        child: Divider(
                          endIndent: 80,
                          color: Colors.white70,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
        ));
  }
}
