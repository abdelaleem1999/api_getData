import 'package:api_task1/screens/api/modul.dart';
import 'package:flutter/material.dart';

import 'controller.dart';

class View extends StatefulWidget {

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  List<Modul> comningDataFromModul = [];
  bool isLoading = true;

  void function() async {
    Controller cont = Controller();
    comningDataFromModul = await cont.fetch();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    function();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView.builder(
          itemCount: comningDataFromModul.length,
            itemBuilder:(context,index) {
             return Column(
               children: [
                 Image.network(comningDataFromModul[index].image),
                 Text(comningDataFromModul[index].name),
               ],
             );

            }),
      

      ),
    );
  }
}
