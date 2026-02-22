class Zuxi < Formula
  desc "Cross-platform offline developer toolkit"
  homepage "https://github.com/nxrvl/zuxi"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nxrvl/zuxi/releases/download/v0.2.0/zuxi-0.2.0-macos-arm64.tar.gz"
      sha256 "686a41d920aef5d888f9af611c4c77f975a6d685a9f494c50b7acf7650512222"
    else
      url "https://github.com/nxrvl/zuxi/releases/download/v0.2.0/zuxi-0.2.0-macos-amd64.tar.gz"
      sha256 "a16f06567d7d434a60f617bf8cd65fe21ad428f37c10eca3af0ffc2964c53986"
    end
  end

  def install
    bin.install "zuxi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zuxi --version")
  end
end
