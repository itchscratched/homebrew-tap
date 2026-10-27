cask "flow" do
  version "1.0.0"
  sha256 "590b08b3bae53a8d2c51d0d8d6411cae6acae8b3deb8047ae77608c21ab99f8f"

  url "https://dl.itchscratched.com/flow/Flow-#{version}.dmg"
  name "Flow"
  desc "Switcher for editor windows that shows which coding agent is working or waiting"
  homepage "https://itchscratched.com/flow/"

  livecheck do
    url "https://dl.itchscratched.com/flow/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Flow.app"

  uninstall quit: "com.itchscratched.flow"

  zap trash: [
    "~/Library/Application Support/Flow",
    "~/Library/Caches/com.itchscratched.flow",
    "~/Library/HTTPStorages/com.itchscratched.flow",
    "~/Library/Logs/Flow",
    "~/Library/Preferences/com.itchscratched.flow.plist",
  ]
end
