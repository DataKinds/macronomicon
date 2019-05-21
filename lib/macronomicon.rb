require "macronomicon/version"
require "macronomicon/editor"

module Macronomicon
  class Key
    def init(keystring)
      # key uses Emacs format
      # that is, C- for control and M- for alt

      if keystring =~ / /
        end/throw "Invalid keystring ${keystring}"
      
      
    end
  end
  
  class Error < StandardError; end
 
  ################################
  # BEGIN GLOBAL CONFIGURATION   #
  ################################
  $ED = Editor.new
  $KBD = {}

  #####################
  # BEGIN MAIN LOOP   #
  #####################
  $ED.init_curses
  loop do 
    $ED.draw
    $ED.input
    sleep 0.1
  end
  $ED.deinit_curses
end











