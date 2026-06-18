class Imgbase < Formula
  desc "Encode images as base64 data URIs"
  homepage "https://github.com/mininit/imgbase"
  url "https://github.com/mininit/imgbase/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "9108812d748ea76321873d35eb476efa3163bc7605ef70fa87a04638ebe07533"
  license "MIT"
  head "https://github.com/mininit/imgbase.git", branch: "main"
  
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.Version=#{version}")
  end

  test do
    assert_match "imgbase version #{version}", shell_output("#{bin}/imgbase --version")
  end

end

