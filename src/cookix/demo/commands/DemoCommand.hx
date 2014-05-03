package cookix.demo.commands;

import cookix.core.command.Command;

/**
 * Demo command
 * @author Axel Anceau (Peekmo)
 */
@:Command("demo", "Demo command")
@:Option("test", "Test option", {valueMandatory: true, valueDescription: "Test description"})
@:Option("call", "Test callback demo", {callback: "callback"})
class DemoCommand extends Command
{

}