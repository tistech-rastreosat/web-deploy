git clone --depth 1 https://github.com/traccar/traccar-web || true
cp -vr src public index.html traccar-web

FILES=("traccar-web/vite.config.js" "traccar-web/index.html")
for FILE in "${FILES[@]}"; do
    sed -i "s|\${title}|$TITLE|g" "$FILE"
    sed -i "s|\${description}|$DESCRIPTION|g" "$FILE"
    sed -i "s|\${colorPrimary}|$COLOR_PRIMARY|g" "$FILE"
done
