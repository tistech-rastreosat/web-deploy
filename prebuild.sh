git clone --depth 1 https://github.com/traccar/traccar-web || true
cp -vr src public index.html traccar-web
sed -i "s/\${title}/$TITLE/g" traccar-web/vite.config.js
sed -i "s/\${description}/$DESCRIPTION/g" traccar-web/vite.config.js
sed -i "s/\${colorPrimary}/$COLOR_PRIMARY/g" traccar-web/vite.config.js
