class Pgfmt < Formula
  desc "Formatter for PostgreSQL sql files"
  homepage "https://github.com/sirmspencer/pgfmt"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.1/pgfmt-darwin-arm64.tar.gz"
      sha256 "2b8a9c3c086b3b04316d4981ea314d4b56da78213c80e46c9deced6ca209cd2d"
    end
    on_intel do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.1/pgfmt-darwin-amd64.tar.gz"
      sha256 "c0850f5ee3d5d85684f86fc302d78f40000aa5a54aa91abf0b607fc23f6957be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.1/pgfmt-linux-arm64.tar.gz"
      sha256 "9b6cbd17d2e499659978d821f6a7ed29728fa9829366dcbd2679d8c9b0ae2534"
    end
    on_intel do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.1/pgfmt-linux-amd64.tar.gz"
      sha256 "5667cd6cb63785f4c781568a88d9452b603f18cf5e338142db996e7366544a11"
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
