class Nav < Formula
  desc "Terminal-based file navigator"
  homepage "https://github.com/mininit/nav"
  url "https://github.com/mininit/nav/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "439a01244e121b38884c558df47c580cc2c1c8aedb2b28d1f2eee5507147bc79"
  license "GPL-3.0-only"
  head "https://github.com/mininit/nav.git", branch: "main"

  depends_on "ncurses"

  def install
    system "make", "install", "PREFIX=#{prefix}", "VERSION=#{version}"
  end

  test do
    assert_match "nav version #{version}", shell_output("#{bin}/nav -v")
  end
end
