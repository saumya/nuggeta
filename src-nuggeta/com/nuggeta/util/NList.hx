package com.nuggeta.util;

/**
 * ...
 * @author Nuggeta
 */

class NList<T> 
{
	public var tab:Array<T>;
	public function new() 
	{
		tab = new Array<T>();
	}
	
	public function add(value:T) {
		tab.push(value);
	}
	
	public function get(i:Int):T {
		return tab[i];
	}
	
	
	public function contains(value:T):Bool {
		for (i in 0 ... tab.length) {
			if (tab[i] == value) {
				return true;
			}
		}
		return false;
	}
	
	public function indexOf(value:T):Int {
		for (i in 0 ... tab.length) {
			if (tab[i] == value) {
				return i;
			}
		}
		return -1;
	}
	
	
	public function remove(i:Int):Void {
		tab.splice(i,1);
	}
	public function removeValue(value:T):Bool {
		return tab.remove(value);
	}
	
	public function size():Int {
		return tab.length;
	}
	
	public function clear():Void {
		tab.splice(0,tab.length);
	}
	
	public function set(index:Int,value:T):Void {
		tab[index] =value;
	}
	
	
}