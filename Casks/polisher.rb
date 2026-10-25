cask "polisher" do
  version "1.0.0"
  sha256 "6fb63c02150ad177d0efe8e70cf0bdbb35445a8757ff215a36f5e589fbd82821"

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
