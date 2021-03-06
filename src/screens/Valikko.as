package screens
{
	import events.NavigationEvent;
	
	import flash.media.SoundChannel;
	import flash.media.SoundMixer;
	import flash.ui.Keyboard;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;

	public class Valikko extends Sprite
	{
		private var muteBtnb:Button;
		private var muteBtnT:Button;
		private var alkuRuutuBtn:Button;
		private var jatkaPelia:Button;
		
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
		this.addEventListener(Event.TRIGGERED, takaisinPeliin)
		}
		
		private function takaisinPeliin(event:Event):void
		{
		var buttonClicked:Button = event.target as Button 
		if((buttonClicked as Button) == jatkaPelia){
		}
		}
		
		private function aloitusRuutu(event:Event):void 	// alku ruutuun takaisin meno
		{	
		var buttonClicked:Button = event.target as Button; 
		if((buttonClicked as Button) == alkuRuutuBtn){
		
		this.dispatchEvent(new NavigationEvent (NavigationEvent.CHANGE_SCREEN, {id:"Takaisin_nappi0003"}, true));
		}
		}
		private function soundOff(event:Event):void
		{
		var buttonClicked:Button = event.target as Button;
		if((buttonClicked as Button) == muteBtnb){
		this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN,{id:"muteNappi"}, true))			
		SoundMixer.soundTransform.volume = 0;
		muteBtnb.visible = false;
		muteBtnT = new Button(Assets.getTexture("MuteBtnTwo"));
		this.addChild(muteBtnT)
		muteBtnT.x = 20;
		muteBtnT.y = 20;
		this.addEventListener(Event.TRIGGERED, soundOn)
		}
		}		
		private function soundOn(event:Event):void
		{
		var buttonClicked:Button = event.target as Button;
		if((buttonClicked as Button) == muteBtnT)
		{
		this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN,{id:"muteBtnTwo"}, true))
		SoundMixer.stopAll();
		muteBtnb.visible = true;
		muteBtnT.visible = false;
		
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