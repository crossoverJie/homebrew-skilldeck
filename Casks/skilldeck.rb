cask "skilldeck" do
  version "0.0.5"
  sha256 "e49e89e1c098e52d9884e9f587f8fa3f2c6624155c15388d24bce013df1ec859"

  url "https://github.com/crossoverJie/SkillDeck/releases/download/v#{version}/SkillDeck-v#{version}-universal.zip"
  name "SkillDeck"
  desc "Native macOS application for managing AI code agent skills"
  homepage "https://github.com/crossoverJie/SkillDeck"

  depends_on macos: ">= :sonoma"

  app "SkillDeck.app"

  zap trash: [
    "~/.agents/.skill-lock.json",
  ]
end
