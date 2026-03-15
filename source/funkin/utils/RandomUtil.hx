package funkin.utils;

class RandomUtil
{
	public static function getObject<T>(array:Array<T>):Null<T>
	{
		if (array == null || array.length == 0) return null;
		return array[Std.random(array.length)];
	}
}
