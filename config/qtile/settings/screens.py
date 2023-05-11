from libqtile.config import Screen

from .widgets import _bar

screens = [
    Screen(
        top=_bar,
    ),
]
