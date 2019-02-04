# NumToWord
Ruby - Code Challenge for icicletech

Ruby version:
EAD+jjoseph56@IN5CG5133CMN MINGW64 ~/Desktop/test
$ ruby --version
ruby 2.3.3p222 (2016-11-21 revision 56859) [i386-mingw32]

Steps for run:
1. Keep dictionary.txt, and mobNumToWord.rb file on same folder.
2. Verify Ruby installed and env_path/System veriable configured properly.
3. open Git Bash or Dos prompt, and run 'ruby mobNumToWord.rb' for execute the script.

Test Result:
$ ruby mobNumToWord.rb

Time taken for process: 714.041 milliseconds
[["noun", "struck"], ["onto", "struck"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], "motortruck"]
Time taken for process: 682.039 milliseconds
[["act", "amounts"], ["act", "contour"], ["bat", "amounts"], ["bat", "contour"], ["cat", "amounts"], ["cat", "contour"], ["acta", "mounts"], "catamounts"]


assignment:

Given a 10 digit phone number, you must return all possible words or combination of words from the provided dictionary, that can be mapped back as a whole to the number.

With this we can generate numbers like 1-800-motortruck which is easier to remember then 1-800-6686787825
The phone number mapping to letters is as follows:

2 = a b c
3 = d e f
4 = g h i
5 = j k l
6 = m n o
7 = p q r s
8 = t u v
9 = w x y z
 
The phone numbers will never contain a 0 or 1. 
Words have to be at least 3 characters.

To get give you an initial verification, the following must be true:

6686787825 should return the following list [["motor", "usual"], ["noun", "struck"], ["nouns", "truck"], ["nouns", "usual"], ["onto", "struck"], "motortruck"]
2282668687 should return the following list [["act", "amounts"], ["act", "contour"], ["acta", "mounts"], ["bat", "amounts"], ["bat", "contour"], ["cat", "contour"], "catamounts"]

The conversion of a 10 digit phone number should be performed within 1000ms.
