import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
    );
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) {}, 
          items: [
            const BottomNavigationBarItem(
              label: "Perfil",
              icon: Icon(Icons.person),
            ),
            const BottomNavigationBarItem(
              label: "Calendário",
              icon: Icon(Icons.calendar_today),
            ),
            BottomNavigationBarItem(
              label: "Novo remédio",
              icon: Container(
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.add_outlined)  
                )
              )
            ),
            const BottomNavigationBarItem(
              label: "Relatório",
              icon: Icon(Icons.bar_chart)
            ),
            const BottomNavigationBarItem(
              label: "Configurações",
              icon: Icon(Icons.settings)
            )
          ],
        ),
        body: SafeArea(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10.0, top: 10.0),
                  child: const Text(
                    "Hoje - 26 de janeiro de 2022",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    )
                  )
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        thickness: 3,
                        color: Colors.grey
                      )
                    ),
                  ],
                ),
              ],
            ),
            Card(
              elevation: 5.0,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "Amoxilina",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.pinkAccent
                      )
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Horário: 16:30 (Daqui a 1 hora e 43 minutos)")
                    )
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Dosagem: 20mg (1cps)")
                    )
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Recorrência: diariamente")
                    )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                      onPressed: (){}, 
                      child: Text(
                        "Editar",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink.withOpacity(0.6)
                          ),
                        )  
                      ),
                      TextButton(
                      onPressed: (){}, 
                      child: Text(
                        "Excluir",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.withOpacity(0.6)
                        ),
                      )
                      )
                    ],
                  )
                ],
              )
            ),
            Card(
              elevation: 5.0,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "Cloridrato de Ciclobenzaprina",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.pinkAccent
                      )
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Horário: 08:00 (Daqui a 13 hora e 50 minutos)")
                    )
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Dosagem: 05mg (1cps)")
                    )
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Recorrência: diariamente")
                    )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                      onPressed: (){}, 
                      child: Text(
                        "Editar",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink.withOpacity(0.6)
                          ),
                        )  
                      ),
                      TextButton(
                      onPressed: (){}, 
                      child: Text(
                        "Excluir",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.withOpacity(0.6)
                        ),
                      )
                      )
                    ],
                  )
                ],
              )
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10.0, top: 10.0),
                  child: const Text(
                    "Amanhã - 27 de janeiro de 2022",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    )
                  )
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        thickness: 3,
                        color: Colors.grey
                      )
                    ),
                  ],
                ),
              ],
            ),
            Card(
              elevation: 5.0,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "Loratadina",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.pinkAccent
                      )
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Horário: 08:00 (Daqui a 13 hora e 50 minutos)")
                    )
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Dosagem: 05mg (1cps)")
                    )
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Recorrência: diariamente")
                    )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                      onPressed: (){}, 
                      child: Text(
                        "Editar",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink.withOpacity(0.6)
                          ),
                        )  
                      ),
                      TextButton(
                      onPressed: (){}, 
                      child: Text(
                        "Excluir",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.withOpacity(0.6)
                        ),
                      )
                      )
                    ],
                  )
                ],
              )
            ),
            ]          
          ),
        )
    );
  }
}