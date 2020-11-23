pub fn leap(year: u32) bool {
    // Not allowed: year not accessible from inner function.
    const has_factor = struct {
        fn f(factor: u32) bool {
            return year % factor == 0;
        }
    }.f;
    return has_factor(4) and (!has_factor(100) or has_factor(400));
}
