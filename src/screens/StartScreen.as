package screens
{
	import com.greensock.TweenLite;
	
	import events.NavigationEvent;
	
	import flash.events.MouseEvent;
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
		private var mainSCSound:Sounds		

		private var kuva:Image;
		
		private var playBtn:Button;
		private var muteBtn:Button;
		private var muteBtnTwo:Button
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
	
		playBtn = new Button(Assets.getAloitus().getTexture("Aloita_peli0000")); 
		this.addChild(playBtn);
		playBtn.x = 320
		playBtn.y = 240;
		
		muteBtn = new Button(Assets.getTexture("muteNappi"));
		this.addChild(muteBtn);
		muteBtn.x = 20;
		muteBtn.y = 440;

		this.addEventListener(Event.TRIGGERED, onMainMenuClick);
		this.addEventListener(Event.TRIGGERED, soundOff);
	}	
		private function soundOff(event:Event):void
		{
		var buttonClicked:Button = event.target as Button;
		if ((buttonClicked as Button) == muteBtn){	
		muteBtn.visible = false;
		SoundMixer.stopAll()	
			
		muteBtnTwo = new Button(Assets.getTexture("MuteBtnTwo"));
		this.addChild(muteBtnTwo)
		muteBtnTwo.x = 20;
		muteBtnTwo.y = 440;	
		this.addEventListener(Event.TRIGGERED, SoundOn);
			}
		}			
		private function SoundOn(event:Event):void
		{
		var buttonClicked:Button = event.target as Button;
		if((buttonClicked as Button) == muteBtnTwo){
			muteBtnTwo.visible = false;
			muteBtn.visible = true;				
		}
		}
		private function onMainMenuClick (event:Event):void
	{
	var buttonClicked:Button = event.target as Button;
	if ((buttonClicked as Button) == playBtn)
		{
		this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"AloitusNappi"}, true)); 
		SoundMixer.stopAll()
		if (!Sounds.muted)Sounds.peliMusiikki.play();	
		this.addEventListener(MouseEvent.MOUSE_OUT, AloitusToinen);	
	}
	}
		private function AloitusToinen(event:MouseEvent):void
		{
		playBtn = Button(Assets.getAloitus().getTexture("Aloita_peli000")); 
		this.addChild(playBtn);
		playBtn.x = 320;
		playBtn.y = 240;
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