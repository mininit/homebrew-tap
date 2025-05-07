class Imgbase < Formula
  desc "CLI tool to encode images as base64 data URIs"
  homepage "https://github.com/yourusername/imgbase"
  url "https://github.com/mininit/imgbase/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0305e94533f84d050de6ce7b2460d38c3feaf9c79569a1a260d328cae33eb11c"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    # This test checks that the binary runs and shows usage without args
    assert_match "Usage", shell_output("#{bin}/imgbase", 1)
  end
end