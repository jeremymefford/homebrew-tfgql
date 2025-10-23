class Tfgql < Formula
  desc "GraphQL facade for Terraform Cloud / Enterprise"
  homepage "https://github.com/jeremymefford/tfgql"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.5.3/tfgql-darwin-arm64.tar.gz"
      sha256 "06cdaf4cf8f7d7b7d414b734f86c2694e0c24b89c17eaf8340f5864e854e2f2b"

      def install
        bin.install "tfgql-darwin-arm64" => "tfgql"
      end
    end

    on_intel do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.5.3/tfgql-darwin-x64.tar.gz"
      sha256 "ce4b01be9568cb2366d129aff0b74485aef671b80ea8866f4daffefe9c690076"

      def install
        bin.install "tfgql-darwin-x64" => "tfgql"
      end
    end
  end

  test do
    assert_match "GraphQL", shell_output("#{bin}/tfgql --help", 1)
  end
end
