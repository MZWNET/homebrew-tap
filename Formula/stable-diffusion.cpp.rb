class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-817-bcc7e29/sd-master-817-bcc7e29-bin-macos-metal-arm64.zip"
  version "0.0.817_bcc7e29"
  sha256 "2116435b30ccb584974539a2a5c36e02d1f6c4c7c7647ebb1c5297f4e5cb81a8"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
