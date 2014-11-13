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
		private var MainSCSound:Sound		
		
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
			MainSCSound = (Assets.getSound("SCmusic"));
			MainSCSound.play();
			
			bg = new Image(Assets.getTexture("AlkuRuutu"));
			this.addChild(bg);
	
			//title = new Image(Assets.getTexture("Title"));
			//title.x = 440;
			//title.y = 30;
			//this.addChild(title);
			
			playBtn = new Button(Assets.getTexture("Nappi"));
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
		this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"play"}, true)); 
		}
	}
	public function disposeTemporarily():void
	{
		this.visible = false;
		
		//if(this.hasEventListener(Event.ENTER_FRAME)) this.removeEventListener(Event.ADDED_TO_STAGE,)
	}
	public function initialize():void
	{
		this.visible = true;
		}		
	}
}	