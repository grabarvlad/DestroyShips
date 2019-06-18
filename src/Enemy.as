package 
{
	import flash.display.Sprite;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	import flash.utils.*;

	public class Enemy extends Entity	
	{
		
		[Embed(source = "enemy.png")]private const ENEMY:Class;
		
	
		private var maxgen:int = 10;
		private var sprite:Image =new Image(ENEMY);
		public function Enemy() 
		{
			super(x, y);
		  setHitbox (sprite.width, sprite.height, sprite.width / 2, sprite.height / 2);
		  type = "enemy";
		  
			graphic = sprite;
		 x = Math.round(Math.random() * 300);
		 y = 30;
		sprite.centerOrigin();
		
		
		
		}
		
		
		
		override public function update():void 
		{
			y += 4;
			if (collide("bullet", x , y)){
				world.remove(this);
			}
			if (y > 600){
				world.remove(this);
				
			}
		
	
		
		}
		 
		
	}

}