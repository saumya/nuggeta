package utils;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.text.TextField;
import flash.text.TextFieldType;

import com.nuggeta.network.Message;
import com.nuggeta.ngdl.nobjects.StartResponse;
import com.nuggeta.ngdl.nobjects.StartStatus;
import com.nuggeta.NuggetaPlug;
import com.nuggeta.util.NList;

import utils.LabelButton;

/**
 * A layer between my Application and Nuggeta API
 * 
 * @author saumya
 * @version 1.0.0
 */
class Nuggeta extends Sprite
{
	private var logMessage:TextField;
	private var txtGameId:TextField;
	private var btnConnect:LabelButton;
	private var btnDisConnect:LabelButton;
	
	private var plug:NuggetaPlug;

	public function new() 
	{
		super();
		this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
	}
	
	private function onAddedToStage(e:Event):Void 
	{
		removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		this.init();
	}
	
	private function init():Void
	{
		//making the UI
		//GameId Input
		this.txtGameId = new TextField();
		this.txtGameId.width = 300;
		this.txtGameId.height = 20;
		this.txtGameId.x = this.txtGameId.y = 5;
		this.txtGameId.border = true;
		this.txtGameId.text = "gameID" ;
		this.txtGameId.type = TextFieldType.INPUT;
		this.txtGameId.selectable = true;
		this.addChild(this.txtGameId);
		//Buttons
		this.btnConnect = new LabelButton('Connect');
		this.addChild(this.btnConnect);
		this.btnDisConnect = new LabelButton('Disconnect');
		this.addChild(btnDisConnect);
		this.btnConnect.x = this.txtGameId.x + this.txtGameId.width + 10;
		this.btnConnect.y = this.txtGameId.y;
		this.btnDisConnect.x = btnConnect.x + btnConnect.width + 10;
		this.btnDisConnect.y = btnConnect.y;
		//Logger
		this.logMessage = new TextField();
		this.logMessage.y = this.txtGameId.y + this.txtGameId.height +5;
		this.logMessage.width = 400;
		this.logMessage.height = 300;
		this.logMessage.wordWrap = true;
		this.logMessage.multiline = true;
		this.addChild(this.logMessage);
		this.logMessage.text = "welcome";
		//init handlers
		this.btnConnect.addEventListener(MouseEvent.CLICK, onClickConnect);
		this.btnDisConnect.addEventListener(MouseEvent.CLICK, onClickDisConnect);
		//set up the initial view
		this.btnDisConnect.visible = false;//as we are not initialized Nuggeta yet!
	}
	
	private function onClickDisConnect(e:MouseEvent):Void 
	{
		this.plug.stop();
		//remove the listener
		this.removeEventListener(Event.ENTER_FRAME,onEachFrame);
		//UI update
		this.btnDisConnect.visible = false;
		this.btnConnect.visible = true;
		this.log('Disconnected');
	}
	
	private function onClickConnect(e:MouseEvent):Void 
	{
		var s:String = this.txtGameId.text;
		//initialize the plug
		//this.plug = new NuggetaPlug(nuggeta://YOUR_GAME_ID);//Use this : just to check the PLUG without concering about the UI input
		this.plug = new NuggetaPlug(s);//takes the input from the UI
		//listen on each frame
		this.addEventListener(Event.ENTER_FRAME,onEachFrame);
		//finally start to plug into Nggeta
		this.plug.start();
	}
	
	private function onEachFrame(e:Event):Void 
	{
		var messages:NList<Message> = this.plug.pump();
		for (i in 0...messages.size()) {
			var m:Message = messages.get(i);
			if (Std.is(m, StartResponse)) {
				this.startResponseHandler(cast m);
			} else {
				var s:String = "Unhandled message: " + cast(m, String);
				this.log(s);
			}
		}
	}
	private function startResponseHandler (sr:StartResponse) {
		// Remove the handler (if using the handler version)
		//nuggetaPlug.removeStartResponseHandler(startResponseHandler);
		var s:String = '';
		if (sr.getStartStatus() == StartStatus.FAILED) {
			s = "Connection Failed";
		}else if (sr.getStartStatus() == StartStatus.READY) {
			s = "Connection Ready";
			this.btnDisConnect.visible = true;
		}else if (sr.getStartStatus() == StartStatus.REFUSED) {
			s = "Connection Refused";
		}else if (sr.getStartStatus() == StartStatus.WARNED) {
			s = "Connection Warned";
		}
		this.log(s);
	}
	
	private function log(msg:String):Void
	{
		var s:String = this.logMessage.text + '\n';
		this.logMessage.text = s + msg;
	}
	/*
	private function initNuggeta() :Void
	{
		this.plug = new NuggetaPlug("nuggeta://YOUR_GAME_ID");
		this.plug.start();
	}
	*/
	
	
}