class Zuxi < Formula
  desc "Cross-platform offline developer toolkit"
  homepage "https://github.com/nxrvl/zuxi"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nxrvl/zuxi/releases/download/v0.2.1/zuxi-0.2.1-macos-arm64.tar.gz"
      sha256 "c41e7af3e2a032ab96f2908218d57f1d0c9d19c55798c9e797161fd2442bebdb"
    else
      url "https://github.com/nxrvl/zuxi/releases/download/v0.2.1/zuxi-0.2.1-macos-amd64.tar.gz"
      sha256 "1bf44c91acb84d7afe32dba1f8a5ec9b2326f24539e3234927f5fdcc20a6623f"
    end
  end

  def install
    bin.install "zuxi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zuxi --version")
  end
end
