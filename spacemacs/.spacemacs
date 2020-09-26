;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(vimscript
     typescript
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ansible
     (auto-completion :variables
                      auto-completion-return-key-behavior nil
                      auto-completion-tab-key-behavior 'cycle
                      auto-completion-complete-with-key-sequence (kbd "jk")
                      auto-completion-enable-sort-by-usage t
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-help-tooltip t
                      :disabled-for org markdown)
     better-defaults
     c-c++
     (clojure :variables
              clojure-enable-fancify-symbols t)
     colors
     csv
     deft
     django
     docker
     emacs-lisp
     (erc :variables
          erc-server-list
          '(("irc.freenode.net"
             :port "6697"
             :ssl t
             :nick "die_krabbe")))
     (git :variables
          git-magit-status-fullscreen t
          magit-save-repository-buffers 'dontask
          magit-revert-buffers 'silent
          magit-refs-show-commit-count 'all)
     ;; graphviz
     ;; (gtags :disabled-for clojure emacs-lisp javascript latex python shell-scripts)
     gtags
     helm
     helpful
     html
     (javascript :variables
                 javascript-import-tool 'import-js
                 javascript-fmt-tool 'prettier
                 javascript-fmt-on-save t
                 javascript-backend 'lsp
                 js2-basic-offset 2
                 js-indent-level 2)
     json
     lsp
     bibtex
     (latex :variables latex-build-command "LaTeX")
     ;; pdf-tools
     lua
     markdown
     (mu4e :variables
           user-full-name  "Sebastian Anklamm"
           mu4e-sent-folder "/sanklamm/[Google Mail].Sent Mail"
           mu4e-refile-folder "/sanklamm/[Google Mail].All Mail"
           mu4e-drafts-folder "/sanklamm/[Google Mail].Drafts"
           mu4e-trash-folder "/sanklamm/[Google Mail].Trash"
           mu4e-update-interval nil
           mu4e-maildir "~/Maildir"
           mu4e-get-mail-command "offlineimap"
           mu4e-compose-signature-auto-include nil
           mu4e-view-show-images t
           mu4e-view-show-addresses t
           mu4e-installation-path "/usr/share/emacs/site-lisp/mu4e")
     multiple-cursors
     (org :variables
          org-enable-github-support t
          org-reveal-root "file:///Users/s/github_packages/reveal.js/js/reveal.js"
          org-reveal-mathjax t
          org-enable-bootstrap-support t
          org-enable-reveal-js-support t
          org-enable-hugo-support t
          org-enable-org-journal-support t
          org-projectile-file "TODOs.org"
          )
     ;; org-roam
     parinfer
     pdf
     php
     (python :variables python-test-runner 'pytest)
     ;; (ranger :variables
     ;;         ranger-show-preview t
     ;;         ranger-show-hidden t
     ;;         ranger-cleanup-eagerly t
     ;;         ranger-cleanup-on-disable t
     ;;         ranger-ignored-extensions '("mkv" "flv" "iso" "mp4"))
     react
     restructuredtext
     scheme
     semantic


     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     shell-scripts
     (spell-checking :variables spell-checking-enable-by-default nil)
     ;; sphinx
     sql
     syntax-checking
     themes-megapack
     treemacs
     typography
     (version-control :variables
                      version-control-diff-side 'left
                      version-control-global-margin t)
     (vue :variables
          vue-backend 'lsp
          javascript-fmt-on-save t
          )
     windows-scripts
     xkcd
     yaml
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages
   '(
     beacon
     org-tree-slide
     org-noter
     )

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=~/.emacs.d/.cache/dumps/spacemacs.pdmp
   ;; (default spacemacs.pdmp)
   dotspacemacs-emacs-dumper-dump-file "spacemacs.pdmp"

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner nil

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (bookmarks . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         doom-one
                         monokai
                         molokai
                         material
                         hickey
                         spacemacs-dark
                         spacemacs-light
                         solarized-light
                         solarized-dark
                         leuven
                         zenburn
                         )

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(doom)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts.
   dotspacemacs-default-font '(
                               ;; "Operator Mono"
                               "Hack Nerd Font"
                               :size 18
                               :weight Regular
                               ;; :weight light
                               :width normal
                               :powerline-scale 1.0
                               ;; "Source Code Pro"
                               ;; :size 14
                               ;; :weight normal
                               ;; :width normal
                               ;; :powerline-scale 1.1
                               )

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts t

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state t

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but lines are only visual lines are counted. For example, folded lines
   ;; will not be counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers '(
                               :relative t
                               :visual nil
                               :disabled-for-modes dired-mode
                               doc-view-mode
                               markdown-mode
                               org-mode
                               pdf-view-mode
                               text-mode
                               :size-limit-kb 500)

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode t

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server t

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs t))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."

  ;; (setq-default mac-right-option-modifier nil)
  (setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
  (setq exec-path (append exec-path '("/usr/local/bin")))

  ;; reveal.js location
  ;; (setq org-reveal-root "file:///Users/s/github_packages/reveal.js/js/reveal.js")

  )

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump.")
  

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

  ;; vue
  (setq-default
   ;; web-mode
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2)

  ;; Tramp
  (setq tramp-default-method "ssh") 

  ;; (setq load-path (cons "~/Sync/100-199 Personal/101 Administration/50-59 Utilities/51 Programme/51.03 Emacs/org-fstree" load-path))
  ;; (require 'org-fstree)

  (setq paradox-github-token "ea87c4112590da92cd1d63d263d1e0e46a568b88")

  (beacon-mode 1)

  ;; org-noter
  (setq org-noter-default-notes-file-names '("pdf-notes.org")
        org-noter-notes-search-path '("~/Sync/100-199 Personal/101 Administration/00-09 Meta/pdf-notes/notes"))

  (add-hook 'Info-mode-hook    ; After Info-mode has started
            (lambda ()
              (setq Info-additional-directory-list Info-default-directory-list)))
  

  (setq TeX-view-program-selection '((output-pdf "PDF Tools"))
        TeX-view-program-list '(("PDF Tools" TeX-pdf-tools-sync-view))
        TeX-source-correlate-start-server t)
  

  (setq-default
   ;;;; Editing
   evil-want-Y-yank-to-eol t
   scroll-margin 10)
  

  ;; LaTeX
  (add-hook 'doc-view-mode-hook 'auto-revert-mode)

  ;; deft
  (setq
   deft-directory "~/Sync/100-199 Personal/101 Administration/00-09 Meta/brain"
   deft-extensions '("org" "md" "txt" "markdown")
   deft-default-extension "org"
   deft-recursive t
   deft-use-filename-as-title nil
   deft-use-filter-string-for-filename t
   deft-file-naming-rules '((nospace . "-")))
  

  ;; mu4e config
  ;;; Set up some common mu4e variables
  (setq mu4e-update-interval nil
        mu4e-maildir "~/Maildir"
        ;; mu4e-trash-folder "/Trash"
        ;; mu4e-refile-folder "/Archive"
        mu4e-get-mail-command "offlineimap"
        mu4e-compose-signature-auto-include nil
        mu4e-view-show-images t
        mu4e-view-show-addresses t)

  (setq auth-sources
        '((:source "~/.authinfo.gpg")))

  (setq mu4e-view-html-plaintext-ratio-heuristic most-positive-fixnum)

  ;; (setq mu4e-contexts
  ;;       `( ,(make-mu4e-context
  ;;            :name "sanklamm"
  ;;            :match-func (lambda (msg) (when msg
  ;;                                        (string-prefix-p "/sanklamm" (mu4e-message-field msg :maildir))))
  ;;            :vars '(
  ;;                    ;; (mu4e-trash-folder . "/sanklamm/[Google Mail].Trash")
  ;;                    (mu4e-refile-folder . "/sanklamm/[Google Mail].All Mail")
  ;;                    ))
  ;;          ,(make-mu4e-context
  ;;            :name "Exchange"
  ;;            :match-func (lambda (msg) (when msg
  ;;                                        (string-prefix-p "/Exchange" (mu4e-message-field msg :maildir))))
  ;;            :vars '(
  ;;                    (mu4e-trash-folder . "/Exchange/Deleted Items")
  ;;                    (mu4e-refile-folder . exchange-mu4e-refile-folder)
  ;;                    ))
  ;;          ))

  ;; Mail directory shortcuts
  (setq mu4e-maildir-shortcuts
        '(("/sanklamm/INBOX" . ?g)))
  ;;         ("/college/INBOX" . ?c)
  

;;; Bookmarks
  (setq mu4e-bookmarks
        `(("flag:unread AND NOT flag:trashed" "Unread messages" ?u)
          ("date:today..now" "Today's messages" ?t)
          ("date:7d..now" "Last 7 days" ?w)
          ("mime:image/*" "Messages with images" ?p)
          (,(mapconcat 'identity
                       (mapcar
                        (lambda (maildir)
                          (concat "maildir:" (car maildir)))
                        mu4e-maildir-shortcuts) " OR ")
           "All inboxes" ?i)))

  ;; (define-key mu4e-headers-mode-map (kbd "C-c c") 'org-mu4e-store-and-capture)
  ;; (define-key mu4e-view-mode-map    (kbd "C-c c") 'org-mu4e-store-and-capture)

  ;; (defun exchange-mu4e-refile-folder (msg)
  ;;   "Function for chosing the refile folder for my Exchange email.
  ;;  MSG is a message p-list from mu4e."
  ;;   (cond
  ;;    ;; FLA messages
  ;;    ((string-match "\\[some-mailing-list\\]"
  ;;                   (mu4e-message-field msg :subject))
  ;;     "/Exchange/mailing-list")
  ;;    (t "/Exchange/Archive")
  ;;    )
  ;;   )
  ;; end mu4e config

  ;; org-mode

  (setq org-directory "~/Dropbox/org")
  (setq org-default-notes-file "~/Dropbox/org/notes/0.inbox.org")
  (setq org-refile-targets (quote ((nil :maxlevel . 9)
                                   (org-agenda-files :maxlevel . 9))))
  (setq org-capture-templates
        (quote (
                ("t" "todo" entry (file "~/Dropbox/org/notes/0.inbox.org")
                 "* TODO %?\n%U\n%a\n" :clock-in t :clock-resume t)
                ("r" "respond" entry (file "~/Dropbox/org/notes/0.inbox.org")
                 "* TODO Respond to %:from on %:subject\nSCHEDULED: %t\n%U\n%a\n" :clock-in t :clock-resume t :immediate-finish t)
                ("n" "note" entry (file "~/Dropbox/org/notes/0.inbox.org")
                 "* %? :NOTE:\n%U\n%a\n" :clock-in t :clock-resume t)
                ("j" "Journal enty" entry
                 (file+datetree "~/Dropbox/org/notes/journal.org")
                 "**** %U %^{Title}
                  %?" :clock-in t :clock-resume t)
                ("w" "org-protocol" entry (file "~/Dropbox/org/notes/0.inbox.org")
                 "* TODO Review %c\n%U\n" :immediate-finish t)
                ("m" "Meeting" entry (file+datetree "~/Dropbox/org/notes/2.meeting.org")
                 "**** %U Meeting mit: %^{Teilnehmer}
    %?" :jump-to-captured t)
                ("y" "Meeting" entry (file "~/Dropbox/org/notes/0.inbox.org")
                 "* MEETING with %? :MEETING:\n%U" :clock-in t :clock-resume t)
                ("c" "Org-contact" entry (file  "~/Dropbox/org/notes/contacts.org")
                 "** %?
 :PROPERTIES:
 :PROJECT: %^{Projektname}
 :NAME: %^{Nachname, Vorname}
 :BDAY: 
 :ADDRESS: %^{Adresse}
 :PHONE WORK: %^{Arbeits-Telefon}
 :PHONE HOME: 
 :EMAIL: %^{mail}
 :TITLE:
 :ROLE:
 :ORG: 
 :URL: 
 :NOTE: %^{eine Notiz}
 :REV: %t
 :END:
 " :prepend nil))))
  
  ;; Remove empty LOGBOOK drawers on clock out
  (defun sean/remove-empty-drawer-on-clock-out ()
    (interactive)
    (save-excursion
      (beginning-of-line 0)
      (org-remove-empty-drawer-at "LOGBOOK" (point))))

  (add-hook 'org-clock-out-hook 'sean/remove-empty-drawer-on-clock-out 'append)
  ;; (define-key org-mode-map (kbd "<f8>") 'org-tree-slide-mode)
  ;; (define-key org-mode-map (kbd "S-<f8>") 'org-tree-slide-skip-done-toggle)
  ;; (with-eval-after-load "org-tree-slide"
  ;;   (define-key org-tree-slide-mode-map (kbd "<f9>") 'org-tree-slide-move-previous-tree)
  ;;   (define-key org-tree-slide-mode-map (kbd "<f10>") 'org-tree-slide-move-next-tree)
  ;;   )

  (with-eval-after-load 'org-agenda
    (require 'org-projectile)
    (mapcar '(lambda (file)
               (when (file-exists-p file)
                 (push file org-agenda-files)))
            (org-projectile-todo-files)))

  (with-eval-after-load 'org
    (setq org-babel-python-command "python3")
    (setq org-agenda-files (list
                            "~/Dropbox/org/notes/0.inbox.org"
                            "~/Dropbox/org/notes/1.work.org"
                            "~/Dropbox/org/notes/2.meeting.org"
                            "~/Dropbox/org/notes/3.notes.org"
                            "~/Dropbox/org/notes/4.personal.org"
                            "~/Dropbox/org/notes/deep_work.org"))
    
    (setq org-todo-keywords
          '((sequence "TODO(t)" "DOING" "BLOCKED(b@/!)" "REVIEW(r@/!)" "|" "DONE(d)" "DELEGATED(w@/!)")
            (sequence "|" "CANCELLED(c@/!)" "BACKLOG(l@/!)" "MEETING")
            (sequence "PROJECT")))
    
    (setq org-todo-keyword-faces
          '(
            ("TODO" . "SlateGrey")
            ("PROJECT" . "SlateGrey")
            ("MEETING" . "SlateGrey")
            ("DOING" . "DarkOrchid")
            ("BLOCKED" . "Firebrick")
            ("REVIEW" . "Teal")
            ("DONE" . "ForestGreen")
            ("CANCELLED" . "SlateBlue")
            ("DELEGATED" . "white")
            ("BACKLOG" . "white")))
    ;; ("TODO" . org-warning)
    ;; ("PROJECT" . org-warning)
    ;; ("DOING" . "yellow")
    ;; ("BLOCKED" . "red")
    ;; ("REVIEW" . "orange")
    ;; ("DONE" . "green")
    ;; ("CANCELLED" . "white")
    
    (setq org-todo-state-tags-triggers
          (quote (("CANCELLED" ("CANCELLED" . t))
                  ("BLOCKED" ("WAITING" . t))
                  ("REVIEW" ("WAITING" . t))
                  ("HOLD" ("WAITING") ("HOLD" . t))
                  (done ("WAITING"))
                  ("TODO" ("WAITING") ("CANCELLED"))
                  ("DOING" ("WAITING") ("CANCELLED"))
                  ("DONE" ("WAITING") ("CANCELLED")))))

    (org-babel-do-load-languages
     'org-babel-load-languages
     '((python . t)
       (emacs-lisp . t)
       (org . t)
       (shell . t)
       (latex . t)
       (js . t)
       (clojure . t)
       (scheme . t)
       (java . t)
       (php . t)
       (plantuml . t)))
    (setq org-confirm-babel-evaluate nil)
    (require 'ob-js)
    (add-to-list 'org-babel-tangle-lang-exts '("js" . "js"))
    ;; (require 'ob)
    ;; (require 'ob-clojure)
    ;; (require 'paredit)
    ;; (require 'cider)
    ;; add Syntax-Highlighting to pdf export
    (setq org-latex-listings 'minted
          org-latex-packages-alist '(("" "minted"))
          org-latex-pdf-process
          '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
            "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

    (setq org-plantuml-jar-path
          (expand-file-name "~/org/plantuml.jar")))
  
  
  ;; end org-mode

  ;; LaTeX
  (add-hook 'doc-view-mode-hook 'auto-revert-mode)

  (with-eval-after-load 'python
    (defun python-shell-completion-native-try ()
      "Return non-nil if can trigger native completion."
      (let ((python-shell-completion-native-enable t)
            (python-shell-completion-native-output-timeout
             python-shell-completion-native-try-output-timeout))
        (python-shell-completion-native-get-completions
         (get-buffer-process (current-buffer))
         nil "_"))))
  '(undo-limit 1000000)  ; 1M (default is 80K)
  '(undo-strong-limit 1500000)  ; 1.5M (default is 120K)
  '(undo-outer-limit 20000000))  ; 20M

  

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   '("~/Sync/200-299 VCAT/202 Senat - EALS/20-29 PM/21 Projektplanung/202.21.01 todo.org" "~/Dropbox/org/notes/0.inbox.org" "~/Dropbox/org/notes/1.work.org" "~/Dropbox/org/notes/2.meeting.org" "~/Dropbox/org/notes/3.notes.org" "~/Dropbox/org/notes/4.personal.org" "~/Dropbox/org/notes/deep_work.org"))
 '(package-selected-packages
   '(vimrc-mode dactyl-mode counsel-gtags counsel swiper tide typescript-mode import-js grizzl add-node-modules-path org-noter org-tree-slide beacon zenburn-theme zen-and-art-theme yasnippet-snippets yapfify yaml-mode xterm-color xkcd white-sand-theme web-mode web-beautify vterm unfill underwater-theme ujelly-theme typo twilight-theme twilight-bright-theme twilight-anti-bright-theme treemacs-magit toxi-theme terminal-here tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sublime-themes subatomic256-theme subatomic-theme stickyfunc-enhance srefactor sql-indent spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode shell-pop seti-theme scss-mode sass-mode rjsx-mode reverse-theme rebecca-theme rainbow-mode rainbow-identifiers railscasts-theme pytest pyenv-mode py-isort purple-haze-theme pug-mode professional-theme prettier-js powershell pony-mode planet-theme pippel pipenv pyvenv pip-requirements phpunit phpcbf php-extras php-auto-yasnippets phoenix-dark-pink-theme phoenix-dark-mono-theme ox-twbs ox-hugo ox-gfm orgit organic-green-theme org-roam org-ref pdf-tools key-chord ivy org-re-reveal org-projectile org-category-capture org-present org-pomodoro org-mime org-journal org-download org-cliplink org-brain org-ql peg ov org-super-agenda ts omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme nodejs-repl noctilux-theme naquadah-theme mwim mustang-theme multi-term mu4e-maildirs-extension mu4e-alert alert log4e gntp monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minimal-theme material-theme markdown-toc markdown-mode majapahit-theme magit-svn magit-section magit-gitflow magit-popup madhat2r-theme lush-theme livid-mode skewer-mode live-py-mode light-soap-theme kaolin-themes json-navigator hierarchy js2-refactor multiple-cursors js2-mode js-doc jinja2-mode jbeans-theme jazz-theme ir-black-theme insert-shebang inkpot-theme importmagic epc ctable concurrent impatient-mode simple-httpd htmlize heroku-theme hemisu-theme helm-rtags helm-pydoc helm-org-rifle helm-org helm-mu helm-gtags helm-gitignore helm-git-grep helm-css-scss helm-company helm-c-yasnippet helm-bibtex parsebib hc-zenburn-theme haml-mode gruvbox-theme gruber-darker-theme graphviz-dot-mode grandshell-theme gotham-theme google-c-style gnuplot gitignore-templates gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ fringe-helper git-gutter+ gh-md ggtags geiser geben gandalf-theme fuzzy flyspell-correct-helm flyspell-correct flycheck-ycmd flycheck-rtags flycheck-pos-tip flycheck-bashate flatui-theme flatland-theme fish-mode farmhouse-theme eziam-theme exotica-theme evil-org evil-magit magit git-commit with-editor espresso-theme eshell-z eshell-prompt-extras esh-help erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks emmet-mode drupal-mode dracula-theme doom-themes dockerfile-mode docker transient tablist json-mode docker-tramp json-snatcher json-reformat django-theme disaster deft darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme csv-mode cpp-auto-include company-ycmd ycmd request-deferred deferred company-web web-completion-data company-tern dash-functional tern company-statistics company-shell company-rtags rtags company-reftex company-quickhelp pos-tip company-phpactor phpactor composer php-runtime company-php ac-php-core xcscope php-mode company-lua lua-mode company-c-headers company-auctex company-ansible company-anaconda company color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode clues-theme clojure-snippets clang-format cider-eval-sexp-fu cider sesman queue parseedn clojure-mode parseclj a chocolate-theme autothemer cherry-blossom-theme busybee-theme bubbleberry-theme browse-at-remote blacken birds-of-paradise-plus-theme biblio biblio-core badwolf-theme auto-yasnippet yasnippet auto-dictionary auctex apropospriate-theme anti-zenburn-theme ansible-doc ansible anaconda-mode pythonic ample-zen-theme ample-theme alect-themes afternoon-theme ac-ispell auto-complete ws-butler writeroom-mode visual-fill-column winum volatile-highlights vi-tilde-fringe uuidgen treemacs-projectile treemacs-persp treemacs-evil treemacs ht pfuture toc-org symon symbol-overlay string-inflection spaceline-all-the-icons all-the-icons memoize spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode password-generator paradox spinner overseer org-bullets open-junk-file nameless move-text macrostep lorem-ipsum link-hint indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-xref helm-themes helm-swoop helm-purpose window-purpose imenu-list helm-projectile projectile helm-mode-manager helm-make helm-ls-git helm-flx helm-descbinds helm-ag google-translate golden-ratio flycheck-package package-lint flycheck pkg-info epl let-alist flycheck-elsa flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state iedit evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens smartparens paredit evil-args evil-anzu anzu eval-sexp-fu elisp-slime-nav editorconfig dumb-jump f dash s devdocs define-word column-enforce-mode clean-aindent-mode centered-cursor-mode auto-highlight-symbol auto-compile packed aggressive-indent ace-window ace-link ace-jump-helm-line helm avy helm-core popup which-key use-package pcre2el org-plus-contrib hydra lv hybrid-mode font-lock+ evil goto-chg undo-tree dotenv-mode diminish bind-map bind-key async)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
