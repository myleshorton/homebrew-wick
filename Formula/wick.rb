class Wick < Formula
  desc "Browser-grade web access for AI agents"
  homepage "https://getwick.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/myleshorton/wick/releases/download/v0.1.0/wick-0.1.0-darwin-arm64.tar.gz"
      sha256 "353f2262314fe2cad5760a9c72161c61b3d4da56e1c6749fa16112599f317570"
    end
  end

  def install
    bin.install "wick"
  end

  def caveats
    <<~EOS
      To configure Wick for your AI coding tools, run:
        wick setup
    EOS
  end

  test do
    assert_match "wick #{version}", shell_output("#{bin}/wick version")
  end
end
