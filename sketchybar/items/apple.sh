#!/usr/bin/env sh

POPUP_OFF="sketchybar --set apple.logo popup.drawing=off"
POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle"

sketchybar --add item           apple.logo left                             \
                                                                            \
           --set apple.logo     icon=$APPLE                                 \
                                icon.font="$FONT:Black:16.0"                \
                                icon.color=$MAGENTA                           \
                                background.padding_right=15                 \
                                label.drawing=off                           \
                                click_script="$POPUP_CLICK_SCRIPT"          \
                                                                            \
           --add item           apple.prefs popup.apple.logo                \
           --set apple.prefs    icon=$PREFERENCES                           \
                                icon.font="$FONT:Black:24.0"                \
                                icon.color=$WHITE                           \
                                icon.padding_left=10                        \
                                click_script="open -a 'System Preferences';
                                              $POPUP_OFF"                   \
                                                                            \
           --add item           apple.activity popup.apple.logo             \
           --set apple.activity icon=$ACTIVITY                              \
           icon.font="$FONT:Black:24.0"                \
                                icon.color=$WHITE                           \
                                icon.padding_left=10                        \
                                click_script="open -a 'Activity Monitor';
                                              $POPUP_OFF"\
                                                                            \
           --add item           apple.lock popup.apple.logo                 \
           --set apple.lock     icon=$LOCK                                  \
           icon.font="$FONT:Black:24.0"                \
                                icon.color=$WHITE                           \
                                icon.padding_left=10                        \
                                click_script="pmset displaysleepnow;
                                              $POPUP_OFF"
