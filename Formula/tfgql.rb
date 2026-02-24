class Tfgql < Formula
  desc "GraphQL facade for Terraform Cloud / Enterprise"
  homepage "https://github.com/jeremymefford/tfgql"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.6.3/tfgql-darwin-arm64.tar.gz"
      sha256 "2c79d18d37f170f8d69b9bbb539c0acb29ade1cf0fd369222451e61f44aa5017"

      def install
        bin.install "tfgql-darwin-arm64" => "tfgql"
      end
    end

    on_intel do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.6.3/tfgql-darwin-x64.tar.gz"
      sha256 "dd205380aac0f25fabba7cf8fbb41395232cc4e63e1cf47581307c3ce446132d"

      def install
        bin.install "tfgql-darwin-x64" => "tfgql"
      end
    end
  end

  test do
    assert_match "GraphQL", shell_output("#{bin}/tfgql --help", 1)
  end
end
