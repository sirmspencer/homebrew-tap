class Pgfmt < Formula
  desc "Formatter for PostgreSQL sql files"
  homepage "https://github.com/sirmspencer/pgfmt"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.3/pgfmt-darwin-arm64.tar.gz"
      sha256 "b7070ce30454ff0082a8cf56b97d59bd035e3b3a23c7eaeb2ed2e26d77d7e556"
    end
    on_intel do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.3/pgfmt-darwin-amd64.tar.gz"
      sha256 "24927a8b9028b884462bb7afc2f88f05e1867fd92be9cf000a72c9f60b427b00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.3/pgfmt-linux-arm64.tar.gz"
      sha256 "564e5599e083f220e21998a461fdbac5d730079ffd27bc552fed23406edd91d4"
    end
    on_intel do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.3/pgfmt-linux-amd64.tar.gz"
      sha256 "9000acfba1ecd242805d06b3a72766247f324096c6e81f4a902806997676bbdc"
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
