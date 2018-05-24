#!/usr/bin/env bash

# Update package
apm update

e_header "Install themes"

#apm install atom-material-ui atom-material-syntax
e_note "Remember to update settings"

e_header "Install must-have packages"

apm install \
  atom-beautify \
  autoclose-html \
  autocomplete-modules \
  busy-signal \
  editorconfig \
  file-icons \
  git-blame \
  git-time-machine \
  goto-definition \
  highlight-selected \
  hyperclick \
  intentions \
  minimap \
  minimap-highlight-selected \
  pigments \
  prettier-atom \
  tester \
  tester-jest
#  emmet \
#  highlight-bad-chars

e_header "Install syntax packages"

apm install \
  language-babel
#  ssh-config \
#  language-twig \
#  language-blade \
#  language-nginx \
#  language-apache \
#  language-ignore

e_header "Install linters"

apm install \
  linter \
  linter-php \
  linter-eslint \ 
  linter-ui-default
