import 'package:angel_broking_demo/screens/web_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpPage_One extends StatefulWidget {
  @override
  _SignUpPage_OneState createState() => _SignUpPage_OneState();
}

class _SignUpPage_OneState extends State<SignUpPage_One> {

  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset : true,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Angel Broking'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(

        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,10.0,0,0),
                  child: Text("Full Name",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Full Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,10.0,0,0),
                  child: Text("Mobile Number",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Flexible(
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  )
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,10.0,0,0),
                  child: Text("City",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your City',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,10.0,0,0),
                  child: Text("OTP",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Flexible(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter OTP',
                    ),
                  ),
                ),
                Text("Regenerate OTP",style: TextStyle(fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,20.0,0,0),
                  child: Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'MMUMM',
                      ),
                    ),
                  ),
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: rememberMe,
                      onChanged: _onRememberMeChanged,
                  ),
                  Text("I agree to the Terms & Conditions"),
                ],
              ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(25),
                        child: FlatButton(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('OPEN AN ACCOUNT', style: TextStyle(fontSize: 20.0),),
                          ),
                          color:Colors.yellow,
                          textColor: Colors.black,
                          onPressed: () {},
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BrowserView()),
                          );
                        },
                        child: Text("Continue To Your Existing Account",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }



  void _onRememberMeChanged(bool? newValue) {
    setState(() {
      rememberMe = newValue!;

      if (rememberMe) {
        // TODO: Here goes your functionality that remembers the user.
        print("Checked");
      } else {
        // TODO: Forget the user
        print("unchecked");
      }
    });
  }
}
