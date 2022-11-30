require "tty-box"
require "tty-font"

font = TTY::Font.new(:standard)
puts font.write("DECISION MAKER")
box = TTY::Box.frame(padding: 3, align: :center, enable_color: true, border: :thick, title: {
                       top_left: "DECISION MAKER",
                     },
                     style: {
                       fg: :bright_yellow,
                       bg: :bright_blue,
                       border: {
                         bg: :bright_yellow,
                         fg: :bright_red,
                       },

                     }) do "Welcome to DECISION MAKER™. Type an option and press Enter. Type END when you are done. All DECISION MAKER™ decisions are final." end
print box
options = []
option = ""
while option != "END"
  option = gets.chomp
  options << option
end
if option == "END"
  options.pop
  box2 = TTY::Box.frame("Go with #{options.sample}, you won't regret it.", align: :center, title: { top_left: "DECISION MAKER" },
                                                                           style: {
                                                                             fg: :bright_yellow,
                                                                             bg: :bright_blue,
                                                                             border: {
                                                                               bg: :bright_yellow,
                                                                               fg: :bright_red,
                                                                             },

                                                                           })
  print box2
end
