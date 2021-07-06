source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/spacemeowx2/ldn_mitm/releases/download/v1.8.0/ldn_mitm_v1.8.0.zip
PKG_DIR=$ROOT_BUILD_PATH/ldn_mitm
PKG_OUT_DIR=$ROOT_BUILD_PATH/ldn_mitm/out
PKG_FILE_PATH=$PKG_DIR/ldn_mitm_v1.8.0.zip
PKG_FILE_HASH=eb9a499458f14d998c88375e62c58dc8

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH
