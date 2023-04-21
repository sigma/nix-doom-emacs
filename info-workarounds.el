;;; info-workarounds.el --- Description -*- lexical-binding: t; -*-
;;; This file allows the `info` function to find other `info` files in the system.

(eval-after-load 'info
  '(progn
     ;;; For non-NixOS GNU/Linux
     (push "/usr/share/info" Info-directory-list)

     ;;; For NixOS
     (push "/run/current-system/sw/share/info" Info-directory-list)

     (push "~/.nix-profile/share/info" Info-directory-list)))
