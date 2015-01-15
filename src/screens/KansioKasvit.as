package screens
{
	import events.NavigationEvent;
	
	import flash.ui.Keyboard;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;
		
		public class KansioKasvit extends Sprite
	{
		public var kansioTausta:Image;
		public var ahomansikka:Image;
		public var kanerva:Image;
		public var karpalo:Image;
		public var kielo:Image;
		public var kaenkaali:Image;
		public var lakka:Image
		public var leskenlehti:Image;
		public var mustikka:Image;
		public var oravanmarja:Image;
		public var piharatamo:Image;
		public var punaapila:Image;
		public var puolukka:Image;
		public var paivankakkara:Image;
		public var sinivuokko:Image;
		public var vadelma:Image;
		public var valkoapila:Image;
		public var valkovuokko:Image;
		public var voiKukka:Image;
	
		public var valikkoRuutu:Valikko;
		
		
		public function KansioKasvit()
		{
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage)
		this.addEventListener(starling.events.KeyboardEvent.KEY_DOWN, valikkoRuutu)
		}
		
		private function valikkoRuutu(event:KeyboardEvent):void
		{
		if(event.keyCode == Keyboard.ESCAPE)
		{
			
			if(event.keyCode == Keyboard.ESCAPE){
				if(valikkoRuutu.visible == false){
					valikkoRuutu.visible = true
				}else{valikkoRuutu.visible = false}
		}
		}
		}		
		public function onAddedToStage(event:Event):void
		{
		this.addEventListener(Event.REMOVED_FROM_STAGE, onAddedToStage)	
		KansionKuvat();
		}
		
		private function KansionKuvat():void
		{
		kansioTausta = new Image(Assets.getTexture("KansioTyhj"));
		this.addChild(kansioTausta);
	
		ahomansikka //= new Image(Assets
		this.addChild(ahomansikka)
		
		kanerva //= new Image(Assets
		this.addChild(kanerva)
			
		karpalo //= new Image(Assets
		this.addChild(karpalo)
		
		kielo //= new Image(Assets
		this.addChild(kielo)	
			
		kaenkaali //= new Image(Assets
		this.addChild(kaenkaali)
		
		lakka //= new Image(Assets
		this.addChild(lakka)
			
		leskenlehti //= new Image(Assets
		this.addChild(leskenlehti)
		
		mustikka //= new Image(Assets
		this.addChild(mustikka)
		
		oravanmarja //= new Image(Assets
		this.addChild(oravanmarja)
		
		piharatamo //= new Image(Assets
		this.addChild(piharatamo)
		
		punaapila //= new Image(Assets
		this.addChild(punaapila)
		
		puolukka //= new Image(Assets
		this.addChild(puolukka)
		
		paivankakkara //= new Image(Assets
		this.addChild(paivankakkara)
			
		sinivuokko //= new Image(Assets
		this.addChild(sinivuokko)
			
		vadelma //= new Image(Assets
		this.addChild(vadelma)
		
		valkoapila //= new Image(Assets
		this.addChild(valkoapila)
		
		valkovuokko //= new Image(Assets
		this.addChild(valkovuokko)
			
		voiKukka //= new Image(Assets
		this.addChild(voiKukka)	
		
		valikkoRuutu = new Valikko;
		valikkoRuutu.visible = false;
		this.addChild(valikkoRuutu)	
			
		this.addEventListener(Event.TRIGGERED, Lisaa)
		}
		
		private function Lisaa(event:Event):void
		{
		var buttonClicked:Button = event.target as Button
		if(buttonClicked as Button) == 	//napin nimi tähän
		{	
		this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"Takaisin"}, true));
		}
			
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