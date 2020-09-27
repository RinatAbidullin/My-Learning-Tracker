# Xcode

## xcrun

Прежде чем делать скриншоты или запись видео с симулятора, необходимо перейти в нужный каталог, куда будет все сохраняться:

`cd /Users/rinatab/Documents/Screensorts`

Сделать скриншот:

`xcrun simctl io booted screenshot --type=png --mask=alpha appScreenshot.png`

Запись видео с экрана симулятора:

`xcrun simctl io booted recordVideo --codec=h264 --mask=black --force appVideo.mov`

Завершить запись видео:

`ctrl + C`

#### Options screenshot:

You can specify the following options to the command.

`--type` Can be `png`, `tiff`, `bmp`, `gif`, `jpeg`. Default is `png`.

`--display`

* **iOS**: supports `internal` or `external`. Default is `internal`.

* **tvOS**: supports only `external`

* **watchOS**: supports only `internal`

`--mask` For non-rectangular displays, handle the mask by policy:

* `ignored`: The mask is ignored and the unmasked framebuffer is saved.

* `alpha`: The mask is used as premultiplied alpha.

* `black`: The mask is rendered black.

#### Options video:

You can specify the following options to the command.

`--codec` Specifies the codec type: `h264` or `hevc`. Default is `hevc`.

`--display`

* **iOS**: supports `internal` or `external`. Default is `internal`.

* **tvOS**: supports only `external`

* **watchOS**: supports only `internal`

`--mask` For non-rectangular displays, handle the mask by policy:

* `ignored`: The mask is ignored and the unmasked framebuffer is saved.

* `alpha`: Not supported, but retained for compatibility; the mask is rendered black.

* `black`: The mask is rendered black.

`--force` Force the output file to be written to, even if the file already exists.

## ffmpeg

`ffmpeg -i appVideo.mov appVideo.mp4`

## Simulator

Изменить тему (светлая/темная)

`⌘ + ⇧ + A`

## Pod

`pod install --repo-update`

## Address Sanitizer

`enableAddressSanitizer = "YES"` (Edit Scheme -> Run -> Diagnostics -> Address Sanitizer) - может привести к увеличению размера приложения и фреймворков примерно в два раза.

## Версия Xcode

`$ xcodebuild -version`

Xcode 11.7
Build version 11E801a

## Версия macOS

`$ sw_vers`

ProductName:	Mac OS X
ProductVersion:	10.15.6
BuildVersion:	19G2021

## OTHER_SWIFT_FLAGS

### Xcode 11:

`-fmodule-map-file=$(PROJECT_TEMP_ROOT)/GeneratedModuleMaps/iphonesimulator/RxCocoaRuntime.modulemap`

### Xcode 12:

`-fmodule-map-file=$(PROJECT_TEMP_ROOT)/GeneratedModuleMaps-iphonesimulator/RxCocoaRuntime.modulemap`