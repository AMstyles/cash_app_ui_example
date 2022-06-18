import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class PayPage extends StatefulWidget {
  const PayPage({Key? key}) : super(key: key);

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> with SingleTickerProviderStateMixin {
  int amount = 0;
  String string = "0";
  final _controller = TextEditingController();
  late AnimationController _controller2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller2 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
  }

  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text("Big Bro"),
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_rounded))
        ],
      ),
      body: ListView(
        children: [
          CircleAvatar(
            radius: 100,
            backgroundColor: Colors.deepPurpleAccent,
            child:
                Hero(tag: 'image', child: Image.asset('lib/images/bigBro.png')),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              '\$' + string,
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Center(
              child: Text(
            'Please be adviced that payments are not reversible',
            style: TextStyle(color: Colors.grey),
          )),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            padding: const EdgeInsets.only(left: 20),
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.deepPurpleAccent),
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(12)),
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Amount",
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  string = _controller.text;
                });
              },
              child: Text(
                'Done',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: SlideAction(
              text: 'Slide to pay',
              elevation: 1,
              innerColor: Colors.white,
              outerColor: Colors.deepPurpleAccent,
              onSubmit: () {},
            ),
          ),
        ],
      ),
    );
  }
}
