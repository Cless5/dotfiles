from libqtile import bar, widget
from libqtile.widget import base

from .themes import theme

widget_defaults = dict(
    font="Iosevka NF",  # Replace your font here
    fontsize=13,
    padding=3,
    background=theme["background"],
    foreground=theme["foreground"]
)

extension_defaults = widget_defaults.copy()

def power_arrow(bg, fg) -> widget.TextBox:
    return widget.TextBox(
            text="",
            background=bg,
            foreground=fg,
            fontsize=55,
            padding=-5
            )

_bar = bar.Bar(
        [
            widget.TextBox(
                text="",
                padding=15
                ),
            widget.WindowName(),
            widget.Spacer(),
            widget.GroupBox(
                block_highlight_text_color=theme["background"],
                padding=10,
                active=theme["secondary"],
                inactive=theme["background2"],
                highlight_color=theme["primary"],
                highlight_method="line",
                this_current_screen_border=theme["foreground"],
            ),
            widget.Spacer(),
            widget.Systray(),
            power_arrow(theme["background"], theme["primary"]),
            widget.Clock(
                format="  %Y-%m-%d",
                background=theme["primary"],
                foreground=theme["background"]
                ),
            power_arrow(theme["primary"], theme["secondary"]),
            widget.Clock(
                format="  %H:%M",
                background=theme["secondary"],
                foreground=theme["background"]
                ),
            power_arrow(theme["secondary"], theme["primary"]),
            widget.Battery(
                format="{char}{percent: 2.0%}",
                charge_char="󰂄",
                discharge_char="󰁹",
                unknow_char="󰂑",
                background=theme["primary"],
                foreground=theme["background"]
                ),
            power_arrow(theme["primary"], theme["background2"]),
            widget.QuickExit(
                default_text="󰗼",
                countdown_format="{}",
                background=theme["background2"],
                foreground=theme["red"],
                padding=15,
                fontsize=25,
                ),
            ],
        40,
        margin=[6,5,3,5]
        )
