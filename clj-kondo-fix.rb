class CljKondoFix < Formula
  desc "Auto-fix Clojure code based on clj-kondo findings"
  homepage "https://github.com/sirmspencer/clj-kondo-fix"
  version "0.2.3"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sirmspencer/clj-kondo-fix/releases/download/v0.2.3/clj-kondo-fix-darwin-arm64.tar.gz"
      sha256 "49ebb2ccaa3be522f68115cc3935a7c4de92cd93e174cf71817f50b8b547a604"
    end
    on_intel do
      url "https://github.com/sirmspencer/clj-kondo-fix/releases/download/v0.2.3/clj-kondo-fix-darwin-amd64.tar.gz"
      sha256 "908c943b7687537caac393300dad9b1abec885401a0f45b89c4803a55f14b8a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sirmspencer/clj-kondo-fix/releases/download/v0.2.3/clj-kondo-fix-linux-arm64.tar.gz"
      sha256 "ea5a866e4e5febf51812a8ae042d7ed5cb9b4020b2ea68bb1a06ebfa5924913f"
    end
    on_intel do
      url "https://github.com/sirmspencer/clj-kondo-fix/releases/download/v0.2.3/clj-kondo-fix-linux-amd64.tar.gz"
      sha256 "755ffc23209d9dde131ea1555ea0e2512ebd55680e8e50c7c20a5989ab78be36"
    end
  end

  def install
    bin.install "clj-kondo-fix"
  end

  test do
    assert_match "clj-kondo-fix #{version}", shell_output("#{bin}/clj-kondo-fix --version")
    (testpath/"example.clj").write "(ns example (:require [clojure.string :as s]))\n"
    # exits 1 when it fixes something
    shell_output("#{bin}/clj-kondo-fix --lint #{testpath}/example.clj --fix", 1)
    refute_match "clojure.string", (testpath/"example.clj").read
  end
end
