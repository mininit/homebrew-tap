class Nav < Formula
  desc "Terminal-based file navigator"
  homepage "https://github.com/mininit/nav"

  url "https://github.com/mininit/nav/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "6a4d2b8468219b1efc58b23bd98655115cb4a3ce4c8243bdea469e53313b17d6"
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
