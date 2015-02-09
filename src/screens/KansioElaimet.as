package screens
{
	import events.NavigationEvent;
	
	import flash.ui.Keyboard;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;
	
	public class KansioElaimet extends Sprite
	{
		
		
		public var kansionTausta:Image;
		public var valikkoRuutu:Valikko;
		
		public var harakka1:Button;
		public var hiiri1:Button;
		public var ikalaov:Button;
		public var pkalaov:Button;
		public var janisetu1:Button;
		public var msorsa:Button;
		public var nsorsa:Button;
		public var muurahaiskeko:Button;
		public var muurahaiset1:Button;
		public var orava1:Button;
		public var perhonen:Button;
		public var rastas1:Button;
		public var siilietu1:Button;
		public var sudenkorentoov1:Button;
		public var varis1:Button;
		
		
		public var harakka1T:Button;
		public var hiiri1T:Button;
		public var ikalaovT:Button;
		public var pkalaovT:Button;
		public var janisetu1T:Button;
		public var msorsaT:Button;
		public var nsorsaT:Button;
		public var muurahaiskekoT:Button;
		public var muurahaiset1T:Button;
		public var orava1T:Button;
		public var perhonenT:Button;
		public var rastas1T:Button;
		public var siilietu1T:Button;
		public var sudenkorentoov1T:Button;
		public var varis1T:Button;
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		public function KansioElaimet()
		{
			
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage)	
			this.addEventListener(starling.events.KeyboardEvent. KEY_DOWN, keyboard)
				
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
			kansionKuvat();
			}
			
		public function kansionKuvat():void
		{
			kansionTausta = new Image(Assets.getTexture("kansiotyhja"));
			this.addChild(kansionTausta);
			
		}
			
		public function nakyvatelaimet():void
		{
			
			
			
			
		}
	}
}