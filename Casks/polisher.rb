cask "polisher" do
  version "1.2.2"
  sha256 "c8397726dbfbce2745b89e542a6d7ce0b7398f32cd3092eda7d5f530a06ff2fb"

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
