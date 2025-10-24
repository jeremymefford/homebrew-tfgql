class Tfgql < Formula
  desc "GraphQL facade for Terraform Cloud / Enterprise"
  homepage "https://github.com/jeremymefford/tfgql"
  version "0.5.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.5.8/tfgql-darwin-arm64.tar.gz"
      sha256 "a4cbb100dcebb74193da0500be9e9632b49e5eb44210857bd259e115746c7a28"

      def install
        bin.install "tfgql-darwin-arm64" => "tfgql"
      end
    end

    on_intel do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.5.8/tfgql-darwin-x64.tar.gz"
      sha256 "016f2157d4c1a6632c9b642aa848fbdb751cd898710e0e5987a6aa4d7d204816"

      def install
        bin.install "tfgql-darwin-x64" => "tfgql"
      end
    end
  end

  test do
    assert_match "GraphQL", shell_output("#{bin}/tfgql --help", 1)
  end
end
