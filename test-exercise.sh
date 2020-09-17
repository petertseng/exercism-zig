dir=$1
ex=$(basename "$dir" | tr -- - _)

f=$(find $dir -name "*.zig" | grep -v example | grep -v test.zig | grep -v zig-cache)

cp $f $dir/$ex.backup
mv $dir/example.zig $f

$HOME/bin/zig test $dir/test.zig
status=$?

mv $f $dir/example.zig
mv $dir/$ex.backup $f

exit $status
