cask "poirot" do
  version "1.1.1"
  sha256 "e79ed712b56ab9e9841c75e261f5256a5782ed6cd912f93639c32dccf50024c7"

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
