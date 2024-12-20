#! /usr/bin/env bash

for theme in '' '-Purple' '-Pink' '-Red' '-Orange' '-Yellow' '-Green' '-Blue' '-Grey'; do
    for type in '' '-Neo' '-Trinity'; do
        case "$theme" in
            '')
                theme_color_dark='#27a1b9'
                theme_color_light='#006a83'
                ;;
            -Purple)
                theme_color_dark='#9d7cd8'
                theme_color_light='#7847bd'
                ;;
            -Pink)
                theme_color_dark='#ff007c'
                theme_color_light='#d20065'
                ;;
            -Red)
                theme_color_dark='#f7768e'
                theme_color_light='#f52a65'
                ;;
            -Orange)
                theme_color_dark='#ff9e64'
                theme_color_light='#b15c00'
                ;;
            -Yellow)
                theme_color_dark='#e0af68'
                theme_color_light='#8c6c3e'
                ;;
            -Green)
                theme_color_dark='#9ece6a'
                theme_color_light='#587539'
                ;;
            -Blue)
                theme_color_dark='#7aa2f7'
                theme_color_light='#2e7de9'
                ;;
            -Grey)
                theme_color_dark='#1a1b26'
                theme_color_light='#c0caf5'
                ;;
        esac

        if [[ "$type" == '-Neo' ]]; then
            case "$theme" in
                '')
                    theme_color_dark='#29a4bd'
                    theme_color_light='#006a83'
                    ;;
                -Purple)
                    theme_color_dark='#9d7cd8'
                    theme_color_light='#7847bd'
                    ;;
                -Pink)
                    theme_color_dark='#ff007c'
                    theme_color_light='#d20065'
                    ;;
                -Red)
                    theme_color_dark='#f7768e'
                    theme_color_light='#f52a65'
                    ;;
                -Orange)
                    theme_color_dark='#ff9e64'
                    theme_color_light='#b15c00'
                    ;;
                -Yellow)
                    theme_color_dark='#e0af68'
                    theme_color_light='#8c6c3e'
                    ;;
                -Green)
                    theme_color_dark='#9ece6a'
                    theme_color_light='#587539'
                    ;;
                -Blue)
                    theme_color_dark='#7aa2f7'
                    theme_color_light='#2e7de9'
                    ;;
                -Grey)
                    theme_color_dark='#24283b'
                    theme_color_light='#c0caf5'
                    ;;
            esac
        fi

        if [[ "$type" == '-Trinity' ]]; then
            case "$theme" in
                '')
                    theme_color_dark='#589ed7'
                    theme_color_light='#006a83'
                    ;;
                -Purple)
                    theme_color_dark='#c099ff'
                    theme_color_light='#7847bd'
                    ;;
                -Pink)
                    theme_color_dark='#fca7ea'
                    theme_color_light='#d20065'
                    ;;
                -Red)
                    theme_color_dark='#ff757f'
                    theme_color_light='#f52a65'
                    ;;
                -Orange)
                    theme_color_dark='#ff966c'
                    theme_color_light='#b15c00'
                    ;;
                -Yellow)
                    theme_color_dark='#ffc777'
                    theme_color_light='#8c6c3e'
                    ;;
                -Green)
                    theme_color_dark='#c3e88d'
                    theme_color_light='#587539'
                    ;;
                -Blue)
                    theme_color_dark='#3e68d7'
                    theme_color_light='#2e7de9'
                    ;;
                -Grey)
                    theme_color_dark='#222436'
                    theme_color_light='#c8d3f5'
                    ;;
            esac
        fi

        if [[ "$type" != '' ]]; then
            rm -rf "theme${theme}${type}"
            cp -rf "theme" "theme${theme}${type}"
            sed -i "s/#27a1b9/${theme_color_dark}/g" "theme${theme}${type}"/*.svg
            sed -i "s/#006a83/${theme_color_light}/g" "theme${theme}${type}"/*.svg
        elif [[ "$theme" != '' ]]; then
            rm -rf "theme${theme}"
            cp -rf "theme" "theme${theme}"
            sed -i "s/#27a1b9/${theme_color_dark}/g" "theme${theme}"/*.svg
            sed -i "s/#006a83/${theme_color_light}/g" "theme${theme}"/*.svg
        fi
    done
done

echo -e "DONE!"
