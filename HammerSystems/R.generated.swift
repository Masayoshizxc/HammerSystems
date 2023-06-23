//
//  R.generated.swift
//  HammerSystems
//
//  Created by Adilet on 22/6/23.
//

import Foundation
import UIKit
import RswiftResources

private class BundleFinder {}
let R = _R(bundle: Bundle(for: BundleFinder.self))

struct _R {
  let bundle: Foundation.Bundle
  var color: color { .init(bundle: bundle) }
  var image: image { .init(bundle: bundle) }
  var info: info { .init(bundle: bundle) }
  var font: font { .init(bundle: bundle) }
  var file: file { .init(bundle: bundle) }

  func color(bundle: Foundation.Bundle) -> color {
    .init(bundle: bundle)
  }
  func image(bundle: Foundation.Bundle) -> image {
    .init(bundle: bundle)
  }
  func info(bundle: Foundation.Bundle) -> info {
    .init(bundle: bundle)
  }
  func font(bundle: Foundation.Bundle) -> font {
    .init(bundle: bundle)
  }
  func file(bundle: Foundation.Bundle) -> file {
    .init(bundle: bundle)
  }
  func validate() throws {
    try self.font.validate()

  }

  struct project {
    let developmentRegion = "en"
  }

// MARK: Colors
  struct color {
    let bundle: Foundation.Bundle

      var viewBackground: RswiftResources.ColorResource { .init(name: "viewBackground", path: [], bundle: bundle)}
      var red: RswiftResources.ColorResource { .init(name: "red", path: [], bundle: bundle)}
      var gray: RswiftResources.ColorResource { .init(name: "gray", path: [], bundle: bundle)}
      var grayText: RswiftResources.ColorResource { .init(name: "grayText", path: [], bundle: bundle)}
      var redUnselected: RswiftResources.ColorResource { .init(name: "redUnselected", path: [], bundle: bundle)}
      var white: RswiftResources.ColorResource { .init(name: "white", path: [], bundle: bundle)}
  }

// MARK: images
  struct image {
    let bundle: Foundation.Bundle
//      var play: RswiftResources.ImageResource { .init(name: "PlayIcon", path: [], bundle: bundle, locale: nil, onDemandResourceTags: nil)}
      var firstPage: RswiftResources.ImageResource { .init(name: "1p", path: [], bundle: bundle, locale: nil, onDemandResourceTags: nil)}
      var secondPage: RswiftResources.ImageResource { .init(name: "2p", path: [], bundle: bundle, locale: nil, onDemandResourceTags: nil)}
      var thirdPage: RswiftResources.ImageResource { .init(name: "3p", path: [], bundle: bundle, locale: nil, onDemandResourceTags: nil)}
      var fourthPage: RswiftResources.ImageResource { .init(name: "4p", path: [], bundle: bundle, locale: nil, onDemandResourceTags: nil)}
      var navLoc: RswiftResources.ImageResource { .init(name: "navLoc", path: [], bundle: bundle, locale: nil, onDemandResourceTags: nil)}
  }

// MARK: info
  struct info {
    let bundle: Foundation.Bundle
    var uiApplicationSceneManifest: uiApplicationSceneManifest { .init(bundle: bundle) }

    func uiApplicationSceneManifest(bundle: Foundation.Bundle) -> uiApplicationSceneManifest {
      .init(bundle: bundle)
    }

    struct uiApplicationSceneManifest {
      let bundle: Foundation.Bundle

      let uiApplicationSupportsMultipleScenes: Bool = false

      var _key: String { bundle.infoDictionaryString(path: ["UIApplicationSceneManifest"], key: "_key") ?? "UIApplicationSceneManifest" }
      var uiSceneConfigurations: uiSceneConfigurations { .init(bundle: bundle) }

      func uiSceneConfigurations(bundle: Foundation.Bundle) -> uiSceneConfigurations {
        .init(bundle: bundle)
      }

      struct uiSceneConfigurations {
        let bundle: Foundation.Bundle
        var _key: String { bundle.infoDictionaryString(path: ["UIApplicationSceneManifest", "UISceneConfigurations"], key: "_key") ?? "UISceneConfigurations" }
        var uiWindowSceneSessionRoleApplication: uiWindowSceneSessionRoleApplication { .init(bundle: bundle) }

        func uiWindowSceneSessionRoleApplication(bundle: Foundation.Bundle) -> uiWindowSceneSessionRoleApplication {
          .init(bundle: bundle)
        }

        struct uiWindowSceneSessionRoleApplication {
          let bundle: Foundation.Bundle
          var defaultConfiguration: defaultConfiguration { .init(bundle: bundle) }

          func defaultConfiguration(bundle: Foundation.Bundle) -> defaultConfiguration {
            .init(bundle: bundle)
          }

          struct defaultConfiguration {
            let bundle: Foundation.Bundle
            var uiSceneConfigurationName: String { bundle.infoDictionaryString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication"], key: "UISceneConfigurationName") ?? "Default Configuration" }
            var uiSceneDelegateClassName: String { bundle.infoDictionaryString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication"], key: "UISceneDelegateClassName") ?? "$(PRODUCT_MODULE_NAME).SceneDelegate" }
          }
        }
      }
    }
  }

// MARK: Fonts
  struct font: Sequence {
    let bundle: Foundation.Bundle
//      var robotoMedium: RswiftResources.FontResource { .init(name: "Roboto-Medium", bundle: bundle, filename: "Roboto_Medium.ttf")}
//
    func makeIterator() -> IndexingIterator<[RswiftResources.FontResource]> {
      [
//        robotoMedium
      ].makeIterator()
    }
    func validate() throws {
      for font in self {
        if !font.canBeLoaded() { throw RswiftResources.ValidationError("[R.swift] Font '\(font.name)' could not be loaded, is '\(font.filename)' added to the UIAppFonts array in this targets Info.plist?") }
      }
    }
  }

  /// This `_R.file` struct is generated, and contains static references to 9 resource files.
  struct file {
    let bundle: Foundation.Bundle

    /// Resource file `.swiftlint.yml`.
    var swiftlintYml: RswiftResources.FileResource { .init(name: ".swiftlint", pathExtension: "yml", bundle: bundle, locale: LocaleReference.none) }

//    /// Resource file `Commissioner-Black.ttf`.
//    var commissionerBlackTtf: RswiftResources.FileResource { .init(name: "Commissioner-Black", pathExtension: "ttf", bundle: bundle, locale: LocaleReference.none) }

  }

}
