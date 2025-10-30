class Tfgql < Formula
  desc "GraphQL facade for Terraform Cloud / Enterprise"
  homepage "https://github.com/jeremymefford/tfgql"
  version "0.5.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.5.10/tfgql-darwin-arm64.tar.gz"
      sha256 "05c14ec7826d0396039934d187ddb8a616da92e2a674b6cb424e3cf2fe4f21da"

      def install
        bin.install "tfgql-darwin-arm64" => "tfgql"
      end
    end

    on_intel do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.5.10/tfgql-darwin-x64.tar.gz"
      sha256 "ca97d584cd626dd033160aef796319e79602bd7f359fe0e870437ba76665056a"

      def install
        bin.install "tfgql-darwin-x64" => "tfgql"
      end
    end
  end

  test do
    assert_match "GraphQL", shell_output("#{bin}/tfgql --help", 1)
  end
end
