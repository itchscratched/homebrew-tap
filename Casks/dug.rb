cask "dug" do
  version "1.0.4"
  sha256 "bf7ad4fc088b2cf5b280a9ce9d61204b15e7e3218eda3c3d7abcdf03e36ef0df"

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
