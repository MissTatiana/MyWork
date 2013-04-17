package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;


	
	public class Main extends Sprite
	{
		private var _paper:paperBase;
		
		private var _one:Array = [];
		private var _two:Array = [];
		private var _three:Array = [];
		
		public function Main()
		{
			_paper = new paperBase();
			_paper.x = 175;
			_paper.y = 175;
			this.addChild(_paper);
			
			getData();
			
		}
		
		private function getData():void
		{
			var ul:URLLoader = new URLLoader();
			ul.load(new URLRequest("insults.xml"));
			ul.addEventListener(Event.COMPLETE, onParse);
			
			
		}
		
		private function onParse(event:Event):void
		{
			var xmlData:XML = XML(event.currentTarget.data);
			
			for each(var insult:XML in xmlData.insult)
			{
				_one.push(insult.one);
				
				_two.push(insult.two);
				
				_three.push(insult.three);
			}
			
			genInsult(null);
			
		}
		
		private function genInsult(event:Event):void
		{
			var randomOneIndex:uint = Math.random() * _one.length;
			var randomOne:String = _one[Math.round(randomOneIndex)];
			
			var randomTwoIndex:uint = Math.random() * _two.length;
			var randomTwo:String = _two[Math.round(randomTwoIndex)];
			
			var randomThreeIndex:uint = Math.random() * _three.length;
			var randomThree:String = _three[Math.round(randomThreeIndex)];
			
			_paper.tfOne.text = randomOne;
			
			_paper.tfTwo.text = randomTwo;
			
			_paper.tfThree.text = randomThree;
		}
		
	}
}