from libqtile import layout
from .themes import theme
from .floating import floating_layout

layouts = [
    layout.Columns(
        border_focus = theme["primary"],
        border_normal = theme["background"],
        border_on_single=True,
        border_width=2,
        margin=[6, 5, 8, 5],
    ),
    floating_layout
    # layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

