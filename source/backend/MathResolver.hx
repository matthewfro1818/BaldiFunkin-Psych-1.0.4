package backend;

import flixel.FlxBasic;
import flixel.util.FlxSignal;

class MathResolver extends FlxBasic
{
	public var input:String = '';
	public var intendedValue:String = '';
	
	public var onKeyPress:FlxTypedSignal<Int->Void> = new FlxTypedSignal<Int->Void>();
	public var onResolved:FlxTypedSignal<Bool->Void> = new FlxTypedSignal<Bool->Void>();
	
	public function new()
	{
		super();
	}
	
	public function start(num1:Int, num2:Int, isAddition:Bool):Void
	{
		// Stub implementation - would need actual math logic
		intendedValue = isAddition ? Std.string(num1 + num2) : Std.string(num1 - num2);
		input = '';
	}
}