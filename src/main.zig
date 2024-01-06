const std = @import("std");
const lib = @cImport({
    @cInclude("../lib/libadd.h");
});

pub fn main() anyerror!void {
    std.debug.print("lib.add(2, 3) = {d}\n", .{lib.add(2, 3)});
}
