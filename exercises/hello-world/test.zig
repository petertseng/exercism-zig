const testing = @import("std").testing;
const hello_world = @import("./hello_world.zig");

test "greet" {
    // TODO: can use std.testing.expectEqualStrings
    // Added on April 30 in https://github.com/ziglang/zig/pull/4683
    // probably next release of Zig.
    testing.expectEqualSlices(u8, "Hello, world!", hello_world.say());
}
