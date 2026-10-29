cask "dug" do
  version "1.0.3"
  sha256 "4e44ee9b7c05b6ca84d6f30b0075724895a7f69dc7b77595e0069258485b4521"

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
