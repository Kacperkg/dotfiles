#!/usr/bin/env bash

COLOR="$WHITE"

sketchybar --add item clock right \
	--set clock update_freq=1 \
	label.color="$COLOR" \
	label.padding_right=5 \
	label.width=100 \
	align=center \
	background.height=30 \
	background.corner_radius="$CORNER_RADIUS" \
	background.padding_right=2 \
	background.border_width="$BORDER_WIDTH" \
	background.border_color="$COLOR" \
	background.color="$BAR_COLOR" \
	background.drawing=on \
	script="$PLUGIN_DIR/clock.sh"