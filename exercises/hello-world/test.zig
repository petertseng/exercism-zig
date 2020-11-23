const testing = @import("std").testing;
const hello_world = @import("./hello_world.zig");

test "greet" {
    testing.expectEqualStrings("Hello, world!", hello_world.say());
}
