cask "skilldeck" do
  version "0.2.0"
  sha256 "44632e62b92cb5b72565b4100aadf97e804bbc1cfbf7071b6e7ede0af4e77df0"

  url "https://github.com/crossoverJie/SkillDeck/releases/download/v#{version}/SkillDeck-v#{version}-universal.zip"
  name "SkillDeck"
  desc "Native macOS application for managing AI code agent skills"
  homepage "https://github.com/crossoverJie/SkillDeck"

  depends_on macos: :sonoma

  app "SkillDeck.app"

  zap trash: [
    "~/.agents/.skill-lock.json",
  ]
end
