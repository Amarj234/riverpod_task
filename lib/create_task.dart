import 'package:flutter/material.dart';
class CreateTask extends StatelessWidget {
  const CreateTask({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(title: Text("Create Task"),) ,
      body: SafeArea(child: Form(child: Column(children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter title",
              fillColor: Colors.grey,
              focusColor: Colors.grey
          ),
          validator: (value) {
            if (value==null) {
              return 'Please enter title';
            }
            return null;
          },
        ),
        TextFormField(
          decoration: InputDecoration(
              hintText: "Enter Description",
              fillColor: Colors.grey,
              focusColor: Colors.grey
          ),
          validator: (value) {
            if (value==null) {
              return 'Please enter description';
            }
            return null;
          },
        ),
        
        ElevatedButton(onPressed: (){}, child: Text("save"))
      ],))),
    );
  }
}
