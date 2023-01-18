import 'package:flutter/material.dart';
import 'package:whatsapp_fake_conversations/database/Peoples.dart';
import 'package:whatsapp_fake_conversations/database/hive_data.dart';

import 'package:intl/intl.dart';


class HomePage extends StatefulWidget {

  const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   TextEditingController test1 = TextEditingController(text: "");
   TextEditingController test2 = TextEditingController(text: "");
    final HiveData hiveData = const HiveData();
  List<People> peopledata = [];

  @override
  void initState() {
    getData();
    super.initState();
  }

  Future<void> getData() async {
    peopledata = await hiveData.contact;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    
    String FechaActual = DateFormat("HH:mm", 'es_ES').format(now);
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
                                ElevatedButton(onPressed: ()async {
                          await hiveData.saveDataMoney(
                            People(datas1: test1.text, datas2: "", datas3: FechaActual, datas4: "", datas5: "")
                          );
                          await getData();
                        }, child: Container(child: Text("PRO1"),))
                              
                            ],
                          ),
                           Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: TextField(
                                  controller: test2,
                                )),
                                ElevatedButton(onPressed: ()async{
                                  await hiveData.saveDataMoney(People(datas1: "", datas2: test2.text, datas3: FechaActual, datas4: "", datas5: ""));
                                
                                  await getData();
                                }, child: Container(child: Text("PRO2"),))
                              
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
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.movie)),
            IconButton(onPressed: (){}, icon: Icon(Icons.call)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
          ],
          backgroundColor: Color(0xFFF105950),
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: peopledata.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(10),
                elevation: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  SizedBox(
                    height: 30,
                    child: Row(
                      
                      children: [
                        Text(peopledata[index].datas1),
                        Text(FechaActual)
                      ],
                    ),
                  ),
                  Text(peopledata[index].datas2),
                    // ElevatedButton(
                    //     onPressed: () async {
                    //       await hiveData.deleteDataMoneyIndex(index);
                    //       await getData();
                    //     },
                    //     child: Icon(Icons.delete))
                    //     ,Text(peopledata[index].datas3)
                  ],
                ),
              ),
            );
          },
        ),
       ),
    );
  }
}
