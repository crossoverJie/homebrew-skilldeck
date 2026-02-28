cask "skilldeck" do
  version "0.0.12"
  sha256 "31d75cd000ccbd184f9c86a79ec2d09fc3dbb3080ea0d2f139d279ba7f7ea5a9"

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
