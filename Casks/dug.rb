cask "dug" do
  version "1.0.0"
  sha256 "7a1f113a368c9e31f39dfce35c5a37088cff69b234ad74d79ccd0839e5058240"

  url "https://dl.itchscratched.com/dug/Dug-#{version}.dmg"
  name "Dug"
  desc "Disk space manager that shows what is safe to remove"
  homepage "https://itchscratched.com/dug/"

  livecheck do
    url "https://dl.itchscratched.com/dug/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Dug.app"

  uninstall quit: "com.itchscratched.dug"

  zap trash: [
    "~/Library/Application Support/com.itchscratched.dug",
    "~/Library/Caches/com.itchscratched.dug",
    "~/Library/HTTPStorages/com.itchscratched.dug",
    "~/Library/Preferences/com.itchscratched.dug.plist",
  ]
end
