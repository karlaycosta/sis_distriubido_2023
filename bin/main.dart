import 'dart:math';
import 'dart:isolate';

const max = 50000;

Future<void> main(List<String> arguments) async {
  final timer = Stopwatch()..start();
  final mult = [
    Isolate.run(bubbleSort),
    Isolate.run(bubbleSort),
    Isolate.run(bubbleSort),
    Isolate.run(bubbleSort),
    Isolate.run(bubbleSort),
    Isolate.run(bubbleSort),
    Isolate.run(bubbleSort),
    Isolate.run(bubbleSort),
    Isolate.run(bubbleSort),
    Isolate.run(bubbleSort),
    Isolate.run(bubbleSort),
    Isolate.run(bubbleSort),
    Isolate.run(bubbleSort),
    Isolate.run(bubbleSort),
    Isolate.run(bubbleSort),
    Isolate.run(bubbleSort)
  ];
  await Future.wait(mult);

  // final mono = [
  //   bubbleSort(),
  //   bubbleSort(),
  //   bubbleSort(),
  //   bubbleSort(),
  // ];
  // await Future.wait(mono);
  timer.stop();
  print('TOTAL: ${timer.elapsed}');
}

Future<void> bubbleSort() async {
  final timer = Stopwatch()..start();
  final rand = Random();
  final lista = List.generate(max, (index) => rand.nextInt(max));
  for (var i = 0; i < lista.length; i++) {
    for (var j = 0; j < lista.length - 1; j++) {
      if (lista[j] > lista[j + 1]) {
        final tmp = lista[j];
        lista[j] = lista[j + 1];
        lista[j + 1] = tmp;
      }
    }
  }
  timer.stop();
  print('${timer.elapsed}');
}
