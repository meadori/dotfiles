Config {
   font = "xft:monospace-8",
   bgColor = "black",
   fgColor = "grey",
   position = Top,
   lowerOnStart = True
   commands = [
      Run Network "wlp3s0" ["-L", "0", "-H", "32", "--normal",
                            "green", "--high", "red"] 10,
      Run Cpu ["-L", "3", "-H", "50", "--normal", "green", "--high", "red"] 10,
      Run Battery ["-t", "<left>% / <timeleft>", "-L", "50", "-H", "75",
                   "-h", "green", "-n", "yell", "-l", "red"] 10,
      Run Memory ["-t", "Mem: <usedratio>%"] 10,
      Run Swap [] 10,
      Run Com "uname" ["-s", "-r"] "" 36000,
      Run Date "%a %b %_d %Y %H:%M:%S" "date" 10,
      Run StdinReader
   ],
   sepChar = "%",
   alignSep = "}{",
   template = "%StdinReader% }{ %cpu% <fc=#6c71c4>>></fc> %memory% * %swap% <fc=#6c71c4>>></fc> %wlp3s0% <fc=#6c71c4>>></fc> %battery% <fc=#6c71c4>>></fc> <fc=#ee9a00>%date%</fc> <fc=#6c71c4>>></fc> %uname%"
       }

