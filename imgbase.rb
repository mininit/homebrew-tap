class Imgbase < Formula
  desc "Encode images as base64 data URIs"
  homepage "https://github.com/mininit/imgbase"
  url "https://github.com/mininit/imgbase.git",
      tag:      "v0.4.0",
      revision: "d2648caa9d4bb510744e9d0948327f4fff41c899"
  license "MIT"
  head "https://github.com/mininit/imgbase.git", branch: "main"

  depends_on "go" => :build

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.Version=#{version}")
  end

  test do
    assert_match "imgbase version #{version}", shell_output("#{bin}/imgbase --version")
  end

end
