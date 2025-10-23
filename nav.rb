class Nav < Formula
  desc "Terminal-based file navigator"
  homepage "https://github.com/mininit/nav"

  url "https://github.com/mininit/nav/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "18fb7dc724b10be7242c07cb740e1a6b6a7e462e2381c0bf330a24c373d5b188"
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
