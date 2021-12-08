import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tech_night/utils/validator.dart';
import 'customer.dart';
import 'customer_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyCustomerForm(title: 'Tech night team 4'),
    );
  }
}

class MyCustomerForm extends StatefulWidget {
  const MyCustomerForm({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyCustomerForm> createState() => _MyCustomerFormState();
}

class _MyCustomerFormState extends State<MyCustomerForm> {
  final formKey = GlobalKey<FormBuilderState>();
  Customer customer = Customer('', '', '', '');
  bool isvalid = false;
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final contactNoController = TextEditingController();

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: FormBuilder(
        key: formKey,
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              FormBuilderTextField(
                name: "first_name",
                controller: firstnameController,
                decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Enter your first name',
                      labelText: 'First name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                    )
                  ),
                ),
              SizedBox(height: 20),
              FormBuilderTextField(
                name: "last_name",
                controller: lastnameController,
                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Enter your last name',
                    labelText: 'Last name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
              SizedBox(height: 20),
              FormBuilderTextField(
                name: "email",
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: 'Enter your email',
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                ),
              ),
              SizedBox(height: 20),
              FormBuilderTextField(
                name: "phone",
                controller: contactNoController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    icon: Icon(Icons.phone),
                    hintText: 'Enter your contact numbwer',
                    labelText: 'Contact No',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                ),
              ),
              SizedBox(height: 60),
              ElevatedButton(
                child: Text("Submit"),
                onPressed: (){
                  customer.firstName = firstnameController.text;
                  customer.lastName = lastnameController.text;
                  customer.email = emailController.text;
                  customer.contactNo = contactNoController.text;
                  isvalid = FieldValidator.validateEmail(customer.email) && FieldValidator.validateFirstName(customer.firstName)
                            && FieldValidator.validateLastName(customer.lastName) && FieldValidator.validatePhone(customer.contactNo);
                  if (isvalid) {
                    // Navigate
                    formKey.currentState?.reset();
                    Navigator.of(context).push(MaterialPageRoute(builder:(context)=>CustomerDetail(customer)));
                  } else {
                    log('form\'s not valid!');
                  }
                },
              ),
              SizedBox(height: 30),
            ],
          ),
        )
      )
    );
  }
}
