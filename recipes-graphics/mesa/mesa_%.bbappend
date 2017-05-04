PACKAGECONFIG_append_qemux86 = " gallium"
PACKAGECONFIG_append_qemux86-64 = " gallium"

GALLIUMDRIVERS_append_x86 = ",virgl"
GALLIUMDRIVERS_append_x86-64 = ",virgl"

do_configure_prepend_class-native() {
	# Append build host pkg-config paths for native target since the host may provide sdl
	BHOST_PKGCONFIG_PATH=$(PATH=/usr/bin:/bin pkg-config --variable pc_path pkg-config || echo "")
	if [ ! -z "$BHOST_PKGCONFIG_PATH" ]; then
		export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$BHOST_PKGCONFIG_PATH
	fi
}
