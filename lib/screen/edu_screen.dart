import 'package:flutter/material.dart';
import 'package:resume_app/util/colors.dart';
import 'package:resume_app/util/global.dart';

class EduScreen extends StatefulWidget {
  const EduScreen({super.key});

  @override
  State<EduScreen> createState() => _EduScreenState();
}

class _EduScreenState extends State<EduScreen> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtDesigtion = TextEditingController();
  TextEditingController txtYear = TextEditingController();
  TextEditingController txtName2 = TextEditingController();
  TextEditingController txtDesigtion2 = TextEditingController();
  TextEditingController txtYear2 = TextEditingController();
  TextEditingController txtName3 = TextEditingController();
  TextEditingController txtDesigtion3 = TextEditingController();
  TextEditingController txtYear3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: yellow1primary,
          title: Text("Eduscreen"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text("Education 1",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              textFiledTile(hint: "Name", icon: Icons.account_circle, controller: txtName, key: TextInputType.name),
              textFiledTile(hint: "Desigtion", icon: Icons.book, controller: txtDesigtion,key: TextInputType.name),
              textFiledTile(hint: "Yare", icon: Icons.calendar_month, controller: txtYear,key: TextInputType.datetime),

              Text("Education 2",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              textFiledTile(hint: "Name", icon: Icons.account_circle, controller: txtName2, key: TextInputType.name),
              textFiledTile(hint: "Desigtion", icon: Icons.book, controller: txtDesigtion2,key: TextInputType.name),
              textFiledTile(hint: "Yare", icon: Icons.calendar_month, controller: txtYear2,key: TextInputType.datetime),

              Text("Education 3",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              textFiledTile(hint: "Name", icon: Icons.account_circle, controller: txtName3, key: TextInputType.name),
              textFiledTile(hint: "Desigtion", icon: Icons.book, controller: txtDesigtion3,key: TextInputType.name),
              textFiledTile(hint: "Yare", icon: Icons.calendar_month, controller: txtYear3,key: TextInputType.datetime),

              ElevatedButton(
                onPressed: () {
                  Global g1= Global();
                  g1.resumeScreenList.addAll([txtName.text,txtDesigtion.text,txtYear.text,
                    txtName2.text,txtDesigtion2.text,txtYear2.text,
                    txtName3.text,txtDesigtion3.text,txtYear3.text,
                  ]);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${g1.resumeScreenList}")));
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textFiledTile({required String hint,
    required IconData icon,
    required TextEditingController controller,
    required TextInputType key}) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: key,
        controller: controller,
        decoration: InputDecoration(
          label: Text(
            "$hint",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          border: OutlineInputBorder(),
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
