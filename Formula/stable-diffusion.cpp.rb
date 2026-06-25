class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-721-8caa3f9/sd-master-721-8caa3f9-bin-macos-metal-arm64.zip"
  version "0.0.721_8caa3f9"
  sha256 "f1c610c1549e70b997b6dab6c0898be592d0ce948f897285751c6a5e1a131ee3"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
