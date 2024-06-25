import "package:fls/components/my_drawer.dart";
import "package:flutter/material.dart";

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<StatefulWidget> createState() => AnimationPageState();
}

class AnimationPageState extends State<AnimationPage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _radiusAnimation;
  
  @override
  void initState() {
    super.initState();

    // animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();

    // rotation animation
    _rotationAnimation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    
    // radius animation -> from square to circle
    _radiusAnimation = Tween(begin: 500.0, end: 10.0).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));


    _controller.addListener(() {
      setState(() {});
    });

    // makes animation go back and forth
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Page")
      ),
      drawer: const MyDrawer(),

      backgroundColor: Theme.of(context).colorScheme.surface,

      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // biggest container
            Transform.rotate(
              angle: _rotationAnimation.value,
              child: Container(
                width: 250,
                height: 280,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[400],
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x0ff69d94).withOpacity(0.8),
                      offset: const Offset(-3.0, -3.0),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),

            // 2nd by size container
            Transform.rotate(
              angle: _rotationAnimation.value + 0.2,
              child: Container(
                width: 200,
                height: 230,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[500],
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x0ff69d94).withOpacity(0.8),
                      offset: const Offset(-2.0, -2.0),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(4.0, 4.0),
                    ),
                  ],
                ),
              ),
            ),

            //3rd by size container
            Transform.rotate(
              angle: _rotationAnimation.value + 0.4,
              child: Container(
                width: 150,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[300],
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x0ff69d94).withOpacity(0.8),
                      offset: const Offset(-1.0, -1.0),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(2.0, 2.0),
                    ),
                  ],
                ),
              ),
            ),

            Transform.rotate(
              angle: _rotationAnimation.value + 0.2,
              child: Container(
                width: 100,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[200],
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x0ff69d94).withOpacity(0.8),
                      offset: const Offset(-1.0, -1.0),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(2.0, 2.0),
                    ),
                  ],
                ),
              ),
            ),

            Transform.rotate(
              angle: _rotationAnimation.value + 0.2,
              child: Container(
                width: 50,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x0ff69d94).withOpacity(0.8),
                      offset: const Offset(-1.0, -1.0),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(2.0, 2.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}