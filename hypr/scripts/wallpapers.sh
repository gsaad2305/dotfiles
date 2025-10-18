#!/usr/bin/env bash

# Selecionar um wallpaper aleatório
NEW_WP=$(ls "$HOME/Imagens/Walpapers" | shuf -n 1)

# Caminho completo do wallpaper
WALLPAPER="$HOME/Imagens/Walpapers/$NEW_WP"

# Caminho para a configuração do Hyprpaper
HYPRPAPER_CONF="$HOME/.config/hypr/hyprpaper.conf"

# Limpar o arquivo de configuração
echo "" > "$HYPRPAPER_CONF"

# Escrever novo conteúdo
echo "preload = $WALLPAPER" >> "$HYPRPAPER_CONF"
echo "wallpaper = monitor,$WALLPAPER" >> "$HYPRPAPER_CONF"
echo "splash = false" >> "$HYPRPAPER_CONF"

# Reiniciar o Hyprpaper
killall hyprpaper 
hyprpaper &
