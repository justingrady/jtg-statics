package FetchURL;

use strict;

sub new {
        my $proto = shift;
        my $class = ref($proto) || $proto;
        my $self = {};
        $self->{src_url} = undef;
        $self->{filter} = undef;
        $self->{wget} = '/usr/bin/wget';
        $self->{wget_opts} = '-O -';
        $self->{wget_debug_opts} = '';
        $self->{wget_no_debug_opts} = '-q';
        $self->{debug} = 0;
        bless $self, $class;
}

sub filter {
        my $self = shift;
        my $filter = shift;
        $self->{filter} = $filter;
}
sub src_url {
        my $self = shift;
        my $src_url = shift;
        $self->{src_url} = $src_url;
}

sub update {
        my $self = shift;
        my $url = $self->{src_url};

        if(!defined $url) { return; }

        my $command = $self->{wget};
        my $opts;
        if($self->{debug}) {
                $opts = $self->{wget_debug_opts};
        } else {
                $opts = $self->{wget_no_debug_opts};
        }
        $opts .= " " . $self->{wget_opts};
        my $command_string = qq($command $opts '$url'|);
        if(!open WEB, $command_string) {
                return;
        }

        $self->{content} = '';
        while(<WEB>) {
                my $filtered;
                if(defined $self->{filter}) {
                        my $filter = $self->{filter};
                        $filtered = &$filter($_);
                } else {
                        $filtered = $_;
                }
                if(defined $filtered) {
                        $self->{content} .= $filtered;
                }
        }
        close WEB;
}

1;