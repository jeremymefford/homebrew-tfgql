class Tfgql < Formula
  desc "GraphQL facade for Terraform Cloud / Enterprise"
  homepage "https://github.com/jeremymefford/tfgql"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.6.1/tfgql-darwin-arm64.tar.gz"
      sha256 "76fd990c9a4a8da1967a6b9b12b5de5d8885187b785208a0b91b1963db8d9c81"

      def install
        bin.install "tfgql-darwin-arm64" => "tfgql"
      end
    end

    on_intel do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.6.1/tfgql-darwin-x64.tar.gz"
      sha256 "d347bf4c2f6ca8d0320483fb1084de8ce80dca7fd3030d7931675feb211fb635"

      def install
        bin.install "tfgql-darwin-x64" => "tfgql"
      end
    end
  end

  test do
    assert_match "GraphQL", shell_output("#{bin}/tfgql --help", 1)
  end
end
