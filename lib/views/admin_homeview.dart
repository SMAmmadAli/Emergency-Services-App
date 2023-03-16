import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:squip/utils/colors.dart';
import 'package:squip/view_model/admin_viewmodel.dart';
import 'package:stacked/stacked.dart';

class AdminHomeView extends StatelessWidget {
  const AdminHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => AdminViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
              appBar: AppBar(
                title: Text("Admin Screen"),
              ),
              body: FutureBuilder(
                  future: viewModel.getAllProducts(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data.docs.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(
                                "Complainant name: ${snapshot.data.docs[index]['name']}",
                                style: TextStyle(
                                    color: MyColor.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 2),
                              ),
                              subtitle: Text(
                                  "Location: ${snapshot.data.docs[index]['location']}",
                                  style: TextStyle(
                                      color: MyColor.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 2)),
                            );
                          });
                    } else {
                      return CircularProgressIndicator();
                    }
                  }));
        });
  }
}
