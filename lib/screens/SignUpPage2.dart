import 'package:flutter/material.dart';

class Task {
  String name;
  DateTime date;

  Task({required this.name, required this.date});
}

class SignUpPage_Two extends StatefulWidget {
  @override
  _SignUpPage_TwoState createState() => _SignUpPage_TwoState();
}

class _SignUpPage_TwoState extends State<SignUpPage_Two> {
  String name = "Ashraf Khan";
  late Task task ;
  TextEditingController _dateController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2019, 8),
        lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        var date =
            "${picked.toLocal().day}/${picked.toLocal().month}/${picked.toLocal().year}";
        _dateController.text = date;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BANK DETAILS'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.translate),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text("Welcome $name , Let's Get Started",textAlign: TextAlign.center,style: TextStyle(color: Colors.blue,fontSize:24.0,fontWeight: FontWeight.w400),),
                  Text("Please Enter Your Personal Details"),
                  SizedBox(height: 20,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0,10.0,0,0),
                          child: Text("D.O.B",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        GestureDetector(
                          onTap: () => _selectDate(context),
                          child: AbsorbPointer(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'DD/MM/YYYY',
                              ),
                              controller: _dateController,

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0,10.0,0,0),
                          child: Text("PAN Number",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'e.g HCAPKLLL',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0,10.0,0,0),
                          child: Text("Email Id",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'ABCD@XYZ.COM',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0,10.0,0,0),
                          child: Text("BANK A/C NUMBER",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter BANK A/C NUMBER',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0,10.0,0,0),
                          child: Text("IFSC CODE",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'IFSC CODE',
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(25),
                              child: FlatButton(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('SEARCH', style: TextStyle(fontSize: 20.0),),
                                ),
                                color: Colors.yellow,
                                textColor: Colors.black,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.security,color: Colors.blue,),
                                  Text("Your Financial Information is Secure With In Us",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.all(25),
                                child: FlatButton(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('PROCEED', style: TextStyle(fontSize: 20.0),),
                                  ),
                                  color: Colors.yellow,
                                  textColor: Colors.black,
                                  onPressed: () {},
                                ),
                              ),

                            ],
                          ),
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
}

