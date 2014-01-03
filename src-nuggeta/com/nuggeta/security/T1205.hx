package com.nuggeta.security;

class T1205
{

	private var _l17220:Array<Int>;

	private var _b17221:Int;

	private var _x17222:Int;

	public function new( row:Int,  col:Int)
	{
		_l17220 = new Array();
		this._b17221 = row;
		this._x17222 = col;
	}

	public function _m18580( row:Int,  col:Int,  _h17225:Int):Void
	{
		_l17220[row * _x17222 + col] = _h17225;
	}

	public function _m18581( _u17223:Int,  _j17227:Int):Int
	{
		return _l17220[_u17223 * _x17222 + _j17227];
	}

	public function _m18585( _g17226:Int):Array<Int>
	{
		var _e17229:Array<Int> = new Array();
		var _o17230:Int = _g17226 * _x17222;
		var _p8158:Int = 0;
		for (_j8159 in _o17230 ... _o17230 + _x17222) 
		{
			_e17229[_p8158] = _l17220[_j8159];
			_p8158++;
		}
		return _e17229;
	}

	public function _m18584( _u17233:Array<Int>,  _n17234:Int):Void
	{
		var _k17235:Int = _n17234 * _x17222;
		for (_i17236 in 0 ... _x17222) 
		{
			_l17220[_k17235] = _u17233[_i17236];
			_k17235++;
		}
	}

	public function _m18587():Int
	{
		return _b17221;
	}

	public function _m18588():Int
	{
		return _x17222;
	}
}
