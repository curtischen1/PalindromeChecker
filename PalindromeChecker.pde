public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  return noCapitals(onlyLetters(noSpaces(word))).equals(reverse(noCapitals(onlyLetters(noSpaces(word)))));
}
public String reverse(String str)
{
    String sNew = new String();
     for(int i = 0; i < str.length(); i++)
  sNew = sNew + str.charAt(str.length()-1-i);
    return noSpaces(sNew);
}
public String noSpaces(String word){
  String s = "";
  for(int i = 0; i < word.length(); i++){
  if(word.charAt(i) != ' ')
  s = s + word.charAt(i);
  }
  return s;
}
public String onlyLetters(String sString){
  String s = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)) == true)
    s = s + sString.charAt(i);
  }
  return s;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
