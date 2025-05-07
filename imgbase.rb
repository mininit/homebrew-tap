class Imgbase < Formula
  desc "CLI tool to encode images as base64 data URIs"
  homepage "https://github.com/yourusername/imgbase"
  url "https://github.com/mininit/imgbase/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a9dbdce1d95d2195061739b4108087dde5f30d4c4c6ec6722a8c0f4c1aa43b45"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    # This test checks that the binary runs and shows usage without args
    assert_match "Usage", shell_output("#{bin}/imgbase", 1)
  end
end
