# This formula is a placeholder. goreleaser will overwrite it on first release.
class Coastguard < Formula
  desc "Coastguard CLI — manage your coasts.dev projects"
  homepage "https://github.com/jsx-tool/coastguard-platform"
  version "0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsx-tool/coastguard-platform/releases/download/cli%2Fv0.0.0/coastguard-darwin-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    elsif Hardware::CPU.intel?
      url "https://github.com/jsx-tool/coastguard-platform/releases/download/cli%2Fv0.0.0/coastguard-darwin-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsx-tool/coastguard-platform/releases/download/cli%2Fv0.0.0/coastguard-linux-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    elsif Hardware::CPU.intel?
      url "https://github.com/jsx-tool/coastguard-platform/releases/download/cli%2Fv0.0.0/coastguard-linux-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install Dir["coastguard-*"].first => "coastguard"
  end

  test do
    assert_match "coastguard", shell_output("#{bin}/coastguard --version")
  end
end
