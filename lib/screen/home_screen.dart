import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_app/util/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtDOB = TextEditingController();
  TextEditingController txtCity = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPasword = TextEditingController();
  String?  path;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: yellow1primary,
          title: Text("Resume"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("asset/image/resumelogo.png"),

                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
                    onPressed: () async{
                      ImagePicker imagePicker = ImagePicker();
                      XFile? img = await imagePicker.pickImage(source: ImageSource.gallery);
                      setState(() {
                        path = img!.path;
                      });
                      // FocusManager.instance.primaryFocus?.unfocus;
                    },
                    child: Icon(Icons.person),
                  ),
                ],
              ),
              textFiledTile(hint: "Name", icon: Icons.account_circle, controller: txtName,key: TextInputType.name),
              textFiledTile(hint: "DOB", icon: Icons.date_range, controller: txtDOB,key: TextInputType.datetime),
              textFiledTile(hint: "city", icon: Icons.location_city, controller: txtCity,key: TextInputType.name),
              textFiledTile(hint: "Mobile", icon: Icons.phone, controller: txtMobile,key: TextInputType.phone),
              textFiledTile(hint: "Email", icon: Icons.email_rounded, controller: txtEmail,key: TextInputType.emailAddress),
              textFiledTile(hint: "Password", icon: Icons.password, controller: txtPasword,key: TextInputType.visiblePassword),
              ElevatedButton(
                onPressed: () {
                  print(txtName.text);
                  print(txtDOB.text);
                  print(txtCity.text);
                  print(txtMobile.text);
                  print(txtEmail.text);
                  print(txtPasword.text);
                  Navigator.pushNamed(context, "edu");
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textFiledTile(
      {required String hint,
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
