class Tfgql < Formula
  desc "GraphQL facade for Terraform Cloud / Enterprise"
  homepage "https://github.com/jeremymefford/tfgql"
  version "0.5.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.5.11/tfgql-darwin-arm64.tar.gz"
      sha256 "e88d281672854ad6084ac2208152ffa86a6e96e6f50c0ba5015a9e68f960e97c"

      def install
        bin.install "tfgql-darwin-arm64" => "tfgql"
      end
    end

    on_intel do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.5.11/tfgql-darwin-x64.tar.gz"
      sha256 "f97f991fcdc6b7fc0694eb5e28fb29db839d1946a7b9846c9a5436d583064d41"

      def install
        bin.install "tfgql-darwin-x64" => "tfgql"
      end
    end
  end

  test do
    assert_match "GraphQL", shell_output("#{bin}/tfgql --help", 1)
  end
end
