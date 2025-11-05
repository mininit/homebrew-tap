class Nav < Formula
  desc "Terminal-based file navigator"
  homepage "https://github.com/mininit/nav"
  url "https://github.com/mininit/nav/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "753a59ffad4f1dac052fad1bd40a91476f84f10195baee18f04680011253446d"
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
