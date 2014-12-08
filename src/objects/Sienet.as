package objects
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;

	public class Sienet extends Sprite
	{
		private var herkkutatti:Image;
		private var kantarelli:Image;
		private var karvarousku:Image;
		private var punaKarpasSieni:Image
		public function Sienet()
		{
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);	
		this.addEventListener(TouchEvent.TOUCH, onTouch);   // tarvittava toimiva hiiri klikkaus
		}
		
		private function onTouch(te:TouchEvent):void
		{
		if(te.getTouch(herkkutatti, TouchPhase.ENDED)){    //Toimiva hiiri Klikkaus
		herkkutatti.visible = false;
		}else if(te.getTouch(karvarousku, TouchPhase.ENDED)){        // Muista Jokaiselle oma muuten kaikki menee samasta 
		karvarousku.visible = false;
		}
		
		}
		
		private function onAddedToStage(event:Event):void
		{
		this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		sienetArt();
		}
		
		private function sienetArt():void
		{
		herkkutatti = new Image(Assets.getSienet().getTexture("herkkutatti"));
		
		this.addChild(herkkutatti)	
		herkkutatti.x = 175;
		herkkutatti.y = 267;
		
		kantarelli = new Image(Assets.getSienet().getTexture("kantarelli"));
		this.addChild(kantarelli)
		kantarelli.x = 115;
		kantarelli.y = 155;
		
		karvarousku = new Image(Assets.getSienet().getTexture("karvarousku"));
		this.addChild(karvarousku)	
		karvarousku.x = 520; 	
		karvarousku.y = 410;	
		
		punaKarpasSieni = new Image(Assets.getSienet().getTexture("punakärpässieni"));
		this.addChild(punaKarpasSieni)	
		punaKarpasSieni.x = 437; 	
		punaKarpasSieni.y = 20;
		}
	}
}