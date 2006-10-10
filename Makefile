all:

install:
	pod2man bin/pgpatcher > $(PREFIX)/usr/share/man/man1/pgpatcher.1
	pod2man bin/pgcreatepatch > $(PREFIX)/usr/share/man/man1/pgcreatepatch.1

clean:

realclean:
