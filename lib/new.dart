import 'main.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class newpage extends StatefulWidget {
  @override
  _newpageState createState() => _newpageState();
}

class _newpageState extends State<newpage> {
  bool _isHidden = true;
  bool switching = false;
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
                              initialLabelIndex: 1,
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
                                if (index == 0) {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                        return MyApp();
                                      }));
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
                            height: 450,
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
                                                hintText: 'Name',
                                                prefixIcon: Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      bottom: 20),
                                                  child: Icon(
                                                    Icons.person,
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
                                                hintText: 'Confirm Password',
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
                      Padding(padding: EdgeInsets.only(top: 750.0)),
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
                            print('Signup Pressed');
                          },
                          child: Text('SIGN UP',
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  )),
            ]),
          ),
        ));
  }
}
