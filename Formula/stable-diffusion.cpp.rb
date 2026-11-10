class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-1079-a3c49b1/sd-master-1079-a3c49b1-bin-macos-metal-arm64.zip"
  version "0.0.1079_a3c49b1"
  sha256 "45d87367f7f21e1050a4fe3ecff6f8aa6943e3e00dc98460aeccd5835363b1a4"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
