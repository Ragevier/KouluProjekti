package screens
{
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.display.Image;
	import starling.display.Button;
	
	import starling.events.KeyboardEvent;
	import flash.ui.Keyboard;
	
	public class KansioPuut extends Sprite
	{
	public var kansionTausta:Image;
	public var valikkoRuutu:Valikko;
	
	public var haapa:Button;
	public var koivu:Button;
	public var manty:Button;
	public var kuusi:Button;
	public var pihlaja:Button;
	public var vaahtera:Button;
	
	public var haapaT:Button;
	public var koivuT:Button;
	public var mantyT:Button;
	public var kuusiT:Button;
	public var pihlajaT:Button;
	public var vaahteraT:Button;
	
	{
		public function KansioPuut()
		{
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage)
		this.addEventListener(starling.events.KeyboardEvent.KEY_DOWN, keyboard)
		}
			
			private function keyboard(event:KeyboardEvent):void
			{
			
			if(event.keyCode == Keyboard.ESCAPE){
			if(valikkoRuutu.visible == false){
			valikkoRuutu.visible = true
			}else{valikkoRuutu.visible = false}
			}
		}	
			
		private function onAddedToStage(event:Event):void
		{
		this.removeEventListener(Event.REMOVED_FROM_STAGE, onAddedToStage)
			
		kansioKuvat();	
		}
		
		private function kansioKuvat():void
		{
			
			kansionTausta = new Image(Assets.getTexture("KansioTyhj"));
			this.addChild(kansionTausta);
		
			tuntematonPuut()
			
		
		}
		public function nakyvatPuut():void
		{	
		
		haapa = new Button(Assets.getLaatPuut().getTexture("Haapa")); // LajiNappit pitää muuttaa kuvien omaksi napiksi
		haapa.x = 35;	
		haapa.y = 40; 
		
		this.addChild(haapa);       
		
		koivu = new Button(Assets.getLaatPuut().getTexture("Koivu"));
		koivu.x = 160;
		koivu.y = 40;       
		
		this.addChild(koivu); 
		
		manty =  new Button(Assets.getLaatPuut().getTexture("Mänty"));
		manty.x = 35;	
		manty.y = 175;
		
		this.addChild(manty);			
		
		kuusi =  new Button(Assets.getLaatPuut().getTexture("Kuusi"));
		kuusi.x = 160;	
		kuusi.y = 175;
	
		this.addChild(kuusi);	
		
		pihlaja =  new Button(Assets.getLaatPuut().getTexture("Pihlaja"));
		pihlaja.x = 35;	
		pihlaja.y = 270;
		
		this.addChild(kuusi);	
		
		vaahtera =  new Button(Assets.getLaatPuut().getTexture("Vaahtera"));
		vaahtera.x = 160;	
		vaahtera.y = 310;
		
		this.addChild(vaahtera);
		}
		public function tuntematonPuut():void
		{
			haapaT = new Button(Assets.getLaatPuut().getTexture("tuntematon Haapa")); 
			haapaT.x = 35;	
			haapaT.y = 40; 
			this.addChild(haapaT);
			
			koivuT = new Button(Assets.getLaatPuut().getTexture("Tuntematon Koivu"));
			koivuT.x = 160;
			koivuT.y = 40;  
			this.addChild(koivuT)
				
			mantyT =  new Button(Assets.getLaatPuut().getTexture("Tuntematon Mänty"));
			mantyT.x = 35;	
			mantyT.y = 175;
			this.addChild(mantyT)
				
			kuusiT =  new Button(Assets.getLaatPuut().getTexture("Tuntematon Kuusi"));
			kuusiT.x = 160;	
			kuusiT.y = 175;
			this.addChild(kuusiT)
				
			pihlajaT =  new Button(Assets.getLaatPuut().getTexture("Tuntematon Pihlaja"));
			pihlajaT.x = 35;	
			pihlajaT.y = 310;
			this.addChild(pihlajaT)	
				
			vaahteraT =  new Button(Assets.getLaatPuut().getTexture("Tuntematon Vaahtera"));
			vaahteraT.x = 160;	
			vaahteraT.y = 310;
			this.addChild(vaahteraT)	
				
		}
		
		public function disposeTemporarily():void
		{
			this.visible = false;
		}
		public function initialize():void
		{
			this.visible = true;
		}
	}
}
}