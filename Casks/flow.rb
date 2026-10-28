cask "flow" do
  version "1.0.1"
  sha256 "411968d87ae9646de9d2edb4d140a006a5db39b3631c470757089d462f57f927"

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
