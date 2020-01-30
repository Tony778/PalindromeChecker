public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String s = onlyLetters(word);
  s = lowerCase(s);
  s = noSpaces(s);
  if (reverse(s).equals(s)){
     return true;
  }else{
     return false;
  }
}


public String reverse(String str)
{
    String sNew = new String();
    //your code here
    int last = str.length() - 1;
    for (int i = last; i>= 0; i--){
      sNew = sNew + str.substring(i, i+1);
    }
    return sNew;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String lowerCase (String str){
 return str.toLowerCase();
}

public String noSpaces(String wordy){
  String s = "";
  for (int i = 0; i < wordy.length(); i++){
    if (wordy.charAt(i) != ' '){
      s = s + wordy.charAt(i);
    }
  }
  return s; 
}

public String onlyLetters(String sString){
  String result = "";
  for (int i = 0; i < sString.length(); i++){
    if (Character.isLetter(sString.charAt(i))){
      result += sString.charAt(i);
    }
  }
  return result;
}
