cask "polisher" do
  version "1.0.0"
  sha256 "877449e3ac706aec3904c5886b4798cd3d285fb600e86823f927e7aa1d9435d7"

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
