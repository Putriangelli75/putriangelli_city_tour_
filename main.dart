import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City Tour',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'City Tour'),

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      const SizedBox(height: 10),
      Row(
        body: SingleChildScrollView
      SizeBox(
        height: 100,
        child: ListView.builder(scrollDirection: Axis.horizontal,
            itemCount: imageUrls.length,
        itemBuilder: (context, index){
          return Padding(padding: const EdgeInsets.only(right: 8),
              child: GestureDetector(
                onTap:() => showDialog(
                  context: context,
                  builder: (_)=> Dialog(
                    child: CachedNetworkImage(
                      imageUrls. imageUrls[index],
                      width:150,
                      height:300,
                      placeholder:(_,_)=> const Center(
                        child: CircularProgressIndicator()),
                      errorWidget:(_,_,_)=> const Icon(Icons.error),
                    ),
                      const Text(
                        "Explore the charm of our city's hidden gems and embark on a journey to discover the rich cultural heritage, breathtaking landscapes, and unique experiences that await you. From historic landmarks to vibrant markets and serene natural wonders, our city "
                            "offers a tapestry of experiences that will captivate your senses. Join us in exploring the beauty "
                            "of our city and create memories that will last a lifetime. Come and visit our city's treasures today."
                      ),
                      )
                    ),
                  )
                ))
              ),
          ),
        }
      ),
  }
}
