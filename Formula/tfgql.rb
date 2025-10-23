class Tfgql < Formula
  desc "TFC/E GraphQL Facade - Exposes Terraform Cloud and Terraform Enterprise data through GraphQL"
  homepage "https://github.com/jeremymefford/tfgql"
  version "0.5.2"
  license "ISC"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jeremymefford/tfgql/releases/download/v0.5.2/tfgql-darwin-arm64.tar.gz"
    sha256 "f9ca7e56bbfe2cd27e7c1a049b24342bcdb50d28c9016ce86dea83245f6187c8"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeremymefford/tfgql/releases/download/v0.5.2/tfgql-darwin-x64.tar.gz"
    sha256 "fc916ff7f8dc3d41c65570919000002b2626f365fc75d84b9cb643870ab08019"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeremymefford/tfgql/releases/download/v0.5.2/tfgql-linux-x64.tar.gz"
    sha256 "12b629d12e09b6dc1692e8693241f4c182dbe9bb5e15362f01fd89c8433c55d6"
  end

  def install
    bin.install "tfgql"
  end

  test do
    assert_match "tfgql", shell_output("#{bin}/tfgql --help 2>&1", 1)
  end
end
