cask "skilldeck" do
  version "0.0.21"
  sha256 "c269fc6c212221607263715b698e05ee4e2afdaf5fbcfb16a2db63d7496d015a"

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
