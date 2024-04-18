# Clone
git clone --single-branch https://github.com/GhostNaN/mpvpaper
# Build
cd mpvpaper
meson setup build --prefix=/usr/local
ninja -C build
# Install
ninja -C build install