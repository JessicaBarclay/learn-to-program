
def table
  
  title = "Table of Contents"
  pages = ["page 1", "page 9", "page 13"]
  chapters = ["Chapter 1: Getting started","Chapter 2: Numbers","Chapter 3: Letters"]

  linewidth = 40

  puts title.center(linewidth), + "\n"
  puts (chapters[0].ljust(linewidth)) + (pages[0].rjust(linewidth))
  puts (chapters[1].ljust(linewidth)) + (pages[1].rjust(linewidth))
  puts (chapters[1].ljust(linewidth)) + (pages[2].rjust(linewidth))

end


table
