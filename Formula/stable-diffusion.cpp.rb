class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-679-f3fd359/sd-master-679-f3fd359-bin-macos-metal-arm64.zip"
  version "0.0.679_f3fd359"
  sha256 "271f9f1fa8c15dd497eb741e2d965d6070aa4e0ca6b48a488db576b17dfa541e"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
