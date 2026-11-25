class Pgfmt < Formula
  desc "Formatter for PostgreSQL sql files"
  homepage "https://github.com/sirmspencer/pgfmt"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.0/pgfmt-darwin-arm64.tar.gz"
      sha256 "38f3f98243da31bfbc966ea2f1231bcea342200d3c86ef001ce704da75f9a17e"
    end
    on_intel do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.0/pgfmt-darwin-amd64.tar.gz"
      sha256 "6061931845401557600c0c3ac058a6a91988f32e99728182adf41ebe84d68496"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.0/pgfmt-linux-arm64.tar.gz"
      sha256 "f91aa281d19b7ec8ce8501a9386a0d426c7c4e31ca059a2b05a4343df64fb555"
    end
    on_intel do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.0/pgfmt-linux-amd64.tar.gz"
      sha256 "0c3c71d2a76372d5d797d33da6b3303ef6da27f71d571cba8d23e78ca6798936"
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
