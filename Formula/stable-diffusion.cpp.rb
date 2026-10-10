class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-951-f89d9b1/sd-master-951-f89d9b1-bin-macos-metal-arm64.zip"
  version "0.0.951_f89d9b1"
  sha256 "754eaf714903fb5ab1e8a2d4656e2453be18af9e52491eedc6109822689d1b23"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
