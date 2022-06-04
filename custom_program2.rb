
require 'rubygems'
require 'gosu'

module ZOrder
  BACKGROUND, MIDDLE, TOP = *0..2
end

WIN_WIDTH = 500
WIN_HEIGHT = 800

class GameWindow < Gosu::Window

def initialize
	super(WIN_WIDTH, WIN_HEIGHT, false)
	self.caption = "Frog Customiser"
	@waterdrop = Gosu::Sample.new("images/waterdrop.wav")
	@bubbles = Gosu::Song.new("images/bubbles.mp3")
	@bubbles.volume = 0.03
	@header = Gosu::Image.new("images/header.png")
	@endscreen = Gosu::Image.new("images/endscreen.png")
	@greenfrog = Gosu::Image.new("images/green.png")
	@yellowfrog = Gosu::Image.new("images/yellow.png")
	@redfrog = Gosu::Image.new("images/red.png")
	@bluefrog = Gosu::Image.new("images/blue.png")
	@bigeyes = Gosu::Image.new("images/big.png")
	@kermiteyes = Gosu::Image.new("images/kermit.png")
	@smalleyes = Gosu::Image.new("images/small.png")
	@happymouth = Gosu::Image.new("images/happy.png")
	@downmouth = Gosu::Image.new("images/down.png")
	@openmouth = Gosu::Image.new("images/open.png")
	@straightmouth = Gosu::Image.new("images/straight.png")
	@menu = Gosu::Image.new("images/menu2.png")
	@row1 = nil
	@row2 = nil
	@row3 = nil
	@row4 = nil
	@button_font = Gosu::Font.new(20)
	@background = Gosu::Color::WHITE
	@locs = [60,60]
end

def draw
	 Gosu.draw_rect(0, 0, WIN_WIDTH, WIN_HEIGHT, @background, ZOrder::BACKGROUND, mode=:default)
	 #Gosu.draw_rect(100, 500, 100, 100, Gosu::Color::GREEN, ZOrder:: MIDDLE)
	 #Gosu.draw_rect(200, 500, 100, 100, Gosu::Color::YELLOW, ZOrder:: MIDDLE, mode=:default)
	 #Gosu.draw_rect(300, 500, 100, 100, Gosu::Color::RED, ZOrder:: MIDDLE, mode=:default)
	 #Gosu.draw_rect(400, 500, 100, 100, Gosu::Color::BLUE, ZOrder:: MIDDLE, mode=:default)
	 #@button_font.draw_text("1", 100, 600, ZOrder::MIDDLE, 1.0, 1.0, Gosu::Color::BLACK)
	 #@button_font.draw_text("2", 200, 600, ZOrder::MIDDLE, 1.0, 1.0, Gosu::Color::BLACK)
	 #@button_font.draw_text("3", 300, 600, ZOrder::MIDDLE, 1.0, 1.0, Gosu::Color::BLACK)
	 #@button_font.draw_text("1", 100, 700, ZOrder::MIDDLE, 1.0, 1.0, Gosu::Color::BLACK)
	 #@button_font.draw_text("2", 200, 700, ZOrder::MIDDLE, 1.0, 1.0, Gosu::Color::BLACK)
	 #@button_font.draw_text("3", 300, 700, ZOrder::MIDDLE, 1.0, 1.0, Gosu::Color::BLACK)
	 # @button_font.draw_text("4", 400, 700, ZOrder::MIDDLE, 1.0, 1.0, Gosu::Color::BLACK)
	 @header.draw(0, 0, z = ZOrder::MIDDLE)
	 @menu.draw(0, 500, z = ZOrder::MIDDLE)
	 if @row1 == 0
		@greenfrog.draw(0, 0, z = ZOrder::MIDDLE)
	 elsif @row1 == 1
		 @yellowfrog.draw(0, 0, z = ZOrder::MIDDLE)
	elsif @row1 == 2
		@redfrog.draw(0, 0, z = ZOrder::MIDDLE)
	elsif @row1 == 3
		@bluefrog.draw(0, 0, z = ZOrder::MIDDLE)
	end
		
	if @row2 == 0
		@bigeyes.draw(0, 0, z = ZOrder::MIDDLE)
	elsif @row2 == 1
		@kermiteyes.draw(0, 0, z = ZOrder::MIDDLE)
	elsif @row2 == 2
		@smalleyes.draw(0, 0, z = ZOrder::MIDDLE)
	end	
	
	if @row3 == 0
		@happymouth.draw(0, 0, z = ZOrder::MIDDLE)
	elsif @row3 == 1
		@downmouth.draw(0, 0, z = ZOrder::MIDDLE)
	elsif @row3 == 2
		@openmouth.draw(0, 0, z = ZOrder::MIDDLE)
	elsif @row3 == 3
		@straightmouth.draw(0, 0, z = ZOrder::MIDDLE)
	end
	
	if @row4 == 0
		 @endscreen.draw(0, 500, z = ZOrder::TOP)
	end
end
 
 def needs_cursor?
    true
  end
  
  def area_clicked(leftX, topY, rightX, bottomY)
    if (mouse_x > leftX && mouse_x < rightX && mouse_y > topY && mouse_y < bottomY)
        return true
    else
        return false
    end
  end
  
  
	def update 
	@bubbles.play
		if Gosu.button_down? Gosu::MsLeft
			if area_clicked(100,500,200,600)
				@row1 = 0	
				@waterdrop.play
			elsif area_clicked(200,500,300,600)
				@row1 = 1
				@waterdrop.play
			elsif area_clicked(300,500,400,600)
				@row1 = 2
				@waterdrop.play
			elsif area_clicked(400,500,500,600)
				@row1 = 3
				@waterdrop.play
			elsif area_clicked(100,600,200,700)
				@row2 = 0
				@waterdrop.play
			elsif area_clicked(200,600,300,700)
				@row2 = 1
				@waterdrop.play
			elsif area_clicked(300,600,400,700)
				@row2 = 2
				@waterdrop.play
			elsif area_clicked(100,700,200,800)
				@row3 = 0
				@waterdrop.play
			elsif area_clicked(200,700,300,800)
				@row3 = 1
				@waterdrop.play
			elsif area_clicked(300,700,400,800)
				@row3 = 2
				@waterdrop.play
			elsif area_clicked(400,700,500,800)
				@row3 = 3
				@waterdrop.play
			elsif area_clicked(400, 0, 500, 75)
				@row4 = 0
			end
		end
	end
	
	def button_down(id)
    if id == Gosu::KB_ESCAPE
      close
    else
      super
    end
  end
 
  
  end
  
  GameWindow.new.show