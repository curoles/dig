import std.stdio;
import std.path;

import dig.toolbox.wc;

int main(string[] args)
{
    writeln("Toolbox");
    /*debug*/ writefln("Enter main(%s)", args);

    string cmd_name = std.path.baseName(args[0]);

    switch (cmd_name)
    {
        default: writeln("default"); break;
        case "wc": dig.toolbox.wc.wc(args); break;
    }

    //dig.toolbox.wc.wc();
    return 0;
}
