#!/bin/bash

echo "removing unneeded flatpaks..."

# flatpak uninstall ...

flatpak uninstall org.mozilla.firefox
flatpak uninstall org.mozilla.Thunderbird
flatpak uninstall org.libreoffice.LibreOffice

echo "adding wanted flatpaks..."

# flatpak install ...
flatpak install com.moonlight_stream.Moonlight
flatpak install dev.vencord.Vesktop
flatpak install com.plexamp.Plexamp
flatpak install md.obsidian.Obsidian
flatpak install org.gnome.Geary
flatpak install org.keepassxc.KeePassXC
flatpak install app.zen_browser.zen
flatpak install dev.zed.Zed
flatpak install de.haeckerfelix.AudioSharing
flatpak install com.rafaelmardojai.Blanket
flatpak install com.cassidyjames.butler
flatpak install de.haeckerfelix.Shortwave
flatpak install com.github.marhkb.Pods
flatpak install com.system76.Popsicle
flatpak install com.nextcloud.desktopclient.nextcloud
flatpak install io.gitlab.news_flash.NewsFlash
flatpak install io.github.kalaksi.Lightkeeper
flatpak install app.freelens.Freelens
