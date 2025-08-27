class Imgbase < Formula
  desc "CLI tool to encode images as base64 data URIs"
  homepage "https://github.com/mininit/imgbase"
  url "https://github.com/mininit/imgbase/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "f69a5c1babc9307395c1f9a98c70304ae0f16a34e574df75568378b5911d027f"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.Version=#{version}")
  end

  test do
    # This test checks that the binary runs and shows usage without args
    assert_match "Usage", shell_output("#{bin}/imgbase", 1)
  end
end
