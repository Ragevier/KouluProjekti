package objects
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	
	public class Elaimet extends Sprite
	{
		
		private var harakka1:Image;
		private var hiiri1:Image;
		private var ikalavo:Image;
		private var pkalavo:Image;
		private var janisov1:Image;
		private var msorsa:Image;
		private var nsorsa:Image;
		private var muurahaiset1:Image;
		private var muurahaiskeko:Image;
		private var orava1:Image;
		private var perhonen:Image;
		private var varis1:Image;
		private var siiliov1:Image;
		private var sudenkorento_ylos1:Image;
		private var rastas1:Image;
		
		
		
		public function Elaimet()
		{
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage)
		this.addEventListener(starling.events.TouchEvent, onTouch)
		}
		
		private function onTouch(te:TouchEvent):void
		{
		if(te.getTouch(harakka1, TouchPhase.BEGAN)){
			harakka1.visible = false;
		
		}else if (te.getTouch(hiiri1, TouchPhase.BEGAN)){
			hiiri1.visible = false;
			
		}else if(te.getTouch(ikalavo, TouchPhase.BEGAN)){
			ikalavo.visible = false;
			
		}else if(te.getTouch(pkalavo, TouchPhase.BEGAN)){
			pkalavo.visible = false;
			
		}else if(te.getTouch(janisov1, TouchPhase.BEGAN)){
			janisov1.visible = false;
		
		}else if(te.getTouch(msorsa, TouchPhase.BEGAN)){
			msorsa.visible = false;
			
		}else if(te.getTouch(nsorsa, TouchPhase.BEGAN)){
			nsorsa.visible = false;
			
		}else if(te.getTouch(muurahaiset1, TouchPhase.BEGAN)){
			muurahaiset1.visible = false;
			
		}else if(te.getTouch(muurahaiskeko, TouchPhase.BEGAN)){
			muurahaiskeko.visible = false;
			
		}else if(te.getTouch(orava1, TouchPhase.BEGAN)){
			orava1.visible = false;
			
		}else if(te.getTouch(perhonen, TouchPhase.BEGAN)){
			perhonen.visible  = false;
			
		}else if(te.getTouch(varis1, TouchPhase.BEGAN)){
			varis1.visible = false;
			
		}else if(te.getTouch(siiliov1, TouchPhase.BEGAN)){
			siiliov1.visible = false;
			
		}else if(te.getTouch(sudenkorento_ylos1, TouchPhase.BEGAN)){
			sudenkorento_ylos1.visible = false;
			
		}else if(te.getTouch(rastas1, TouchPhase.BEGAN)){
			rastas1.visible = false;
			//eläinten kuva painellukset
		}
		}
		
		private function onAddedToStage(event:Event):void
		{
		this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage)
		elainArt();
		}
		
		private function elainArt():void
		{
			
		harakka1 = new Image(Assets.getPienElain().getTexture("Harakka"));
		this.addChild(harakka1)
		harakka1.x = ;
		harakka1.y = ;
		
		hiiri1 = new Image(Assets.getPienElain().getTexture("Hiiri"));
		this.addChild(hiiri1)
		hiiri1.x = ;
		hiiri1.y = ;
		
		ikalavo = new Image(Assets.getPienElain().getTexture("Hauki"));
		this.addChild(ikalavo)
		ikalavo.x = ;
		ikalavo.y = ;
		
		pkalavo = new Image(Assets.getPienElain().getTexture("Ahven"));
		this.addChild(pkalavo)
		pkalavo.x = ;
		pkalavo.y = ;
		
		janisov1 = new Image(Assets.getPienElain().getTexture("Jänis"));
		this.addChild(janisov1)
		janisov1.x = ;
		janisov1.y = ;
		
		msorsa = new Image(Assets.getPienElain().getTexture("Sorsa"));
		this.addChild(msorsa)
		msorsa.x = ;
		msorsa.y = ;
		
		nsorsa = new Image(Assets.getPienElain().getTexture("nsorsa"));
		this.addChild(nsorsa)
		nsorsa.x = ;
		nsorsa.y = ;
		
		muurahaiset1 = new Image(Assets.getPienElain().getTexture("Muurahainen"));
		this.addChild(muurahaiset1)
		muurahaiset1.x = ;
		muurahaiset1.y = ;
		
		muurahaiskeko = new Image(Assets.getPienElain().getTexture("Muurahaiskeko"));
		this.addChild(muurahaiskeko)
		muurahaiskeko.x = ;
		muurahaiskeko.y = ;
		
		orava1 = new Image(Assets.getPienElain().getTexture("Orava"));
		this.addChild(orava1)
		orava1.x = ;
		orava1.y = ;
		
		perhonen = new Image(Assets.getPienElain().getTexture("Nokkosperhonen"));
		this.addChild(perhonen)
		perhonen.x = ;
		perhonen.y = ;
		
		varis1 = new Image(Assets.getPienElain().getTexture("Varis"));
		this.addChild(varis1)
		varis1.x = ;
		varis1.y = ;
		
		siiliov1 = new Image(Assets.getPienElain().getTexture("Siili"));
		this.addChild(siiliov1)
		siiliov1.x = ;
		siiliov1.y = ;
		
		sudenkorento_ylos1 = new Image(Assets.getPienElain().getTexture("Sudenkorento"));
		this.addChild(sudenkorento_ylos1)
		sudenkorento_ylos1.x = ;
		sudenkorento_ylos1.y = ;
		
		rastas1 = new Image(Assets.getPienElain().getTexture("Rastas"));
		this.addChild(rastas1)
		rastas1.x = ;
		rastas1.y = ;
		
			
			
		//kuvat tähän
			
		}
	}
}