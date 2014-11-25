package screens
{
	import com.greensock.TweenLite;
	
	import events.NavigationEvent;
	
	import flash.media.Sound;
	import flash.media.SoundMixer;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	
	
	public class StartScreen extends Sprite
	{
			
		private var bg:Image;
		private var title:Image;
		private var mainSCSound:Sound;		
		
		private var playBtn:Button;
		private var muteBtn:Button;
		private var randomBtn:Image;
		private var randBtn:Image;
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
			if(!Sounds.muted)Sounds.alkuRuutu.play();														
			
			bg = new Image(Assets.getTexture("Aloitus")); 
			this.addChild(bg);
	
			playBtn = new Button(Assets.getTexture("AloitusNappi")); 
			this.addChild(playBtn);
			playBtn.x = 450;
			playBtn.y = 260;
		
			muteBtn = new Button(Assets.getTexture("muteNappi"));
			this.addChild(muteBtn);
			muteBtn.x = 20;
			muteBtn.y = 440;
			
			this.addEventListener(Event.TRIGGERED, onMainMenuClick);
			this.addEventListener(Event.TRIGGERED, onSoundMuted);
		}
		
		private function onSoundMuted(event:Event):void
		{
			var buttonClicked:Button = event.target as Button;
			if ((buttonClicked as Button) == muteBtn)	
			SoundMixer.stopAll()
		}	
	private function onMainMenuClick (event:Event):void
	{
	var buttonClicked:Button = event.target as Button;
	if ((buttonClicked as Button) == playBtn)
		{
		this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"AloitusNappi"}, true)); 
		SoundMixer.stopAll()
		if (!Sounds.muted)Sounds.peliMusiikki.play();	
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