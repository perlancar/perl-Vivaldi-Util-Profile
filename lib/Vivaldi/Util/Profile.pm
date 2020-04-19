package Vivaldi::Util::Profile;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;
use Log::ger;

use File::chdir;

use Exporter 'import';
our @EXPORT_OK = qw(list_vivaldi_profiles);

our %SPEC;

$SPEC{list_vivaldi_profiles} = {
    v => 1.1,
    summary => 'List available Vivaldi profiles',
    description => <<'_',

This utility will search for profile directories under ~/.config/vivaldi/.

_
    args => {
        detail => {
            schema => 'bool',
            cmdline_aliases => {l=>{}},
        },
    },
};
sub list_vivaldi_profiles {
    require Chrome::Util::Profile;

    Chrome::Util::Profile::list_chrome_profiles(
        _chrome_dir => "$ENV{HOME}/.config/google-chrome",
        @_,
    );
}

1;
# ABSTRACT:

=head1 SYNOPSIS


=head1 DESCRIPTION


=head1 SEE ALSO

Other C<Vivaldi::Util::*> modules.

L<Firefox::Util::Profile>

L<Chrome::Util::Profile>

L<Opera::Util::Profile>

=cut
