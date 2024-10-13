import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    var Ekranbilgisi=MediaQuery.of(context);
    var EkranGenisligi=Ekranbilgisi.size.width;
    var EkranUzunlugu=Ekranbilgisi.size.height;
    final Color onPrimary;
    return Scaffold(
   backgroundColor: Colors.deepPurple,

      body: Center(
     child:  SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(bottom: EkranUzunlugu/20),
          child: SizedBox(
            width: EkranGenisligi/4,
              height:EkranUzunlugu/6,
            child: Image.asset("resimler/logo.png"),
          ),

          ),
          Padding(padding: EdgeInsets.all(EkranUzunlugu/30),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Kullanıcı Adı',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(EkranGenisligi/70)

              ),
            ),
              ),

            ),

          Padding(padding: EdgeInsets.all(EkranUzunlugu/30),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Şifre',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(EkranGenisligi / 70)
                ),
              ),
            ),

          ),
          Padding(padding: EdgeInsets.all(EkranUzunlugu/30),
          child: SizedBox(
            width: EkranGenisligi/1.2,
            height: EkranUzunlugu/12,
            child: ElevatedButton(
              child: Text("GİRİŞ YAP",style: TextStyle(fontSize: EkranGenisligi/25,color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink
              ),
              onPressed: (){
                print("giriş yapıldı");
              },

            ),
          ),




          )
          








        ],
      )
      ),
    ),
    );
  }
}
