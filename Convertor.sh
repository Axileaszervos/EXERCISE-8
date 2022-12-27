# /usr/bin/bash
echo "Πόσα αρχεία θές να αλλάξεις?:"
read n
for ((i = 0; i < $n; i++))
do
echo "Διάλεξε ένα απο τα διαθέσιμα αρχεία:
 a) scratch.epub
 b) MyRepo.md"
 read convertopt1
 if [ "$convertopt1" = "a" ];
 then
   echo "Διαθέσιμες επιλογές για μετατροπή:
   a) html
   b) txt"
    read convertopt2
    if [ "$convertopt2" = "a" ];
    then
      echo "Μετατροπή scratch.epub σε html..."
      pandoc -s scratch.epub -o scratch.html
      echo "Ολοκληρώθηκε"
      vim scratch.html
      echo "Το μέγεθος του scratch.html:"
      ls -lhS
    elif [ "$convertopt2" = "b" ];
    then
      echo "Μετατροπή  scratch.epub σε scratch.txt..."
      pandoc -s  scratch.epub -o scratch.txt
      echo "Ολοκληρώθηκε"
      vim scratch.txt
      echo "Το μέγεθος του scratch.txt:"
      ls -lhS
    fi
 elif [ "$convertopt1" = "b" ];
  then
    echo "Διαθέσιμες επιλογές για μετατροπή:
    a) html
    b) txt"
     read convertopt2
     if [ "$convertopt2" = "a" ];
     then
       echo "Μετετροπή .md σε html.."
       pandoc -s -f markdown -t html5 -o MyRepo.html MyRepo.md -c style.css
       echo "Ολοκληρώθηκε"
       vim MyRepo.html
       echo "Το μέγεθος του MyRepo.html:"
       ls -lhS
     elif [ "$convertopt2" = "b" ];
     then
       echo "Μετατροπή  MyRepo.md σε MyRepo.txt..."
       pandoc -f markdown -t plain MyRepo.md -o MyRepo.txt
       echo "Ολοκληρώθηκε"
       vim MyRepo.txt
       cho "Το μέγεθος του MyRepo.txt:"
       ls -lhS
    fi
fi
done
