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

`pod deintegrate`

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

## Послать Push Notification на симулятор

`xcrun simctl push B1831415-E6DE-448D-BD71-4B46B3054D9D com.RinatAbidullin.Notifications first.apn`

## При переименовании проекта и папки (группы) с файлами проекта

* `Info.plist` не должен быть включен в таргеты 

* В `Info.plist` указать `Storyboard Name` в разделе `Application Scene Manifest`

* В тартеге тестов в разделе `General` выбрать `Host Application`

* В `Build Settings` таргетов поправить путь до файлов `Info.plist`

* Удалить папку с приложением в `Derived Data`

* Выполнить `Clean Build Folder`

## Путь до файла Package.resolved

`YourProgect.xcworkspace/xcshareddata/swiftpm/Package.resolved`

## Путь до папки DerivedData

`~/Library/Developer/Xcode/DerivedData`

## Изменить стандартное расположение папки со скриншотами с симулятора

In Xcode 12 we now always set the default location to wherever you last saved a screenshot, so to change the default location press `⌥ + ⌘ + S` then select the location.