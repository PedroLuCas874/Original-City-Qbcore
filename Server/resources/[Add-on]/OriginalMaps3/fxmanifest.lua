fx_version "adamant"
game "gta5"
this_is_a_map "yes"

files {
    "hedwig_sheriff2_tc.xml",
    "hedwig_pillbox_tc.xml",
    "gabz_timecycle_mods_1.xml",
    "gabz_timecycle_mods1.xml",
    "stream/Hospital/pillbox_hill.ymt",
    "stream/Hospital/ymt/downtown.ymt",
	"stream/*"
}

data_file "DLC_ITYP_REQUEST" "stream/*/**.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/*.ytyp"
data_file "TIMECYCLEMOD_FILE" "hedwig_sheriff2_tc.xml"
data_file "TIMECYCLEMOD_FILE" "gabz_timecycle_mods_1.xml"
data_file "TIMECYCLEMOD_FILE" "gabz_timecycle_mods1.xml"
data_file "TIMECYCLEMOD_FILE" "hedwig_pillbox_tc.xml"
data_file "DLC_ITYP_REQUEST" "stream/sandy_mechanic_mlo/sandy_mechanic.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/sandy_mechanic_mlo/sandy_mechanic_assets.ytyp"

client_script {
  "main.lua",
  "gabz_entityset_mods1.lua"
}


data_file "SCENARIO_INFO_FILE" "stream/Hospital/.ymt"               
data_file "SCENARIO_POINTS_PSO_FILE" "stream/Hospital/pillbox_hill.ymt"        
data_file "FIVEM_LOVES_YOU_A01627E3E5FC490A" "stream/Hospital/pillbox_hill.ymt"      
data_file "FIVEM_LOVES_YOU_399915A5EEB45A2B" "stream/Hospital/pillbox_hill.ymt"      
data_file "FIVEM_LOVES_YOU_A9E8B9F6EEB35186" "stream/Hospital/pillbox_hill.ymt"       
data_file "FIVEM_LOVES_YOU_DB4D236636684A3F" "stream/Hospital/pillbox_hill.ymt"  

data_file "SCENARIO_INFO_FILE" "stream/Hospital/downtown.ymt"               
data_file "SCENARIO_POINTS_PSO_FILE" "stream/Hospital/downtown.ymt"        
data_file "FIVEM_LOVES_YOU_A01627E3E5FC490A" "stream/Hospital/downtown.ymt"      
data_file "FIVEM_LOVES_YOU_399915A5EEB45A2B" "stream/Hospital/downtown.ymt"      
data_file "FIVEM_LOVES_YOU_A9E8B9F6EEB35186" "stream/Hospital/downtown.ymt"       
data_file "FIVEM_LOVES_YOU_DB4D236636684A3F" "stream/Hospital/downtown.ymt"