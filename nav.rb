class Nav < Formula
  desc "Terminal-based file navigator"
  homepage "https://github.com/mininit/nav"

  url "https://github.com/mininit/nav/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "fe9de644e75ee3ddcef4f0ba067632beb00e47f4244c923bb643ea75e9a728ba"
  license "GPL-3.0-only"

  livecheck do
    url :stable
    strategy :github_latest
  end

  head "https://github.com/mininit/nav.git", branch: "main"

  depends_on "ncurses"

  def install
    system "make"
    bin.install "nav"
  end

  #test do
  #  assert_match "Nav", shell_output("#{bin}/nav --help", 0)
  #end
end