class Solution {
  String mapWordWeights(List<String> words, List<int> weights) {
    String word="";
    int asciiA = 'a'.codeUnitAt(0);
    int asciiZ = 'z'.codeUnitAt(0);

    for(int i=0;i<words.length;i++){
        String newWord=words[i];
        int total=0;
        for(int j=0;j<newWord.length;j++){
            int asciiHarf=newWord[j].codeUnitAt(0);
            total+=weights[asciiHarf-asciiA];
        }
        int yeniHarfAscii= asciiZ - (total % 26);
        word += String.fromCharCode(yeniHarfAscii);
    }

    return word;
  }
}