class Zuxi < Formula
  desc "Cross-platform offline developer toolkit"
  homepage "https://github.com/nxrvl/zuxi"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nxrvl/zuxi/releases/download/v0.2.1/zuxi-0.2.1-macos-arm64.tar.gz"
      sha256 "d5abe3da45fef653e6af862216cd8e342c7b915e99002da421c0b5840d28d541"
    else
      url "https://github.com/nxrvl/zuxi/releases/download/v0.2.1/zuxi-0.2.1-macos-amd64.tar.gz"
      sha256 "c893629af85fbcea80699742a058d2c84e5401680e797e6076ca5097e3fa1eb1"
    end
  end

  def install
    bin.install "zuxi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zuxi --version")
  end
end
