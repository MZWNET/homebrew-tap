class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-1127-79dc7ca/sd-master-1127-79dc7ca-bin-macos-metal-arm64.zip"
  version "0.0.1127_79dc7ca"
  sha256 "597fb116839aaeb93d43e53fa0acddf7ae368eea4d767528e4aa05d3dc2a7af7"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
