import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Desktop'),
      ),
      backgroundColor: Colors.deepPurple[500],
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 300,
                          color: Colors.amber,
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            color: Colors.deepPurple[300],
                            height: 120,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            //side panel
            width: 300,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 300,
                    color: Colors.amber,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      color: Colors.deepPurple[300],
                      height: 120,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
