class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-642-3a8788c/sd-master-642-3a8788c-bin-macos-metal-arm64.zip"
  version "0.0.642_3a8788c"
  sha256 "f3358fa52e64a80b5985519da0a2b2f914c9d3d9ec62d20c6c3b0e53a1f5b25d"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
