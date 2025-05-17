import 'package:flutter/material.dart';
import 'package:shimmer_app/src/meta/widgets/shimmer_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Shimmer Example",
                style: TextStyle(fontWeight: FontWeight.bold))),
        body: Column(
          children: [
            Container(
              height: 250,
              child: Stack(
                children: [
                  ShimmerContainer(
                      height: 200,
                      borderRadius: 0,
                      width: MediaQuery.of(context).size.width),
                  Positioned(
                    bottom: 10,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  borderRadius: BorderRadius.circular(200)),
                              child: ShimmerContainer(
                                  height: 90, borderRadius: 200, width: 90),
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ShimmerContainer(height: 20, borderRadius: 0, width: 150),
                SizedBox(height: 10),
                ShimmerContainer(height: 20, borderRadius: 0, width: 250)
              ],
            )),
            SizedBox(height: 56),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShimmerListTile(),
                      SizedBox(height: 8),
                      ShimmerListTile(),
                      SizedBox(height: 8),
                      ShimmerListTile(),
                    ]),
              ),
            )
          ],
        ));
  }
}
