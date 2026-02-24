class Zuxi < Formula
  desc "Cross-platform offline developer toolkit"
  homepage "https://github.com/nxrvl/zuxi"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nxrvl/zuxi/releases/download/v0.2.1/zuxi-0.2.1-macos-arm64.tar.gz"
      sha256 "f5310ef0a1ce005942cc4bcba72d3c638dfee70b6246b7559303bda784ac1452"
    else
      url "https://github.com/nxrvl/zuxi/releases/download/v0.2.1/zuxi-0.2.1-macos-amd64.tar.gz"
      sha256 "5c948b80023138c661d991300cb478e0828ebfce977b6cc806be9989b2273a2c"
    end
  end

  def install
    bin.install "zuxi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zuxi --version")
  end
end
