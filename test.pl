#!/usr/bin/env perl

use Modern::Perl '2014';
use lib 'lib';
use RelTest;

my $schema  = RelTest->connect('dbi:Pg:database=dbix_test');
my $acctNo = '999999';
my $sourceType = 'TYPE_A';

my @typeAOrgUnits =
$schema->resultset("Orgunit")->search({
    source => $sourceType,
    'accountid.no' => $acctNo
  },{
    join => {
        orgunitaccounts => 'accountid'
    }
  }
)->all();

map {
  printf("%s\n", $_->name);
} @typeAOrgUnits;
