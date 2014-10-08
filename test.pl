#!/usr/bin/env perl

use Modern::Perl '2014';
use lib 'lib';
use RelTest;

my $schema  = RelTest->connect('dbi:Pg:database=dbix_test');
my $account = $schema->resultset('Account')->search( {no => '999999'})->single();
my @typeAOrgUnits =
grep {
  $_->orgunitid->source eq "TYPE_A"
} $account->orgunitaccounts();

map {
  printf("%s\n", $_->orgunitid->name);
} @typeAOrgUnits;
