class Nav < Formula
  desc "Terminal-based file navigator"
  homepage "https://github.com/mininit/nav"
  url "https://github.com/mininit/nav/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "1ef7d397160d61681edbb0912403248b6926275a0bddd2b77b40b145e492903c"
  license "GPL-3.0-only"
  head "https://github.com/mininit/nav.git", branch: "main"

  depends_on "ncurses"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "nav version #{version}", shell_output("#{bin}/nav -v")
  end
end
