class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-558-8afbeb6/sd-master-558-8afbeb6-bin-macos-metal-arm64.zip"
  version "0.0.558_8afbeb6"
  sha256 "b7bc6d859a5cefcd9a55d26e6c7df41cd4c587f2437589e04abf63172da04159"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
