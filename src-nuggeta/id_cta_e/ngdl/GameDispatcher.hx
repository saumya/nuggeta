package id_cta_e.ngdl;
import com.nuggeta.network.Dispatcher;
import com.nuggeta.network.Message;
import id_cta_e.ngdl.GameMessageListener;
import com.nuggeta.network.Dispatcher;
import com.nuggeta.util.NList;
import id_cta_e.ngdl.GameMessageListener;
import com.nuggeta.network.Message;

class GameDispatcher implements Dispatcher
{

	public function new()
	{
		globalListeners = new NList<GameMessageListener>();
	}

	private var globalListeners:NList<GameMessageListener>;

	public function fireMessage( message:Message):Void
	{
	}

	public function addGameMessageListener( listener:GameMessageListener):Void
	{
		globalListeners.add(listener);
	}

	public function removeGameMessageListener( listener:GameMessageListener):Void
	{
		globalListeners.removeValue(listener);
	}

	public function clear():Void
	{
		globalListeners.clear();
	}
}
