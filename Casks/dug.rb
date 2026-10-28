cask "dug" do
  version "1.0.2"
  sha256 "2b1aeed75bf151d86af6f51f4e868b8e5110007a06cf65cf3ff0b52c6b517595"

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
