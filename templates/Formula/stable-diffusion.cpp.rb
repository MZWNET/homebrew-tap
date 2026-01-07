class StableDiffusionCpp < Formula
  version "#{{ver}}"
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++ "
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  url "#{{url}}"
  sha256 "#{{sha256}}"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
    system "/usr/bin/install_name_tool", "-add_rpath", "@loader_path", "#{bin}/sd-cli"
    system "/usr/bin/install_name_tool", "-add_rpath", "@loader_path", "#{bin}/sd-server"
  end
end
