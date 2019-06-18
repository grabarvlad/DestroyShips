package 
{
	import flash.events.TimerEvent;
	import net.flashpunk.World;
	 import flash.utils.*;
	 import flash.utils.Timer;

	
   
	public class MyWorld extends World
	{
		
		public function MyWorld() 
		{
			add(new Player());
			
			
			
	    var enemyNumber:int = 20;
		var updatetimer:Timer;
		updatetimer = new Timer(1000, enemyNumber);
		updatetimer.addEventListener(TimerEvent.TIMER, genEnemy);
		updatetimer.addEventListener(TimerEvent.TIMER_COMPLETE, ungenEnemy);
		updatetimer.start();
			
		}
	
		private function genEnemy(e:TimerEvent):void 
		{
			
			add(new Enemy);
		}
		
		public function ungenEnemy(e:TimerEvent):void 
		{
			trace("lEVEL COMPLITED!");
		}
		
	}

}