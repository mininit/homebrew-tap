class Lsmkv < Formula
  desc "A CLI tool for auditing Matroska (.mkv) files"
  homepage "https://github.com/mininit/lsmkv"
  url "https://github.com/mininit/lsmkv/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "1d6a7e11b4fb9e974bf177c2d9c50660044709bea9d66c2440e27b0b5fe52dfb"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lsmkv #{version}", shell_output("#{bin}/lsmkv --version") 
  end
end
