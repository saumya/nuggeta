package utils;
import flash.display.Graphics;
import flash.display.Sprite;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;

/**
 * Just a simple button to use anywhere
 * 
 * @author saumya
 * @version 1.0.0
 */
class LabelButton extends Sprite
{
	private var label:TextField;
	private var labelString:String;
	
	public function new(?name:String) 
	{
		super();
		this.initialize(name);
	}
	
	private function initialize(?labelStr:String) :Void
	{
		this.labelString = labelStr;
		this.label = new TextField();
		this.label.selectable = false;
		this.label.autoSize = TextFieldAutoSize.LEFT;
		
		this.label.text = this.labelString;
		this.addChild(this.label);
		this.render();
	}
	
	private function render():Void
	{
		var w:Float = this.label.textWidth;
		var h:Float = this.label.textHeight;
		if (w==0) {
			w = 100;
		}
		if (h==0) {
			h = 40;
		}
		var g:Graphics = this.graphics;
		g.clear();
		g.beginFill(0xCCCCCC, 1.0);
		g.drawRect(0, 0, w+5, h+5);
		g.endFill();
	}
	
	public function setLabel(labelStr:String):Void
	{
		this.labelString = labelStr;
		this.label.text = this.labelString;
		this.render();
	}
	
	
}