cask "polisher" do
  version "1.2.6"
  sha256 "e1f6b4d9c418deeedecb613affbc5522386e5d64ee81d5ec282814f99ef499d4"

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
