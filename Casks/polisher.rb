cask "polisher" do
  version "1.2.0"
  sha256 "ff5c3ab64b62ed6b1b54a3d879b220a80c3d89419db60ffa9a14762525710d52"

  url "https://dl.itchscratched.com/polisher/Polisher-#{version}.dmg"
  name "Polisher"
  desc "Polish and translate selected text in any app"
  homepage "https://itchscratched.com/polisher/"

  livecheck do
    url "https://dl.itchscratched.com/polisher/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Polisher.app"

  uninstall quit: "com.itchscratched.polisher"

  zap trash: [
    "~/Library/Application Support/Polisher",
    "~/Library/Caches/com.itchscratched.polisher",
    "~/Library/HTTPStorages/com.itchscratched.polisher",
    "~/Library/Preferences/com.itchscratched.polisher.plist",
  ]
end
