import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {

  const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   TextEditingController test1 = TextEditingController(text: "");
   TextEditingController test2 = TextEditingController(text: "");
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
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: TextField(
                                  controller: test1,
                                )),
                                ElevatedButton(onPressed: (){}, child: Container(child: Text("Enviar"),))
                              
                            ],
                          ),
                           Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: TextField(
                                  controller: test2,
                                )),
                                ElevatedButton(onPressed: (){
                                  test1;
                                }, child: Container(child: Text("Enviar"),))
                              
                            ],
                          ),
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
          children: [
            Text("fds"),
            Text("fdfd")
          ],
          
        ),
       ),
    );
  }
}
// class List extends StatefulWidget {
//   final String test1;
//   const List(this.test1);

//   @override
//   State<List> createState() => _ListState();
// }

// class _ListState extends State<List> {
//   @override
//   Widget build(BuildContext context) {
//     final String test1;
//     return ListView(
//       children: [
//         Text(test1)
//       ],
//     );
//   }
// }