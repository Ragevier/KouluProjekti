package screens
{
	import events.NavigationEvent;
	
	import flash.media.SoundMixer;
	import flash.ui.Keyboard;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;

	public class Valikko extends Sprite
	{
		private var muteBtnb:Button
		private var alkuRuutuBtn:Button
		
		public function Valikko()
		{
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
			
		}
		private function onAddedToStage(event:Event):void
		{
		this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage)
		
		valikkoRuutu()
		}
		
		private function valikkoRuutu():void
		{
			muteBtnb = new Button(Assets.getTexture("muteNappi"));
			this.addChild(muteBtnb)
			muteBtnb.x = 20;
			muteBtnb.y = 20;	
			
			alkuRuutuBtn = new Button(Assets.getTakaisinNappi().getTexture("Takaisin_nappi0003"));
			this.addChild(alkuRuutuBtn)
			alkuRuutuBtn.x = 35;
			alkuRuutuBtn.y = 35;
		
		this.addEventListener(Event.TRIGGERED, soundOff)	
		this.addEventListener(Event.TRIGGERED, aloitusRuutu)
		}
		
		private function aloitusRuutu(event:Event):void 	// alku ruutuun takaisin meno
		{	
		var buttonClicked:Button = event.target as Button; 
		if((buttonClicked as Button) == alkuRuutuBtn){
		
			this.dispatchEvent(new NavigationEvent (NavigationEvent.CHANGE_SCREEN, {id:"Takaisin_nappi0002"}, true));
		}
		}
		private function soundOff(event:Event):void
		{
		var buttonClicked:Button = event.target as Button;
		if((buttonClicked as Button) == muteBtnb){
			SoundMixer.stopAll()			
		}
		}
		public function disposeTemporarily():void{
			this.visible = false;
		}
		public function initialize():void{
			this.visible = true;
		}
	}
}