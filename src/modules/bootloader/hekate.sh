source src/utils/constants.sh
source src/utils/logger.sh

PKG_URL=https://github.com/CTCaer/hekate/releases/download/v5.5.8/hekate_ctcaer_5.5.8_Nyx_1.0.5.zip
PKG_DIR=$ROOT_BUILD_PATH/hakate
PKG_OUT_DIR=$ROOT_BUILD_PATH/hakate/out
PKG_FILE_PATH=$PKG_DIR/hekate_ctcaer_5.5.8_Nyx_1.0.5
PKG_FILE_HASH=09afb6a8761897d6b008209b750bfb0b

fs_download $PKG_URL $PKG_FILE_PATH $PKG_FILE_HASH

fs_unzip $PKG_FILE_PATH $PKG_OUT_DIR

cp -r $PKG_OUT_DIR/* $ROOT_DIST_PATH

DIST_HEKATE_BIN_FILE_PATH=$ROOT_DIST_PATH/hekate_ctcaer_5.5.8.bin
mv $DIST_HEKATE_BIN_FILE_PATH $ROOT_DIST_PATH/payload.bin
cp $ROOT_DIST_PATH/payload.bin $ROOT_DIST_PATH/bootloader/update.bin

cp -r src/modules/bootloader/hekate/* $ROOT_DIST_PATH/bootloader/
cp -r src/modules/bootloader/sx_gear/* $ROOT_DIST_PATH

mv $DIST_HEKATE_BIN_FILE_PATH $ROOT_DIST_PATH/payload.bin
