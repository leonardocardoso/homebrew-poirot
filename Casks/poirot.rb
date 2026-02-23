cask "poirot" do
  version "0.1.0"
  sha256 "PLACEHOLDER_SHA256"

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
