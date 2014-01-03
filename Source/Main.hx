package;


import flash.display.Sprite;
import utils.Nuggeta;


class Main extends Sprite {
	
	
	public function new () {
		
		super ();
		
		this.initialize();
		
	}
	
	private function initialize() :Void
	{
		var n:Nuggeta = new Nuggeta();
		this.addChild(n);
	}
	
	
}