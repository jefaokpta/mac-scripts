#!/bin/sh

echo "Adicionando espaço/separador no fim da sua Dock..."

defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="small-spacer-tile";}'; killall Dock

echo "Pronto! Reiniciando a Dock..."
