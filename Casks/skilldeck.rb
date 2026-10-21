cask "skilldeck" do
  version "0.0.28"
  sha256 "eb55377fe79e76665e43811e3dfc5ace236c43e709a7d130f276900ae0e60c2b"

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
