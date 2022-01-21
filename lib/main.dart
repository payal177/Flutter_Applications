import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool checkbox1 = true;
  bool checkbox2 = false;
  String gender = 'male';
  String dropdownValue = 'A';
  var value;



  @override
  Widget build(BuildContext context) {
          return Scaffold(
        appBar: AppBar(
          title: Text('Registration Form'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 20),

              child: Column(children: [


                SizedBox(height: 10.0),

                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(

                      hintText: 'Enter Name...',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 32.0),
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                  onChanged: (value) {
                  },
                ),
                SizedBox(height: 10.0),

                SizedBox(height: 10.0),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Enter Email..',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 32.0),
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                  onChanged: (value) {
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Enter Age..',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 32.0),
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                  onChanged: (value) {

                  },
                ),
                SizedBox(height: 10.0),
                Text('Marital Status'),
                SizedBox(height: 10.0),
                Row(children: [
                  SizedBox(
                    width: 10,
                    child: Checkbox(
                      value: checkbox1,
                      activeColor: Colors.green,
                      onChanged: (value) {

                        setState(() {
                          checkbox1 = !checkbox1;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text('Single')
                ]),
                Row(children: [
                  SizedBox(
                    width: 10,
                    child: Checkbox(
                      value: checkbox2,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setState(() {
                          checkbox2 = !checkbox2;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text('Married')
                ]),
                SizedBox(height: 10.0),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Enter Password',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 32.0),
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                  onChanged: (value) {
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 32.0),
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                  onChanged: (value) {
                  },
                ),
                SizedBox(height: 10.0),
                Text('Gender'),
                SizedBox(height: 10.0),
                Row(children: [
                  SizedBox(
                    width: 10,
                    child: Radio(
                      value: 'male',
                      groupValue: gender,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        //value may be true or false
                        setState(() => gender = (value) as String);
                      },
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text('Male')
                ]),
                Row(children: [
                  SizedBox(
                    width: 10,
                    child: Radio(
                      value: 'female',
                      groupValue: gender,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setState(() {
                          Object? object = gender = (value) as String;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text('Female')
                ]),
                SizedBox(height: 10.0),
                Text('Your Section'),
                SizedBox(height: 10.0),
                Container(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(3.0)
                  ),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    isExpanded: true,
                    icon: Icon(Icons.keyboard_arrow_down, size: 22),
                    underline: SizedBox(),
                    items: <String>['A','B','C','D'].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        Object? object = gender = (value) as String;
                      });
                    },
                  ),
                ),
              ])
          ),
        )
    );
  }
}