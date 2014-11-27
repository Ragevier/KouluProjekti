package objects
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Kasvit extends Sprite
	{
		private var kasviYks:Image;
		private var kasviKaksi:Image
		public function Kasvit()
		{
		
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage():void
		{
		this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		kasvitArt();
		}
		
		private function kasvitArt():void
		{
		//kasviYks = new Image(Assets.getKasvit().getTexture("ahomansikka"));
		//this.addChild(kasviYks)
		
		//kasviKaksi = new Image(Assets.getKasvit().getTexture("kanerva"));
		//this.addChild(kasviKaksi)
		}
	}
}