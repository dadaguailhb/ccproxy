sub PatternCreate {
    my ($length) = @_;
    my ($X, $Y, $Z);
    my $res;
    while (1) {
        for my $X ("A" .. "Z") {
            for my $Y ("a" .. "z") {
                for my $Z (0 .. 9) {
                    $res .= $X;
                    return $res if length($res) >= $length;
                    $res .= $Y;
                    return $res if length($res) >= $length;
                    $res .= $Z;
                    return $res if length($res) >= $length;
                }
            }
        }
    }
}

my $filename = shift @ARGV;
my $length = shift @ARGV;
open(my $fh, '>', $filename) or die "Could not open file '$filename' $!";
print $fh PatternCreate($length);
close($fh);

