cask "poirot" do
  version "26.03.5"
  sha256 "3c869f4159cc091f9484b6fa57b60e9eb3ff7c2e0cf2537b7159c30df1f1918d"

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
