use utf8;
package RelTest::Result::Orgunit;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

RelTest::Result::Orgunit

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<orgunit>

=cut

__PACKAGE__->table("orgunit");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'orgunit_id_seq'

=head2 name

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 source

  data_type: 'enum'
  extra: {custom_type_name => "sourcetype",list => ["TYPE_A","TYPE_B"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "orgunit_id_seq",
  },
  "name",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "source",
  {
    data_type => "enum",
    extra => { custom_type_name => "sourcetype", list => ["TYPE_A", "TYPE_B"] },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 orgunitaccounts

Type: has_many

Related object: L<RelTest::Result::Orgunitaccount>

=cut

__PACKAGE__->has_many(
  "orgunitaccounts",
  "RelTest::Result::Orgunitaccount",
  { "foreign.orgunitid" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-10-08 13:10:09
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:VqqUB3WHSVz73aHUSwd7hw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
