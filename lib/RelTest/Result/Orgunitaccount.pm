use utf8;
package RelTest::Result::Orgunitaccount;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

RelTest::Result::Orgunitaccount

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<orgunitaccount>

=cut

__PACKAGE__->table("orgunitaccount");

=head1 ACCESSORS

=head2 orgunitid

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 accountid

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "orgunitid",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "accountid",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
);

=head1 RELATIONS

=head2 accountid

Type: belongs_to

Related object: L<RelTest::Result::Account>

=cut

__PACKAGE__->belongs_to(
  "accountid",
  "RelTest::Result::Account",
  { id => "accountid" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);

=head2 orgunitid

Type: belongs_to

Related object: L<RelTest::Result::Orgunit>

=cut

__PACKAGE__->belongs_to(
  "orgunitid",
  "RelTest::Result::Orgunit",
  { id => "orgunitid" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-10-08 13:10:09
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zy3cFnEjjV7xT7k1IQfT7Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
