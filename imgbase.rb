class Imgbase < Formula
  desc "CLI tool to encode images as base64 data URIs"
  homepage "https://github.com/mininit/imgbase"
  url "https://github.com/mininit/imgbase/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "e64bd9a7420b53637abc348420a180d8be41f7ebb14c828a88c3eb8795324fdf"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/imgbase"
  end

  test do
    # This test checks that the binary runs and shows usage without args
    assert_match "Usage", shell_output("#{bin}/imgbase", 1)
  end
end
