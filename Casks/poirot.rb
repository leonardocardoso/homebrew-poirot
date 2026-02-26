cask "poirot" do
  version "1.0.2"
  sha256 "6e79829eb144346e422e1e54ad5abfe5ec0c01b7ac90ffbb92a6834f9de6d625"

  url "https://github.com/LeonardoCardoso/poirot/releases/download/v#{version}/Poirot-v#{version}.dmg"
  name "Poirot"
  desc "Native macOS companion for Claude Code"
  homepage "https://github.com/LeonardoCardoso/poirot"

  depends_on macos: ">= :sequoia"

  app "Poirot.app"

  zap trash: [
    "~/Library/Preferences/com.leonardocardoso.Poirot.plist",
    "~/Library/Caches/com.leonardocardoso.Poirot",
  ]
end
