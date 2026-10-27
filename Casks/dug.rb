cask "dug" do
  version "1.0.1"
  sha256 "26664ceeef102f9835725ceb6a3f93dc356889c71b28143c6482a637ad366a63"

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
