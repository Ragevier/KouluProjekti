package screens
{
	import com.greensock.TweenLite;
	import flash.media.Sound
	
	import events.NavigationEvent;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
		
	public class StartScreen extends Sprite
	{
			
		private var bg:Image;
		private var title:Image;
		private var MainSCSound:Sound;		
		
		private var playBtn:Button;
			
		public function StartScreen()
		{
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		private function onAddedToStage(event:Event):void
		{
		drawScreen();
		}
		
		private function drawScreen():void
		{
			MainSCSound = (Assets.getSound("SSmusic"));
			MainSCSound.play();
			
			bg = new Image(Assets.getTexture("Aloitus")); // Aloitus ruudun embode class " " sisälle
			this.addChild(bg);
	
			playBtn = new Button(Assets.getTexture("AloitusNappi")); 
			this.addChild(playBtn);
			playBtn.x = 450;
			playBtn.y = 260;
			this.addEventListener(Event.TRIGGERED, onMainMenuClick);
		}

	private function onMainMenuClick (event:Event):void
	{
	var buttonClicked:Button = event.target as Button;
	if ((buttonClicked as Button) == playBtn)
		{
		this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"AloitusNappi"}, true)); 
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