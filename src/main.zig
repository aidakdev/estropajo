const std = @import("std");
const builtin = @import("builtin");
const Target = @import("Target");

pub fn main() void {
    if (builtin.target.os.tag == .windows) {
        std.debug.print("Estropajo version 0.0.😿 - Copyright (c) 2024 Gátomo\n The definitive scrubber to clean your RAM in Window$\n\n Made with hatred towards Micro$oft by Gátomo\n https://github.com/gatomod/escoba\n", .{});

        std.debug.print("Allocating estropajo...\n", .{});

        const allocator = std.heap.page_allocator;
        var escoba = std.ArrayList(u128).init(allocator);
        defer escoba.deinit();

        std.debug.print("Scouring...\n", .{});

        while (true) {
            _ = escoba.append(7291) catch |err| {
                std.debug.print("Memory allocation failed: {}\n", .{err});
                break;
            };
        }
    } else {
        std.debug.print("You don't need this escoba to clean your RAM because you're not in Window$ (that means that your OS has a decent memory allocator)\n", .{});
        std.os.exit();
    }
}
