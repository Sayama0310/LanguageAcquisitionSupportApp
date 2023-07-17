import curses


def print_center(stdscr, text):
    # 画面の中央にテキストを表示する関数
    y, x = stdscr.getmaxyx()
    x //= 2
    y //= 2
    x -= len(text) // 2
    stdscr.addstr(y, x, text)


def main_menu(stdscr):
    # メインメニューの画面を表示する関数
    stdscr.clear()
    stdscr.refresh()

    options = ["Registration", "Edit", "Delete", "Test", "Exit"]
    current_option = 0

    while True:
        stdscr.clear()
        print_center(stdscr, "Select mode")

        for i, option in enumerate(options):
            if i == current_option:
                stdscr.addstr("\n> " + option)
            else:
                stdscr.addstr("\n  " + option)

        stdscr.refresh()

        key = stdscr.getch()

        if key == curses.KEY_UP:
            current_option = (current_option - 1) % len(options)
        elif key == curses.KEY_DOWN:
            current_option = (current_option + 1) % len(options)
        elif key == ord("\n"):
            if current_option == len(options) - 1:
                break
            else:
                stdscr.clear()
                stdscr.addstr("Selected Mode: " + options[current_option])
                stdscr.refresh()
                stdscr.getch()


def registration_mode(stdscr):
    # 登録モードの処理を実行する関数
    stdscr.clear()
    stdscr.addstr("Registration Mode\n")
    stdscr.refresh()
    stdscr.getstr()


def edit_mode(stdscr):
    # 編集モードの処理を実行する関数
    stdscr.clear()
    stdscr.addstr("Edit Mode\n")
    stdscr.refresh()
    stdscr.getstr()


def deletion_mode(stdscr):
    # 削除モードの処理を実行する関数
    stdscr.clear()
    stdscr.addstr("Deletion Mode\n")
    stdscr.refresh()
    stdscr.getstr()


def test_mode(stdscr):
    # 試験モードの処理を実行する関数
    stdscr.clear()
    stdscr.addstr("Test Mode\n")
    stdscr.refresh()
    stdscr.getstr()


def main():
    stdscr = curses.initscr()
    curses.noecho()
    curses.cbreak()
    stdscr.keypad(True)

    try:
        while True:
            main_menu(stdscr)

            mode = main_menu(stdscr)
            if mode == "Registration":
                registration_mode(stdscr)
            elif mode == "Edit":
                edit_mode(stdscr)
            elif mode == "Delete":
                deletion_mode(stdscr)
            elif mode == "Test":
                test_mode(stdscr)
            else:
                break

    finally:
        curses.nocbreak()
        stdscr.keypad(False)
        curses.echo()
        curses.endwin()


if __name__ == "__main__":
    main()
