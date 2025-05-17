fx_version 'cerulean'
game 'gta5'

author 'Soulaax'
description 'SpawnSelector'

ui_page 'dist/index.html'

files {
    'dist/index.html',
    'dist/assets/*.js',
    'dist/assets/*.css',
    'dist/assets/*.png',
    'assets/*.png',
}

client_scripts {
    'src/client/*.lua',
}

shared_script 'src/shared/config.lua'