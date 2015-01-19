package screens
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	import starling.events.KeyboardEvent;
	import flash.ui.Keyboard;
	
	public class KansioSienet extends Sprite
	{
		public var kansionTausta:Image;
		public var valikkoRuutu:Valikko
		
		public function KansioSienet()
		{
			
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage)
			this.addEventListener(starling.events.KeyboardEvent.KEY_DOWN, keyboard)
		}
		
		private function keyboard(event:KeyboardEvent):void
		{
			if(event.keyCode == Keyboard.ESCAPE){
				
			if(event.keyCode == Keyboard.ESCAPE){
			if(valikkoRuutu.visible == false){
			valikkoRuutu.visible = true
			}else{valikkoRuutu.visible = false}
		}
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
			
		}
	}
}