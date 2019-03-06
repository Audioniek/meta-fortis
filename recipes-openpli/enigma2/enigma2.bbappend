#CXXFLAGS_append_sh4 += " -std=c++11 -fPIC -fno-strict-aliasing "

FILESEXTRAPATHS_prepend := "${THISDIR}:"

#DEPENDS_append_sh4 += "libmme-image libmme-host"

#RDEPENDS_${PN}_append_sh4 += "libmme-host"

SRC_URI_append += "\
	${@bb.utils.contains("MACHINE", "atevio7500|fortis_hdbox|octagon1008|hs7110|hs7119|hs7420|hs7429|hs7810a|hs7819", "file://enigma2-fortis-all.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "atevio7500", "file://enigma2-fortis-atevio7500.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "fortis_hdbox", "file://enigma2-fortis-fortis_hdbox.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "octagon1008", "file://enigma2-fortis-octagon1008.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "hs7110", "file://enigma2-fortis-hs7110.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "hs7119", "file://enigma2-fortis-hs7119.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "hs7420", "file://enigma2-fortis-hs7420.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "hs7429", "file://enigma2-fortis-hs7429.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "hs7810a", "file://enigma2-fortis-hs7810a.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "hs7819", "file://enigma2-fortis-hs7819.patch", "", d)} \
	"

#SRCREV_FORMAT = "enigma2"

