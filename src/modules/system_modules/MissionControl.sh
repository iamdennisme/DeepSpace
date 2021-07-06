source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/ndeadly/MissionControl/releases/download/v0.5.0-alpha.3/MissionControl-0.5.0-alpha.3-develop-f87b6d6.zip
PKG_DIR=$ROOT_BUILD_PATH/MissionControl
PKG_OUT_DIR=$ROOT_BUILD_PATH/MissionControl/out
PKG_FILE_PATH=$PKG_DIR/MissionControl-0.5.0-alpha.3-develop-f87b6d6.zip
PKG_FILE_HASH=3ce402b27ab3cf965a8304d0de240e83

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
