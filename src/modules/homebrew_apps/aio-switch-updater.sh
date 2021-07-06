source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/HamletDuFromage/aio-switch-updater/releases/download/2.8.0/aio-switch-updater.zip
PKG_DIR=$ROOT_BUILD_PATH/aio-switch-updater
PKG_OUT_DIR=$ROOT_BUILD_PATH/aio-switch-updater/out
PKG_FILE_PATH=$PKG_DIR/aio-switch-updater.zip
PKG_FILE_HASH=b55d09e51000b63146d0da05156dd584

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
