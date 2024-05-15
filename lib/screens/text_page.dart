import 'package:cours_flutter_dark_mode/app.dart';
import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    String message =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dignissim turpis et efficitur convallis. Proin lobortis dolor at placerat lobortis. Phasellus porttitor erat ac consequat maximus. Vestibulum tellus orci, rutrum a elit at, fringilla aliquet eros. Fusce malesuada nibh sed eros ultricies interdum. Donec at mauris et nulla sagittis malesuada quis et ante. Ut euismod hendrerit dui, ut condimentum metus vulputate eu. Mauris ac lectus eu nibh congue convallis vel aliquet augue. Donec vehicula aliquam ornare.";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Un Titre",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(message,
                // style: const TextStyle(fontSize: 25, color: Colors.blue),
                style: Theme.of(context).textTheme.bodyMedium!),
            Wrap(
              spacing: 10,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).colorScheme.secondaryContainer,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).colorScheme.surfaceVariant,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).colorScheme.surfaceTint,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Choix du thème",
              style: const TextStyle(fontSize: 25, color: Colors.blue),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () =>
                        MyApp.of(context).changeTheme(ThemeMode.light),
                    child: Text('Light')),
                ElevatedButton(
                    onPressed: () =>
                        MyApp.of(context).changeTheme(ThemeMode.dark),
                    child: Text('Dark')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
