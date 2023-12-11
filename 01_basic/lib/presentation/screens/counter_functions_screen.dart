import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({Key? key}) : super(key: key);

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Function Screen'),
          centerTitle: true,
          actions: [
            IconButton(
                icon: const Icon(Icons.refresh_rounded),
                onPressed: () {
                  setState(() {
                    clickCount = 0;
                  });
                }),
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCount',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.bold)),
            Text(
              'Click${clickCount == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25),
            )
          ],
        )),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                clickCount = 0;
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
            // FloatingActionButton(
            //   shape: const StadiumBorder(),
            //   onPressed: () {
            //     setState(() {
            //       clickCount++;
            //     });
            //   },
            //   child: const Icon(Icons.plus_one),
            // ),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                clickCount--;
                setState(() {});
              },
            ),
            // FloatingActionButton(
            //   onPressed: () {
            //     if (clickCount == 0) return;
            //     clickCount--;
            //     setState(() {});
            //   },
            //   child: const Icon(Icons.exposure_minus_1_outlined),
            // ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.read_more,
              onPressed: () {
                clickCount++;
                setState(() {});
              },
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;

  final VoidCallback? onPressed;

  // const CustomButton({super.key, required this.icon, this.onPressed,});
  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        shape: const StadiumBorder(), onPressed: onPressed, child: Icon(icon));
  }
}
