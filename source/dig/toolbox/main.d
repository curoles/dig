import std.stdio;
import std.path;

import dig.toolbox.wc;
import dig.toolbox.tc;
import dig.toolbox.zip;

int main(string[] args)
{
    writeln("Toolbox");
    /*debug*/ writefln("Enter main(%s)", args);

    string cmd_name = std.path.baseName(args[0]);

    if (args.length > 2 && args[1] == "tool")
    {
        cmd_name = args[2];
        args = args[2..args.length];
        /*debug*/ writefln("args: %s", args);
    }

    switch (cmd_name)
    {
        default: writeln("default"); break;
        case "wc": dig.toolbox.wc.wc(args); break;
        case "tc": dig.toolbox.tc.tc(args); break;
        case "zip": dig.toolbox.zip.zip(args); break;
    }

    return 0;
}
