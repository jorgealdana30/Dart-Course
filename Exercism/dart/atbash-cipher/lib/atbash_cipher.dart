const String textPlain = 'abcdefghijklmnopqrstuvwxyz';
const String cipher =    'zyxwvutsrqponmlkjihgfedcba';

class AtbashCipher {
  final List<String> listTextPlain = textPlain.split('');
  final List<String> listCipher = cipher.split('');

  String encode(String text) {
    String encodeText = '';
    List<String> tempText = text.replaceAll(' ', '').replaceAll(',', '').replaceAll('.', '').toLowerCase().split('');
    int count = 1;

    for (String letter in tempText) {
      encodeText += generateEncodeText(letter);
      if (count % 5 == 0 && count <= tempText.length - 1) encodeText += ' ';
      count++;
    }
    return encodeText;
  }

  String decode(String text) {
    String encodeText = '';
    List<String> tempText = text.replaceAll(' ', '').toLowerCase().split('');

    for (String letter in tempText) {
      encodeText += generateDecodeText(letter);
    }
    return encodeText;
  }

  String generateDecodeText(String letter) {
    int index = listCipher.indexOf(letter);
    return (index != -1) ? listTextPlain[index] : letter;
  }

  String generateEncodeText(String letter) {
    int index = listTextPlain.indexOf(letter);
    return (index != -1) ? listCipher[index] : letter;
  }
}