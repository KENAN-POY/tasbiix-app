import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class AlxamdulilahScreen extends StatefulWidget {
  const AlxamdulilahScreen({Key? key}) : super(key: key);

  @override
  State<AlxamdulilahScreen> createState() => _AlxamdulilahScreenState();
}

class _AlxamdulilahScreenState extends State<AlxamdulilahScreen> {
  final ValueNotifier<int> _count = ValueNotifier<int>(0);

  static const Color _primaryColor = Color(0xff001F3F);

  void _incrementCount() {
    _count.value++;
    HapticFeedback.lightImpact();
    _announceCount();
  }

  void _decrementCount() {
    if (_count.value > 0) {
      _count.value--;
      HapticFeedback.lightImpact();
      _announceCount();
    }
  }

  void _resetCount() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Tasbiix App"),
        content: const Text("Do you want to reset?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("No"),
          ),
          TextButton(
            onPressed: () {
              _count.value = 0;
              Navigator.pop(context);
              _announceCount();
            },
            child: const Text("Yes"),
          ),
        ],
      ),
    );
  }

  void _announceCount() {
    SemanticsService.announce('Count is ${_count.value}', TextDirection.ltr);
  }

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
                _buildProfileAvatar(),
                const Spacer(flex: 3),
                _buildArabicText(),
                _buildEnglishText(),
                const Spacer(),
                _buildCounter(),
                const Spacer(flex: 2),
                _buildMainCountButton(),
                _buildControlButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileAvatar() {
    return const Align(
      alignment: Alignment.topRight,
      child: CircleAvatar(
        radius: 30,
        child: Icon(Icons.person_3, size: 35, color: Colors.black),
      ),
    );
  }

  Widget _buildArabicText() {
    return const Text(
      "الْحَمْدُ لِلَّه",
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _buildEnglishText() {
    return const Text(
      "Alhamdulillah",
      style: TextStyle(fontSize: 30, color: Colors.white),
    );
  }

  Widget _buildCounter() {
    return ValueListenableBuilder<int>(
      valueListenable: _count,
      builder: (context, value, child) {
        return Text(
          "$value",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }

  Widget _buildMainCountButton() {
    return IconButton(
      onPressed: _incrementCount,
      icon: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(130),
        ),
        child: Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
            color: _primaryColor,
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
    );
  }

  Widget _buildControlButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildControlButton(
          onPressed: _decrementCount,
          icon: Icons.replay,
          label: "Decrement",
        ),
        _buildControlButton(
          onPressed: _resetCount,
          icon: Icons.restart_alt,
          label: "Reset",
        ),
      ],
    );
  }

  Widget _buildControlButton({
    required VoidCallback onPressed,
    required IconData icon,
    required String label,
  }) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: _primaryColor,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: Icon(icon, color: Colors.white, size: 30),
            ),
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: _primaryColor,
          ),
        ),
      ],
    );
  }
}
