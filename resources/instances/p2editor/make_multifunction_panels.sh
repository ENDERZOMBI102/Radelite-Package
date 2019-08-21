#!/bin/sh

in=bisqwit_multifunction_panel_64x64.vmf

sed 's@METAL/BLACK_FLOOR_METAL_001B@TILE/WHITE_FLOOR_TILE001A@g' < $in > bisqwit_multifunction_panel_64x64_portalable.vmf
sed 's@METAL/BLACK_FLOOR_METAL_001B@GLASS/GLASSWINDOW_FROSTED_002@g' < $in \
	| sed 's/32.032/29.5/g' > bisqwit_multifunction_panel_64x64_glass.vmf

# Removes lines 73-504
nl < $in | \
	egrep '^ *([0-9]|[1-6][0-9]|7[0-2]|50[5-9]|5[1-9][0-9]|[6-9][0-9][0-9]|[0-9][0-9][0-9][0-9])	' | tee tmptmp | \
	sed 's/^[^	]*	//' | \
	egrep -v 'pillar_clip|panel_surface|panel_clips' > bisqwit_multifunction_panel_64x64_skeleton.vmf
