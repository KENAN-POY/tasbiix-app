import 'package:flutter/material.dart';

class AlxamdulilahScreen extends StatefulWidget {
  const AlxamdulilahScreen({super.key});

  @override
  State<AlxamdulilahScreen> createState() => _AlxamdulilahScreenState();
}

class _AlxamdulilahScreenState extends State<AlxamdulilahScreen> {
  int count = 0;

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
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
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
                  "الْحَمْدُ لِلَّه",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "Alhamdulillah",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                const Spacer(),
                Text(
                  "$count",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
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
                      borderRadius: BorderRadius.circular(130),
                    ),
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        color: const Color(0xff001F3F),
                        borderRadius: BorderRadius.circular(130),
                      ),
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
                              color: const Color(0xff001F3F),
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
                          "Decrement",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff001F3F),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text("Tasbiix App"),
                                content: const Text("Do you want to reset?"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context); // Close dialog
                                    },
                                    child: const Text("No"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        count = 0; // Reset counter
                                      });
                                      Navigator.pop(context); // Close dialog
                                    },
                                    child: const Text("Yes"),
                                  ),
                                ],
                              ),
                            );
                          },
                          icon: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xff001F3F),
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
                            color: Color(0xff001F3F),
                          ),
                        ),
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
