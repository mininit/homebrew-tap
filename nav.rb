class Nav < Formula
  desc "Terminal-based file navigator"
  homepage "https://github.com/mininit/nav"
  url "https://github.com/mininit/nav/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "ace9e3463abf641527833f3c4bff91931aa9dc726e6f8feaaccb4eea6b19463a"
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
