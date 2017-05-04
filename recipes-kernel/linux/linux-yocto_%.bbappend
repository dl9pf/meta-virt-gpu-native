FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto:"

SRC_URI += " file://virtio-gpu.cfg \
	   "

KERNEL_CONFIG_FRAGMENTS_append_qemux86 = " ${WORKDIR}/virtio-gpu.cfg"
KERNEL_CONFIG_FRAGMENTS_append_qemux86_64 = " ${WORKDIR}/virtio-gpu.cfg"
