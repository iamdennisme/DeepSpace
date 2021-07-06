source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/ITotalJustice/patches/releases/download/12.0.3-0.19.4/fusee.zip
PKG_DIR=$ROOT_BUILD_PATH/sigpatches
PKG_OUT_DIR=$ROOT_BUILD_PATH/sigpatches/out
PKG_FILE_PATH=$PKG_DIR/fusee.zip
PKG_FILE_HASH=0a42c3a6f67354768f68aa58ce8b0dfa

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
