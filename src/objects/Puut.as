package objects
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;

	public class Puut extends Sprite
	{
		
		private var manty:Image;
		private var mantyKaks:Image;
		private var haapa:Image;
		private var pihlaja:Image;
		private var vaahtera:Image;
		private var pihlajaKaks:Image;
		public function Puut()
		{
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
		this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		puuArt(); 
		}
		
		private function puuArt():void
		{
		manty = new Image(Assets.getPuut().getTexture("Mänty"));
		this.addChild(manty);
		manty.x = 35;
		manty.y = 120;
		
		mantyKaks = new Image(Assets.getPuut().getTexture("Mänty"));
		this.addChild(mantyKaks);
		mantyKaks.x = 278;
		mantyKaks.y = 530;	
		
		haapa = new Image(Assets.getPuut().getTexture("Haapa"));
		this.addChild(haapa);
		haapa.x = 436;
		haapa.y = 124;
		
		pihlaja = new Image(Assets.getPuut().getTexture("Pihlaja"));
		this.addChild(pihlaja);
		pihlaja.x = 526;
		pihlaja.y = 142;
		
		vaahtera = new Image(Assets.getPuut().getTexture("Vaahtera"));
		this.addChild(vaahtera);
		vaahtera.x = 237;
		vaahtera.y = 45;	
		
		pihlajaKaks = new Image(Assets.getPuut().getTexture("Pihlaja"));
		this.addChild(pihlajaKaks)
		pihlajaKaks.x = 30;
		pihlajaKaks.y = 40;
		}
	}
}