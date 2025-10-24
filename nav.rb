class Nav < Formula
  desc "Terminal-based file navigator"
  homepage "https://github.com/mininit/nav"

  url "https://github.com/mininit/nav/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "8bf5cda0f5c0770e111416fe4261b2537c8c181248213da2e74ba3cf9e7ca194"
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
