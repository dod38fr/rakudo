my class Scalar { # declared in BOOTSTRAP
    # class Scalar is Any {
    #     has Mu $!descriptor;
    #     has Mu $!value;
    #     has Mu $!whence;

    method WHICH {
        'Scalar|' ~ nqp::objectid(self);
    }
    method name() {
        my $d := $!descriptor;
        nqp::isnull($d) ?? Str !! $d.name()
    }
    method of() {
        my $d := $!descriptor;
        nqp::isnull($d) ?? Mu !! $d.of;
    }
    method default() {
        my $d := $!descriptor;
        nqp::isnull($d) ?? Mu !! $d.default;
    }
    method dynamic() {
        my $d := $!descriptor;
        nqp::isnull($d) ?? Mu !! so $d.dynamic;
    }
}

# vim: ft=perl6 expandtab sw=4
