class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-685-19bdfe2/sd-master-685-19bdfe2-bin-macos-metal-arm64.zip"
  version "0.0.685_19bdfe2"
  sha256 "b5e7a0091a991f51f8daa58c04e6dffc8dfec0ee6b108cb87b70de17530b2283"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
