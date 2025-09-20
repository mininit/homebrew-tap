class Imgbase < Formula
  desc "CLI tool to encode images as base64 data URIs"
  homepage "https://github.com/mininit/imgbase"
  url "https://github.com/mininit/imgbase.git",
      tag:      "v0.3.0",
      revision: "82fc074d0ddacdcdc791e0e9e5785b230e1ab177"
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
