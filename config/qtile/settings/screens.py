from libqtile.config import Screen

from .widgets import _bar

screens = [
    Screen(
        bottom=_bar,
    ),
]
