class Proverb {

  String recite(List<String> pieces) {
    if (pieces.isEmpty) return "";
    if (pieces.length == 1) return "And all for the want of a ${pieces.single}.";

    final buffer = StringBuffer();

    for (int i = 0; i < pieces.length - 1; i++) {
      buffer.writeln("For want of a ${pieces[i]} the ${pieces[i + 1]} was lost.");
    }

    buffer.writeln("And all for the want of a ${pieces.first}.");
    return buffer.toString().trim();
  }
}
