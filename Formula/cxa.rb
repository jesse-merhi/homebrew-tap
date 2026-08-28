class Cxa < Formula
  desc "Fast account switcher for Codex ChatGPT OAuth accounts"
  homepage "https://github.com/jesse-merhi/cxa"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jesse-merhi/cxa/releases/download/v0.1.0/cxa-macos-aarch64.tar.gz"
      sha256 "1e817547974f7316bf921e5faa8c4d52b479707bb4dd58605515da783c6dde4a"
    end
    on_intel do
      url "https://github.com/jesse-merhi/cxa/releases/download/v0.1.0/cxa-macos-x86_64.tar.gz"
      sha256 "0436966f19f71ef1d751ba13aaafd75bdf4c72d6df5a5f40fcdadb13d635cae9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jesse-merhi/cxa/releases/download/v0.1.0/cxa-linux-aarch64.tar.gz"
      sha256 "a01d590d0425b7a90bde54217ecf2ec430dbfb2bf52d1dbc6dbb4b707b18591b"
    end
    on_intel do
      url "https://github.com/jesse-merhi/cxa/releases/download/v0.1.0/cxa-linux-x86_64.tar.gz"
      sha256 "045456214ad73b91a1968a7c3913a98c9fa798875ef2cacb86076374c86cac5f"
    end
  end

  def install
    bin.install "cxa"
  end

  test do
    assert_match "cxa #{version}", shell_output("#{bin}/cxa --version")
  end
end
