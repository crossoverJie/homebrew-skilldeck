cask "skilldeck" do
  version "0.0.8"
  sha256 "11a5bd86aad51f79b77d6f5303ed8c407729bf1d7442254592ae1f55196ffd49"

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
