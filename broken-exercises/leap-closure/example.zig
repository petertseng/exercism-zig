pub fn leap(year: u32) bool {
    // Might work after https://github.com/ziglang/zig/issues/1717
    // or https://github.com/ziglang/zig/issues/4170
    const has_factor = fn(factor: u32) bool {
        return year % factor == 0;
    };
    return has_factor(4) and (!has_factor(100) or has_factor(400));
}
