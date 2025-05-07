{callPackage}: rec {
  builder = callPackage ./builder.nix {};
  microsoft = builder rec {
    name = "Microsoft";
    version = "0.14.0";
    rev = "v${version}";
    sha256 = "sha256-22rGNLZOsWYQ+H3CcM2b1zOXV3kNPcgYqDpaCg1iv9o=";
  };
  google = builder rec {
    name = "Google";
    version = "0.6.0";
    rev = "v${version}";
    sha256 = "sha256-TQS/hgS6tEWPSuZpEbX65MdYSE/+HJVcnzIuQbhIG2M=";
  };
  joblint = builder rec {
    name = "Joblint";
    version = "0.4.1";
    rev = "v${version}";
    sha256 = "sha256-zRz5ThOg5RLTZj3dYPe0PDvOF5DjO31lduSpi2Us87U=";
  };
  proselint = builder rec {
    name = "proselint";
    version = "0.3.3";
    rev = "v${version}";
    sha256 = "sha256-faeWr1bRhnKsycJY89WqnRv8qIowUmz3EQvDyjtl63w=";
  };
  write-good = builder rec {
    name = "write-good";
    version = "0.4.0";
    rev = "v${version}";
    sha256 = "sha256-KQzY6MeHV/owPVmUAfzGUO0HmFPkD7wdQqOvBkipwP8=";
  };
  readability = builder rec {
    name = "Readability";
    repo = "readability";
    version = "0.1.1";
    rev = "v${version}";
    sha256 = "sha256-5Y9v8QsZjC2w3/pGIcL5nBdhpogyJznO5IFa0s8VOOI=";
  };
  alex = builder rec {
    name = "alex";
    version = "0.2.1";
    rev = "v${version}";
    sha256 = "sha256-xNF7se2FwKgNe5KYx/zvGWpIwBsBADYGH4JV1lUww+Q=";
  };
  redhat = builder rec {
    name = "RedHat";
    owner = "redhat-documentation";
    repo = "vale-at-red-hat";
    version = "597";
    rev = "v${version}";
    sha256 = "sha256-Y5TshFG8EfcsmhEqTljxkxb2hRmfem+0njQDa/mUhmw=";
    rulesPath = ".vale/styles/RedHat/";
  };
  openly = builder rec {
    name = "Openly";
    owner = "ChrisChinchilla";
    repo = "Openly";
    version = "0.4.4";
    rev = "${version}";
    sha256 = "sha256-1Crs//34qFw45DO7IzksNXGDN1YJNqc6lPU9fuVwLQA=";
  };
}
