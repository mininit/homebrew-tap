class Lsmkv < Formula
  desc "A CLI tool for auditing Matroska (.mkv) files"
  homepage "https://github.com/mininit/lsmkv"
  url "https://github.com/mininit/lsmkv/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e75ebb0766133f908df3ad5f4653a92f402d4952cb36a3ebf0368d4cba8248d9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lsmkv #{version}", shell_output("#{bin}/lsmkv --version") 
  end
end
