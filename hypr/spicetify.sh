cd "$(dirname "$(spicetify -c)")/Themes/modern"
spicetify config current_theme modern color_scheme base
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1 inject_theme_js 1
spicetify apply

