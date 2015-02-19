package screens
{
	import starling.display.Button;
	import starling.display.Sprite;
	
	public class KansioKasvit2 extends Sprite
	{
		private var oravanmarjaT:Button
		private var oravanmarja:Button
		private var piharatamoT:Button
		private var piharatamo:Button
		private var punaapilaT:Button
		private var punaapila:Button
		private var puolukkaT:Button
		private var puolukka:Button
		private var paivankakkaraT:Button
		private var paivankakkara:Button
		private var sinivuokkoT:Button
		private var sinivuokko:Button
		private var vadelmaT:Button
		private var	vadelma:Button
		private var valkoapilaT:Button
		private var valkoapila:Button
		private var valkovuokkoT:Button
		private var valkovuokko:Button
		private var voiKukka:Button
		private var voiKukkaT:Button
		
		
		
		public function KansioKasvit2()
		{
			oravanmarjaT =  new Button(Assets.getLaatKasvi2().getTexture("Tunt Oravanmarja")); //kasvi2   Tuntematon
			oravanmarjaT.x = 25;
			oravanmarjaT.y = 40;
			oravanmarjaT.visible = false;
			this.addChild(oravanmarjaT)
			
			oravanmarja =  new Button(Assets.getLaatKasvi2().getTexture("Oravanmarja")); //kasvi2
			oravanmarja.x = 25;
			oravanmarja.y = 40;
			oravanmarja.visible = false;
			this.addChild(oravanmarja);
			
			piharatamoT =  new Button(Assets.getLaatKasvi2().getTexture("Tunt Piharatamo")); //kasvi2  Tuntematon
			piharatamoT.x = 160;	
			piharatamoT.y = 40;
			piharatamoT.visible = false;
			this.addChild(piharatamoT)
			
			piharatamo =  new Button(Assets.getLaatKasvi2().getTexture("piharatamo")); //kasvi2
			piharatamo.x = 160;	
			piharatamo.y = 40;
			piharatamo.visible = false;
			this.addChild(piharatamo);
			
			punaapilaT =  new Button(Assets.getLaatKasvi2().getTexture("Tunt Puna-apila")); //kasvi2 Tuntematon
			punaapilaT.x = 25;	
			punaapilaT.y = 140;
			punaapilaT.visible = false;
			this.addChild(punaapilaT)
			
			punaapila =  new Button(Assets.getLaatKasvi2().getTexture("Puna-apila")); //kasvi2
			punaapila.x = 25;	
			punaapila.y = 140;
			punaapila.visible = false;
			this.addChild(punaapila);
			
			puolukkaT = new Button(Assets.getLaatKasvi1().getTexture("Tuntematon puolukka")); //kasvi1 Tuntematon
			puolukkaT.x = 160;	
			puolukkaT.y = 140;
			puolukkaT.visible = false;
			this.addChild(puolukkaT)
			
			puolukka = new Button(Assets.getLaatKasvi1().getTexture("Puolukka ")); //kasvi1
			puolukka.x = 160;	
			puolukka.y = 140;
			puolukka.visible = false;
			this.addChild(puolukka)
			
			paivankakkaraT = new Button(Assets.getLaatKasvi3().getTexture("tuntPäivänakkara")); //kasvi3 Tuntematon
			paivankakkaraT.x = 160;	
			paivankakkaraT.y = 240;
			paivankakkaraT.visible = false;
			this.addChild(puolukkaT)
			
			paivankakkara = new Button(Assets.getLaatKasvi3().getTexture("Päivänkakkara ")); //kasvi3
			paivankakkara.x = 160;	
			paivankakkara.y = 240;
			paivankakkara.visible = false;
			this.addChild(paivankakkara)
			
			sinivuokkoT = new Button(Assets.getLaatKasvi1().getTexture("Tunt Sinivuokko")); //kasvi2 Tuntematon
			sinivuokkoT.x = 25;	
			sinivuokkoT.y = 240; 	
			this.addChild(sinivuokkoT)	
			
			sinivuokko = new Button(Assets.getLaatKasvi1().getTexture("Sinivuokko ")); //kasvi2 Tuntematon
			sinivuokko.x = 25;	
			sinivuokko.y = 240;                                           
			sinivuokko.visible = false;
			this.addChild(sinivuokko)
			
			vadelmaT = new Button(Assets.getLaatKasvi1().getTexture("Tuntematon Vadelma")); //kasvi1 Tuntematon
			vadelmaT.x = 25;
			vadelmaT.y = 340;
			vadelmaT.visible = false;
			this.addChild(vadelmaT)
			
			vadelma = new Button(Assets.getLaatKasvi1().getTexture("Vadelma")); //kasvi1
			vadelma.x = 25;
			vadelma.y = 340;
			vadelma.visible = false;
			this.addChild(vadelma)
			
			valkoapilaT = new Button(Assets.getLaatKasvi2().getTexture("Tunt Valkoapila")); //kasvi2 Tuntematon
			valkoapilaT.x = 160;	
			valkoapilaT.y = 340;
			valkoapila.visible = false;
			this.addChild(valkoapilaT)	
			
			valkoapila = new Button(Assets.getLaatKasvi2().getTexture("Valkoapila")); //kasvi2
			valkoapila.x = 160;	
			valkoapila.y = 340;
			valkoapila.visible = false;  			// 8
			this.addChild(valkoapila)
			
			valkovuokkoT = new Button(Assets.getLaatKasvi2().getTexture("Tunt Valkovuokko")); //kasvi2 Tuntematon
			valkovuokkoT.x = 25;	 
			valkovuokkoT.y = 40;
			valkovuokkoT.visible = false;
			this.addChild(valkovuokkoT)
			
			valkovuokko = new Button(Assets.getLaatKasvi2().getTexture("Valkovuokko")); //kasvi2
			valkovuokko.x = 25;	
			valkovuokko.y = 40;
			valkovuokko.visible = false;	
			this.addChild(valkovuokko)
			
			voiKukkaT = new Button(Assets.getLaatKasvi2().getTexture("Tunt Voikukka"));  //kasvi2 Tuntematon
			voiKukkaT.x = 160;	
			voiKukkaT.y = 40;	
			voiKukkaT.visible = false;
			this.addChild(voiKukkaT)
			
			voiKukka = new Button(Assets.getLaatKasvi2().getTexture("Voikukka"));  //kasvi2
			voiKukka.x = 160;	
			voiKukka.y = 40;
			voiKukka.visible = false;
			this.addChild(voiKukka)	

		}
	}
}