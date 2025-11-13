import curses
from curses import wrapper

# Initializing code
stdscr = curses.initscr()
curses.noecho()
curses.cbreak()
stdscr.keypad(True)

def main(stdscr):
    stdscr.clear()

    for i in range(0, 11):
        v = i-10
        stdscr.addstr(i, 0, '10 divided by {} is {}'.format(v, 10/v))

        stdscr.refresh()
        stdscr.getkey()

wrapper(main)

# Ending code
curses.nocbreak()
stdscr.keypad(False)
curses.echo()
curses.endwin()