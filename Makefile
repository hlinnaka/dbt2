all: common_obj datagen_obj odbc_obj db_obj terminal_obj tools_obj client_obj

client_obj:
	cd client; $(MAKE)

common_obj:
	cd common; $(MAKE)

datagen_obj:
	cd datagen; $(MAKE)

db_obj:
	cd interfaces; $(MAKE)

odbc_obj:
	cd interfaces/odbc; $(MAKE)

tools_obj:
	cd tools; $(MAKE)

terminal_obj:
	cd terminal; $(MAKE)

clean:
	cd common; $(MAKE) clean
	cd datagen; $(MAKE) clean
	cd interfaces; $(MAKE) clean
	cd interfaces/odbc; $(MAKE) clean
	cd tools; $(MAKE) clean
	cd terminal; $(MAKE) clean
