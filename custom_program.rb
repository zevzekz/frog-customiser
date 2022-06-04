
require 'rubygems'
require 'gosu'

module ZOrder
  BACKGROUND, MIDDLE, TOP = *0..2
end

WIN_WIDTH = 640
WIN_HEIGHT = 400

class GameWindow < Gosu::Window

def initialize
	super(WIN_WIDTH, WIN_HEIGHT, false)
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
	@button_font = Gosu::Font.new(20)
	@background = Gosu::Color::WHITE
	@locs = [60,60]
end

def draw
	 Gosu.draw_rect(0, 0, WIN_WIDTH, WIN_HEIGHT, @background, ZOrder::BACKGROUND, mode=:default)
end

 def needs_cursor?
    true
  end
  
     def mouse_over_green?(mouse_x, mouse_y)
    if ((mouse_x > 100 and mouse_x < 200) and (mouse_y > 500 and mouse_y < 600))
      true
    else
      false
    end
  end
  
    def green_down(id)
    case id
    when Gosu::MsLeft
      @locs = [mouse_x, mouse_y]
      if mouse_over_green?(mouse_x, mouse_y)
        @greenfrog.draw(0, 0, z = ZOrder::TOP)
      else
      end
    end
  end


  
  Gosu.draw_rect(100, 500, 100, 100, Gosu::Color::GREEN, ZOrder::MIDDLE, mode=:default)
  
   def mouse_over_yellow?(mouse_x, mouse_y)
    if ((mouse_x > 200 and mouse_x < 300) and (mouse_y > 500 and mouse_y < 600))
      true
    else
      false
    end
  end
  
   Gosu.draw_rect(200, 500, 100, 100, Gosu::Color::YELLOW, ZOrder::MIDDLE, mode=:default)
   
   def mouse_over_red?(mouse_x, mouse_y)
    if ((mouse_x > 300 and mouse_x < 400) and (mouse_y > 500 and mouse_y < 600))
      true
    else
      false
    end
  end
  
  def red_down(id)
    case id
    when Gosu::MsLeft
      @locs = [mouse_x, mouse_y]
      if mouse_over_red?(mouse_x, mouse_y)
        @redfrog.draw(0, 0, z = ZOrder::TOP)
      else
      end
    end
  end
  
   Gosu.draw_rect(300, 500, 100, 100, Gosu::Color::RED, ZOrder::MIDDLE, mode=:default)
   
   def mouse_over_blue?(mouse_x, mouse_y)
    if ((mouse_x > 400 and mouse_x < 500) and (mouse_y > 500 and mouse_y < 600))
      true
    else
      false
    end
  end
  
  def blue_down(id)
    case id
    when Gosu::MsLeft
      @locs = [mouse_x, mouse_y]
      if mouse_over_blue?(mouse_x, mouse_y)
        @bluefrog.draw(0, 0, z = ZOrder::TOP)
      else
      end
    end
  end
  
   Gosu.draw_rect(400, 500, 100, 100, Gosu::Color::BLUE, ZOrder::MIDDLE, mode=:default)
  
   def mouse_over_big?(mouse_x, mouse_y)
    if ((mouse_x > 100 and mouse_x < 200) and (mouse_y > 600 and mouse_y < 700))
      true
    else
      false
    end
  end
  
  def big_down(id)
    case id
    when Gosu::MsLeft
      @locs = [mouse_x, mouse_y]
      if mouse_over_big?(mouse_x, mouse_y)
        @bigeyes.draw(0, 0, z = ZOrder::TOP)
      else
      end
    end
  end
  
   @button_font.draw("1", 100, 600, ZOrder::TOP, 1.0, 1.0, Gosu::Color::BLACK)
  
   def mouse_over_kermit?(mouse_x, mouse_y)
    if ((mouse_x > 200 and mouse_x < 300) and (mouse_y > 600 and mouse_y < 700))
      true
    else
      false
    end
  end
  
  def kermit_down(id)
    case id
    when Gosu::MsLeft
      @locs = [mouse_x, mouse_y]
      if mouse_over_kermit?(mouse_x, mouse_y)
        @kermiteyes.draw(0, 0, z = ZOrder::TOP)
      else
      end
    end
  end
  
   @button_font.draw("2", 200, 600, ZOrder::TOP, 1.0, 1.0, Gosu::Color::BLACK)
  
   def mouse_over_small?(mouse_x, mouse_y)
    if ((mouse_x > 300 and mouse_x < 400) and (mouse_y > 600 and mouse_y < 700))
      true
    else
      false
    end
  end
  
  def small_down(id)
    case id
    when Gosu::MsLeft
      @locs = [mouse_x, mouse_y]
      if mouse_over_small?(mouse_x, mouse_y)
        @smalleyes.draw(0, 0, z = ZOrder::TOP)
      else
      end
    end
  end
  
   @button_font.draw("3", 300, 600, ZOrder::TOP, 1.0, 1.0, Gosu::Color::BLACK)
  
   def mouse_over_happy?(mouse_x, mouse_y)
    if ((mouse_x > 100 and mouse_x < 200) and (mouse_y > 700 and mouse_y < 800))
      true
    else
      false
    end
  end
  
  def happy_down(id)
    case id
    when Gosu::MsLeft
      @locs = [mouse_x, mouse_y]
      if mouse_over_happy?(mouse_x, mouse_y)
        @happymouth.draw(0, 0, z = ZOrder::TOP)
      else
      end
    end
  end
  
   @button_font.draw("1", 100, 700, ZOrder::TOP, 1.0, 1.0, Gosu::Color::BLACK)
  
  def mouse_over_down?(mouse_x, mouse_y)
    if ((mouse_x > 200 and mouse_x < 300) and (mouse_y > 700 and mouse_y < 800))
      true
    else
      false
    end
  end
  
  def down_down(id)
    case id
    when Gosu::MsLeft
      @locs = [mouse_x, mouse_y]
      if mouse_over_down?(mouse_x, mouse_y)
        @downmouth.draw(0, 0, z = ZOrder::TOP)
      else
      end
    end
  end
  
   @button_font.draw("2", 200, 700, ZOrder::TOP, 1.0, 1.0, Gosu::Color::BLACK)
  
  def mouse_over_open?(mouse_x, mouse_y)
    if ((mouse_x > 300 and mouse_x < 400) and (mouse_y > 700 and mouse_y < 800))
      true
    else
      false
    end
  end
  
  def open_down(id)
    case id
    when Gosu::MsLeft
      @locs = [mouse_x, mouse_y]
      if mouse_over_open?(mouse_x, mouse_y)
        @openmouth.draw(0, 0, z = ZOrder::TOP)
      else
      end
    end
  end
  
   @button_font.draw("3", 300, 700, ZOrder::TOP, 1.0, 1.0, Gosu::Color::BLACK)
  
  def mouse_over_straight?(mouse_x, mouse_y)
    if ((mouse_x > 400 and mouse_x < 500) and (mouse_y > 700 and mouse_y < 800))
      true
    else
      false
    end
  end
  
  def straight_down(id)
    case id
    when Gosu::MsLeft
      @locs = [mouse_x, mouse_y]
      if mouse_over_straight?(mouse_x, mouse_y)
        @straightmouth.draw(0, 0, z = ZOrder::TOP)
      else
      end
    end
  end
  
  @button_font.draw("4", 400, 700, ZOrder::TOP, 1.0, 1.0, Gosu::Color::BLACK)
  
  end
  
  GameWindow.new.show