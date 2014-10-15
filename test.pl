#!/usr/bin/env perl

use Modern::Perl '2014';
use lib 'lib';
use RelTest;
use Test::Most;

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
);

is( scalar @typeAOrgUnits,    1,        'Exactly one result');
is( $typeAOrgUnits[0]->name,  'unit1',  'Right result');
done_testing();
