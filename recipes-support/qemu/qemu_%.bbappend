#DEPENDS_append_class-native = " virglrenderer-native"
PACKAGECONFIG[virgl3d] = "--enable-sdl --with-sdlabi=2.0 --enable-opengl --enable-gtk --with-gtkabi=3.0 --enable-virglrenderer,--disable-virglrenderer, virglrenderer-native"
PACKAGECONFIG_append = " virgl3d"