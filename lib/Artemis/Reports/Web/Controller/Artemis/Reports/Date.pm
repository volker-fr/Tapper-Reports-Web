package Artemis::Reports::Web::Controller::Artemis::Reports::Date;

use strict;
use warnings;

use parent 'Catalyst::Controller::BindLex';
__PACKAGE__->config->{bindlex}{Param} = sub { $_[0]->req->params };

sub index :Path :Args(0)
{
        my ( $self, $c ) = @_;

        my $reports : Stash = $c->model('ReportsDB')->resultset('Report')->search({});
}

1;