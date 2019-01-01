# SolARWrapper

Le wrapper est un ensemble de script SWIG qui permet d’utiliser SolAR dans d’autres langages que le c++. On peut imaginer que certain utilisateurs veuille l’utiliser en python, java, ou bien évidement c#.

Evidemment, si on veut utiliser SolAR en python, il y a probablement quelques ajustements à faire, c’est donc plutôt destiné aux utilisateurs avertis (contributeurs ?)

Une fois ce wrapper « compilé », il génère du code et une dll à destination de l’utilisateur final.

PS : le fichier _build.bat qui « compile » en un ensemble de script c# (dans out/csharp) et un script c++. Le CMake permet ensuite de compiler ce code c++ en une DLL.
