class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-552-87ecb95/sd-master-552-87ecb95-bin-macos-metal-arm64.zip"
  version "0.0.552_87ecb95"
  sha256 "dac3fe17cd4c4cbbbda8dd2b3d9b89b5145ce79665ec0be862241d868def7cf9"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
