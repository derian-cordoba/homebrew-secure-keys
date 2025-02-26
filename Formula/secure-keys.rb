class SecureKeys < Formula
  desc 'Secure Keys is a simple tool to manage your secret keys in your iOS project'.freeze
  homepage 'https://github.com/derian-cordoba/secure-keys'.freeze
  url 'https://github.com/derian-cordoba/secure-keys/archive/refs/tags/v1.1.3.tar.gz'.freeze
  sha256 '828923b1f41916ec5bf6b6fe5598262bbd017e35e10e695fe182a573b4c77989'.freeze
  license 'MIT'.freeze

  depends_on 'ruby@3.3'
  depends_on macos: :sonoma

  def install
    ENV['GEM_HOME'] = libexec
    ENV['GEM_PATH'] = libexec

    system 'gem', 'install', 'secure-keys', '-v', '1.1.3'

    (bin / 'secure-keys').write_env_script libexec / 'bin/secure-keys',
                                           PATH: "#{Formula['ruby@3.3'].opt_bin}:#{libexec}/bin:$PATH",
                                           GEM_HOME: libexec.to_s,
                                           GEM_PATH: libexec.to_s
  end

  test do
    system 'which', 'secure-keys'
    system 'secure-keys', '--help'
    system 'secure-keys', '--version'
  end
end
