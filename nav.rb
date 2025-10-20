class Nav < Formula
  desc "Terminal-based file navigator"
  homepage "https://github.com/mininit/nav"

  url "https://github.com/mininit/nav/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "eab0082035de7d386fe53dcd0522255b1a8a839d2b73e35d859c151688de332e"
  license "GPL-3.0-only"

  head "https://github.com/mininit/nav.git", branch: "main"

  depends_on "ncurses"

  def install
    system "make"
    bin.install "nav"
  end

  test do
    assert_match "nav version #{version}", shell_output("#{bin}/nav -v")
  end
end
