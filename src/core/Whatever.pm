my class Whatever {
    multi method ACCEPTS(Whatever:D: $topic) { True }
    method new() { nqp::create(self) }

    multi method perl(Whatever:D:) { '*' }
}

my class HyperWhatever is Whatever {
    multi method ACCEPTS(HyperWhatever:D: $topic) { True }
    method new() { nqp::create(self) }

    multi method perl(HyperWhatever:D:) { '**' }
}

sub HYPERWHATEVER (&c) { sub (*@_) { map &c, @_ } }

# vim: ft=perl6 expandtab sw=4
