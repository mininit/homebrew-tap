class Nav < Formula
  desc "Terminal-based file navigator"
  homepage "https://github.com/mininit/nav"

  url "https://github.com/mininit/nav/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "b5f617aa721e2028300f01208c265e12c9e87720188f7e8a86c8d4100dbe3f40"
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
