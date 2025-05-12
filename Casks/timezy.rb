cask "timezy" do
  version "0.1.1"
  sha256 "0509d3f4d53dd1ee022828181636fbdc914413e0e84fa6c958edb23fdbc44681"

  url "https://cdn.ethanr.io/Timezy-#{version}.dmg"
  name "Timezy"
  desc "Timezone menu bar app"
  homepage "https://ethanr.io/timezy"

  depends_on macos: ">= :ventura"

  app "Timezy.app"

  uninstall quit: "io.ethanr.timezy"

  zap trash: [
    "~/Library/Application Scripts/io.ethanr.timezy",
    "~/Library/Containers/io.ethanr.timezy"
  ]
end
