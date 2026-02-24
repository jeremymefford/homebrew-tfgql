class Tfgql < Formula
  desc "GraphQL facade for Terraform Cloud / Enterprise"
  homepage "https://github.com/jeremymefford/tfgql"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.6.2/tfgql-darwin-arm64.tar.gz"
      sha256 "54cccbe73a91aca09cb832b7c25a392f1d529e22b3d194fe735fb4440541a60d"

      def install
        bin.install "tfgql-darwin-arm64" => "tfgql"
      end
    end

    on_intel do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.6.2/tfgql-darwin-x64.tar.gz"
      sha256 "067f6257cb914bb40c9b2057ff2ab3b732f1db7c1f4d237773417efa86f37219"

      def install
        bin.install "tfgql-darwin-x64" => "tfgql"
      end
    end
  end

  test do
    assert_match "GraphQL", shell_output("#{bin}/tfgql --help", 1)
  end
end
