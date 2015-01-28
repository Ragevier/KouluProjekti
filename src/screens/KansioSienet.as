package screens
{
	import flash.ui.Keyboard;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;
	
	public class KansioSienet extends Sprite
	{
		public var kansionTausta:Image;
		public var valikkoRuutu:Valikko
		
		public var herkkutatti:Button
		public var kantarelli:Button
		public var karvarousku:Button
		public var punakarpassieni:Button
		public var suppilovahvero:Button
		public var valkokarpassieni:Button

		public var herkkutattiT:Button
		public var kantarelliT:Button
		public var karvarouskuT:Button
		public var punakarpassieniT:Button
		public var suppilovahveroT:Button
		public var valkokarpassieniT:Button
		
		public function KansioSienet()
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
		this.addEventListener(Event.REMOVED_FROM_STAGE, onAddedToStage)
		
		kansionKuvat();	
		}
		
		private function kansionKuvat():void
		{
		kansionTausta = new Image(Assets.getTexture("KansioTyhj"));
		this.addChild(kansionTausta);
			
		herkkutattiT = new Button(Assets.getLaatSienet().getTexture("Tuntematon Herkkutatti")); // Piilossa
		herkkutattiT.x = 25;	
		herkkutattiT.y = 40; 	
		this.addChild(herkkutattiT)
		
		herkkutatti = new Button(Assets.getLaatSienet().getTexture("Herkktuatti")); 
		herkkutatti.x = 25;	
		herkkutatti.y = 40; 
		herkkutatti.visible = false;
		this.addChild(herkkutatti);       
		
		kantarelliT = new Button(Assets.getLaatSienet().getTexture("Tuntematon Kantarelli")); // Piilossa
		kantarelliT.x = 160;
		kantarelliT.y = 40;  
		this.addChild(kantarelliT)
		
		kantarelli = new Button(Assets.getLaatSienet().getTexture("Kantarelli"));
		kantarelli.x = 160;
		kantarelli.y = 40;       
		kantarelli.visible = false;
		this.addChild(kantarelli); 
		
		karvarouskuT =  new Button(Assets.getLaatSienet().getTexture("Tuntematon karvarousku")); // Piilossa
		karvarouskuT.x = 25;	
		karvarouskuT.y = 140;
		this.addChild(karvarouskuT)
		
		karvarousku =  new Button(Assets.getLaatSienet().getTexture("Karvarousku"));
		karvarousku.x = 25;	
		karvarousku.y = 140;
		karvarousku.visible = false;
		this.addChild(karvarousku);			
		
		punakarpassieniT =  new Button(Assets.getLaatSienet().getTexture("tuntematon Punakärpässieni")); //Piilossa
		punakarpassieniT.x = 160;	
		punakarpassieniT.y = 140;
		this.addChild(punakarpassieniT);
		
		punakarpassieni =  new Button(Assets.getLaatSienet().getTexture("Punakärpässieni"));
		punakarpassieni.x = 160;	
		punakarpassieni.y = 140;
		punakarpassieni.visible = false;
		this.addChild(punakarpassieni);	
		
		//suppilovahveroT =  new Button(Assets.getLaatSienet().getTexture("Tuntematon Suppilovahvero"));  // Piilotettu
		//suppilovahveroT.x = 25;	
		//suppilovahveroT.y = 240;
		//this.addChild(suppilovahveroT);	
		
		//suppilovahvero =  new Button(Assets.getLaatSienet().getTexture("Suppilovahvero")); 
		//suppilovahvero.x = 25;	
		//suppilovahvero.y = 240;
		//suppilovahvero.visible = false;
		//this.addChild(suppilovahvero);	
		
		valkokarpassieniT =  new Button(Assets.getLaatSienet().getTexture("Tuntematon Valkokärpässieni")); // Piilotettu
		valkokarpassieniT.x = 160;	
		valkokarpassieniT.y = 240;
		this.addChild(valkokarpassieniT)
		
		valkokarpassieni =  new Button(Assets.getLaatSienet().getTexture("Valkokärpässieni"));
		valkokarpassieni.x = 160;	
		valkokarpassieni.y = 240;
	    valkokarpassieni.visible = false;
		this.addChild(valkokarpassieni); 
		
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