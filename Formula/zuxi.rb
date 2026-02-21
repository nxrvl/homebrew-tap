class Zuxi < Formula
  desc "Cross-platform offline developer toolkit"
  homepage "https://github.com/nxrvl/zuxi"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nxrvl/zuxi/releases/download/v0.1.0/zuxi-0.1.0-macos-arm64.tar.gz"
      sha256 "645aa95a613dda8dcadd8127d56043bd9f32f6d0a71405dfa990f37fb119eea2"
    else
      url "https://github.com/nxrvl/zuxi/releases/download/v0.1.0/zuxi-0.1.0-macos-amd64.tar.gz"
      sha256 "c4da3d1289697bdbcac4c9701775f1f3070ed37f2dc23196736813f5820f062a"
    end
  end

  def install
    bin.install "zuxi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zuxi --version")
  end
end
