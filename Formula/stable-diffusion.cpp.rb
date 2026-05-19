class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-624-21fd4e6/sd-master-624-21fd4e6-bin-macos-metal-arm64.zip"
  version "0.0.624_21fd4e6"
  sha256 "34b52ee52be9fdaafbdb0e2101be315f47336115b5c11c16f0cb5f416152ed5d"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
