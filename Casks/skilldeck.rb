cask "skilldeck" do
  version "0.1.1"
  sha256 "2bbc175ac1103eefcb0fbdbd69582eedb0d58711fdf1c5d0dbb5181c9ebbebc7"

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
