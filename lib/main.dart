import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const appTitle = "Form Validation";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);
  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    );
  }
}
// class MyCustomForm extends StatefulWidget {
//   const MyCustomForm({Key? key}) : super(key: key);
//   @override
//   State<MyCustomForm> createState() => _MyCustomFormState();
// }

// class _MyCustomFormState extends State<MyCustomForm> {
//   final _formkey = GlobalKey<FormState>();
//   TextEditingController dateCtl = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formkey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           TextFormField(
//             decoration: const InputDecoration(
//               icon: Icon(Icons.person),
//               hintText: 'Please Enter Your Name',
//               labelText: 'Name',
//             ),
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Please Enter Some Text';
//               }
//               return null;
//             },
//           ),
//           TextFormField(
//             decoration: const InputDecoration(
//               icon: Icon(Icons.phone),
//               hintText: 'Please Enter Your Phone Number',
//               labelText: 'Phone',
//             ),
//             keyboardType: TextInputType.number,
//             inputFormatters: [
//               FilteringTextInputFormatter(RegExp(r'[0-9]'), allow: true)
//             ],
//             validator: (value) {
//               if (value == null || value.isEmpty || value.length < 10) {
//                 return 'Please Enter A Valid Phone Number';
//               }
//               return null;
//             },
//           ),
//           TextFormField(
//             controller: dateCtl,
//             decoration: const InputDecoration(
//               icon: Icon(Icons.calendar_today),
//               labelText: 'Date Of Birth',
//               hintText: 'Please Pick Your Date Of Birth',
//             ),
//             onTap: () async {
//               DateTime date = DateTime(1900);
//               FocusScope.of(context).requestFocus(FocusNode());
//               date = (await showDatePicker(
//                   context: context,
//                   initialDate: DateTime.now(),
//                   firstDate: DateTime(1900),
//                   lastDate: DateTime(2100)))!;
//               dateCtl.text = date.toString();
//             },
//           ),
//           ElevatedButton(
//             onPressed: () {
//               if (_formkey.currentState!.validate()) {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text('Processing Data')),
//                 );
//               }
//             },
//             child: const Text('Submit'),
//           )
//         ],
//       ),
//     );
//   }
// }
