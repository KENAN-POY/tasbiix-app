import 'package:flutter/material.dart';

class IstaqfurulahScreen extends StatefulWidget {
  const IstaqfurulahScreen({super.key});

  @override
  State<IstaqfurulahScreen> createState() => _IstaqfurulahScreenState();
}

class _IstaqfurulahScreenState extends State<IstaqfurulahScreen> {
  int count = 00;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("images/backtasbiix.jpg"),
        )),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Icon(
                        Icons.person_3,
                        size: 35,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                const Spacer(),
                const Spacer(),
                const Text(
                  "أَسْتَغْفِرُ اللَّه",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                      // color: Color(0xff001F3F),
                      ),
                ),
                const Text(
                  "Astaqfurullah",
                  style: TextStyle(fontSize: 30, color: Colors.white
                      // color: Color(0xff001F3F),
                      ),
                ),
                const Spacer(),
                Text(
                  "$count",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  icon: Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(130)),
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: const Color(0xff001F3F),
                          borderRadius: BorderRadius.circular(130)),
                      child: const Center(
                        child: Text(
                          "Count",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (count > 0) {
                                count--;
                              }
                            });
                          },
                          icon: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color((0xff001F3F)),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.replay,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Reduo",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color((0xff001F3F))),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text("Tasbiix App"),
                                  content: Text("Do you want to reset "),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("No"),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          count = 0;
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: Text("Yes"),
                                    )
                                  ],
                                ),
                              );
                            });
                          },
                          icon: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color((0xff001F3F)),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.restart_alt,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Reset",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color((0xff001F3F))),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
