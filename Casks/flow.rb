cask "flow" do
  version "1.0.2"
  sha256 "4683739d4b8bc89940fb61ce5b59c710526b8db97507de98f76a2b6585a1a626"

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
