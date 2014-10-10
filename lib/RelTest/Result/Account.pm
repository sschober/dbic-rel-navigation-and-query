use utf8;
package RelTest::Result::Account;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

RelTest::Result::Account

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<account>

=cut

__PACKAGE__->table("account");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'account_id_seq'

=head2 no

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "account_id_seq",
  },
  "no",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<account_no_key>

=over 4

=item * L</no>

=back

=cut

__PACKAGE__->add_unique_constraint("account_no_key", ["no"]);

=head1 RELATIONS

=head2 orgunitaccounts

Type: has_many

Related object: L<RelTest::Result::Orgunitaccount>

=cut

__PACKAGE__->has_many(
  "orgunitaccounts",
  "RelTest::Result::Orgunitaccount",
  { "foreign.accountid" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-10-08 13:16:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:d2UiG7r+CdVYfatf2HqSsA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
