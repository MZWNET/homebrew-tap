class StableDiffusionCpp < Formula
  version "0e52afc"
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  url "https://github.com/MZWNET/actions/releases/download/sd-master-467-0e52afc/sd-master-467-0e52afc-bin-macos-metal-arm64.zip"
  sha256 "0378879f27d63e9d31f2025453a5cff5cad9339a52b29af44f203ac1d0c5756f"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
