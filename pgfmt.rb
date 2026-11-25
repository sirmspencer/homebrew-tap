class Pgfmt < Formula
  desc "Formatter for PostgreSQL sql files"
  homepage "https://github.com/sirmspencer/pgfmt"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.6/pgfmt-darwin-arm64.tar.gz"
      sha256 "ff0161c16534f71cb4379309edddf3178d8859178dff9a8af34a698bdaea8c8d"
    end
    on_intel do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.6/pgfmt-darwin-amd64.tar.gz"
      sha256 "6ac595f80f3a73abdbecb241cc6b9226c44ea86323f6b0d81c1f131372a1cd8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.6/pgfmt-linux-arm64.tar.gz"
      sha256 "284278f34da3cd89181256aacfc9d506ba363c5da7901ca9e524991dc2ab646a"
    end
    on_intel do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.6/pgfmt-linux-amd64.tar.gz"
      sha256 "d4ce23108b5928d3513b48c4d65fa504a010d92a02031668c48ea1d98738555c"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "pgfmt v#{version}", shell_output("#{bin}/pgfmt -version")
    assert_equal "select 1\n", pipe_output("#{bin}/pgfmt", "SELECT 1")
  end
end
