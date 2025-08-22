class Imgbase < Formula
  desc "CLI tool to encode images as base64 data URIs"
  homepage "https://github.com/mininit/imgbase"
  url "https://github.com/mininit/imgbase/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "27139bcf32f0cae30e3786c24db7af61f8f995f375b8f202f71db0bba421b486"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.Version=#{version}")
  end

  test do
    # This test checks that the binary runs and shows usage without args
    assert_match "Usage", shell_output("#{bin}/imgbase", 1)
  end
end
