source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/cathery/sys-con/releases/download/v0.6.3/sys-con-0.6.3.zip
PKG_DIR=$ROOT_BUILD_PATH/sys-con
PKG_OUT_DIR=$ROOT_BUILD_PATH/sys-con/out
PKG_FILE_PATH=$PKG_DIR/sys-con-0.6.3.zip
PKG_FILE_HASH=040a8d853c0e4913a5a9d8ef047bc4aa

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
