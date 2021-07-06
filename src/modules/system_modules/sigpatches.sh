source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/ITotalJustice/patches/releases/download/12.1.0-0.19.5/fusee.zip
PKG_DIR=$ROOT_BUILD_PATH/sigpatches
PKG_OUT_DIR=$ROOT_BUILD_PATH/sigpatches/out
PKG_FILE_PATH=$PKG_DIR/fusee.zip
PKG_FILE_HASH=49f3c5c7383860987ce8eafcc4d9f486

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
