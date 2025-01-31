fx_version 'cerulean'

game 'gta5'

author 'Jakers'

description 'Legion'

version '1.0'

this_is_a_map 'yes'

file "downtown.ymt"
data_file "SCENARIO_POINTS_OVERRIDE_PSO_FILE" "downtown.ymt"
file "pillbox_hill"
data_file "SCENARIO_POINTS_OVERRIDE_PSO_FILE" "pillbox_hill.ymt"


escrow_ignore {
    'stream/**/*.ytd',
}

dependency '/assetpacks'