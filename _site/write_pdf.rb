#!/usr/bin/ruby

require "cairo"

class Numeric
	def mm
		self / 0.352777778
	end
end

surface = Cairo::PDFSurface.new("my.pdf", 100.mm, 148.mm)
context = Cairo::Context.new(surface)
context.move_to 20.mm, 80.mm
context.select_font_face "vlgothic"
context.set_font_size 13
context.show_text "北海道釧路市黒金町 レジデンス黒金"
context.move_to 20.mm, 80.mm + 13
context.show_text "株式会社アクティス 釧路事業所"
context.stroke
surface.finish
