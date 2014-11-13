package screens
{
	import events.NavigationEvent;
	
	import flash.media.Sound;
	
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class InGame extends Sprite
	
	{
		private var GS:Image;    //GameScreen a.k.a GameBackground
		private var BgMusic:Sound
		
		public function InGame()
		{
		
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);	
			drawGame();
		}
		
		private function drawGame():void
		{
			GS = new Image(Assets.getTexture("InsertGSTähän")); //tai  getAssets
			this.addChild(GS)
			
			BgMusic = (Assets.getSound("BgMusic"));
			BgMusic.play()	
		
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