myContacts: contactsA2.o createContactsA2.o readContactsA2.o searchContactsA2.o
	gcc -Wall -std=c99 contactsA2.o createContactsA2.o readContactsA2.o searchContactsA2.o -o bin/myContacts
contactsA2.o: src/contactsA2.c include/givenA2.h
	gcc -Wall -std=c99 -c src/contactsA2.c -o contactsA2.o
createContactsA2.o: src/createContactsA2.c
	 gcc -Wall -std=c99 -c src/createContactsA2.c -o createContactsA2.o
readContactsA2.o: src/readContactsA2.c
	gcc -Wall -std=c99 -c src/readContactsA2.c -o readContactsA2.o
searchContactsA2.o: src/searchContactsA2.c
	gcc -Wall -std=c99 -c src/searchContactsA2.c -o searchContactsA2.o
clean:
	rm *.o myContacts