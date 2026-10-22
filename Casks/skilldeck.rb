cask "skilldeck" do
  version "0.1.0"
  sha256 "45e8c4d8a8d4a664672229b2430425401d326f073cbdbc7ba50660ff95ebda4a"

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
