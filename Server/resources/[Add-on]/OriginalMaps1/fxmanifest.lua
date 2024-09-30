fx_version "cerulean"
game "gta5"

this_is_a_map "yes"

files {
	"stream/*",
	"stream/*/**",
	"stream/*/*/**",
	"stream/*/*/*/**",
	"gabz_mrpd_timecycle.xml",	
	"interiorproxies.meta"
}

client_script {
    "gabz_mrpd_entitysets.lua"
}

data_file "INTERIOR_PROXY_ORDER_FILE" "interiorproxies.meta"
data_file "DLC_ITYP_REQUEST" "stream/creativeBadges/v_badges.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/creativeInteriores/creative_props.ytyp"
data_file "INTERIOR_PROXY_ORDER_FILE" "interiorproxies.meta"
data_file "TIMECYCLEMOD_FILE" "gabz_mrpd_timecycle.xml"
data_file "SCALEFORM_DLC_FILE" "stream/*"