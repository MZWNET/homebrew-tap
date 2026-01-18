class StableDiffusionCpp < Formula
  version "9565c7f"
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  url "https://github.com/MZWNET/actions/releases/download/sd-master-473-9565c7f/sd-master-473-9565c7f-bin-macos-metal-arm64.zip"
  sha256 "a15ae1985c34abbd9a914a1e9bd7e32578993dcc504a8559e01a8640cad6875c"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
