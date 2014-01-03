package com.nuggeta.temp.a.b.f.c.d;
import com.nuggeta.lang.NSystem;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.OpenUrl;
import com.nuggeta.util.NList;
import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.OpenUrl;

class Pump
{

	var activePumpableMessages:NList<Message>;

	var times:NList<Float>;

	private var timeOut:Int;

	public function new( timeOut:Int)
	{
		activePumpableMessages = new NList<Message>();
		times = new NList<Float>();
		this.timeOut = timeOut;
	}

	public function pump():NList<Message>
	{
		var _d17130:NList<Message> = new NList<Message>();
		/*synchronized (activePumpableMessages)*/ {
			checkCache(NSystem.currentTimeMillis());
			for (_n17131 in 0 ... activePumpableMessages.size()) 
			{
				var _s8070:Message = activePumpableMessages.get(_n17131);
				if ( Std.is( _s8070, OpenUrl)) 
				{
				} else 
				{
					_d17130.add(_s8070);
				}
			}
			activePumpableMessages.clear();
			times.clear();
		}
		return _d17130;
	}

	public function add( _l17132:Message):Void
	{
		/*synchronized (activePumpableMessages)*/ {
			var _b17133:Float = NSystem.currentTimeMillis();
			checkCache(_b17133);
			activePumpableMessages.add(_l17132);
			times.add(_b17133);
		}
	}

	private function checkCache( tick:Float):Void
	{
	}
}
