# frozen_string_literal: true

module Trigger
  VERSION = "0.1.0"

  # interface _Effect
  #   def cleanup: () -> void
  # end

  def self.exe
    p $PROGRAM_NAME, $0
  end
end
