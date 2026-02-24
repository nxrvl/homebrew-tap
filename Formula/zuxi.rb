class Zuxi < Formula
  desc "Cross-platform offline developer toolkit"
  homepage "https://github.com/nxrvl/zuxi"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nxrvl/zuxi/releases/download/v0.2.2/zuxi-0.2.2-macos-arm64.tar.gz"
      sha256 "9d91d32a220f87554151524c1e07ee87fc95d57e5b10545e4652dc0017a36a74"
    else
      url "https://github.com/nxrvl/zuxi/releases/download/v0.2.2/zuxi-0.2.2-macos-amd64.tar.gz"
      sha256 "2d09bd6277489575d38d012d78f6c9fa1e10afa056cda946d855454dbb570bda"
    end
  end

  def install
    bin.install "zuxi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zuxi --version")
  end
end
