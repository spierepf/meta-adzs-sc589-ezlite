FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PR := "${PR}.2"

COMPATIBLE_MACHINE_adzs-sc589-ezlite = "adzs-sc589-ezlite"



SRC_URI += "file://adzs-sc589-ezlite-standard.scc \
            file://adzs-sc589-ezlite-user-config.cfg \
            file://adzs-sc589-ezlite-user-features.scc \
           "

SRC_URI += "file://sc589.cfg"
SRC_URI += "file://fragment.cfg"

# replace these SRCREVs with the real commit ids once you've had
# the appropriate changes committed to the upstream linux-yocto repo
SRCREV_machine_pn-linux-yocto_adzs-sc589-ezlite ?= "${AUTOREV}"
SRCREV_meta_pn-linux-yocto_adzs-sc589-ezlite ?= "${AUTOREV}"
#LINUX_VERSION = "4.1"
#Remove the following line once AUTOREV is locked to a certain SRCREV
KERNEL_VERSION_SANITY_SKIP = "1"
