ALL:
	psql < schema.sql
	dbicdump -o dump_directory=lib/ RelTest dbi:Pg:database=dbix_test
	./test.pl
