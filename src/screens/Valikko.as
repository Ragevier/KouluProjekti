package screens
{
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;

	public class Valikko extends Sprite
	{
		private var muteBtn:Button
		private var alkuRuutuBtn:Button
		
		public function Valikko()
		{
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
					
		}
		
		private function onAddedToStage(event:Event):void
		{
		this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage)
		Valikkoruutu()
		}
		
		private function Valikkoruutu():void
		{
			muteBtn = new Button(Assets.getTexture("MuteNappi"));
			this.addChild(muteBtn)
			muteBtn.x = 20;
			muteBtn.y = 20;	
			
			alkuRuutuBtn = new Button(Assets.getTakaisinNappi().getTexture("Takaisin_nappi0003"));
			this.addChild(alkuRuutuBtn)
			alkuRuutuBtn.x = 35;
			alkuRuutuBtn.y = 35;
		}
	}
}