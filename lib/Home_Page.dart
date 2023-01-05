import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
         bottomNavigationBar: BottomNavigationBar(items: [
              BottomNavigationBarItem(
                  label: "",
                  icon: Row(
                    children: [
                     SizedBox(
                      height: 20,
                      width: 150,
                      child: TextField(
                             decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: "Destinatario:",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w300, color: Colors.black)),
                  )
                      )
                    ],
                  )),
              BottomNavigationBarItem(
                  icon:  GestureDetector(onTap: (){
                      showModalBottomSheet(
                         //isScrollControlled: true,
                context: context,
                builder: (BuildContext builder) {
                  return SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      child: Column(
                        children: [
                          TextField(),
                          TextField()
                        ],
                      ),
                    ),
                  );});
                  },
                    child: Icon(Icons.favorite, color: Colors.black)), label: ""),
            ]),
        appBar: AppBar(
          elevation: 0,
        ),
        body: ListView(
          
        ),
       ),
    );
  }
}