package com.nuggeta.util;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NList;
import com.nuggeta.network.Serializable;
import com.nuggeta.util.NMatrix2;

class NMatrix2
{

	private var serializableList:NList<Serializable>;

	private var rowCount:Int;

	private var columnCount:Int;

	public function new( rowCount:Int,  columnCount:Int)
	{
		this.rowCount = rowCount;
		this.columnCount = columnCount;
		serializableList = new NList<Serializable>();
		for (_v16936 in 0 ... rowCount * columnCount) 
		{
			serializableList.add(null);
		}
	}

	public function addItem( serializable:Serializable):Void
	{
		serializableList.add(serializable);
	}

	public function setItem( serializable:Serializable,  row:Int,  column:Int):Void
	{
		var _h16937:Int = (row * columnCount) + column;
		serializableList.set(_h16937, serializable);
	}

	public function getItem( row:Int,  column:Int):Serializable
	{
		return serializableList.get((row * columnCount) + column);
	}

	public function getRowCount():Int
	{
		return rowCount;
	}

	public function getColumnCount():Int
	{
		return columnCount;
	}

	public function clone():NMatrix2
	{
		return new NMatrix2(rowCount, columnCount);
	}
}
