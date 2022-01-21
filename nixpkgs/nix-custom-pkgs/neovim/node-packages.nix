# This file has been generated by node2nix 1.9.0. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "@msgpack/msgpack-1.12.2" = {
      name = "_at_msgpack_slash_msgpack";
      packageName = "@msgpack/msgpack";
      version = "1.12.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@msgpack/msgpack/-/msgpack-1.12.2.tgz";
        sha512 = "Vwhc3ObxmDZmA5hY8mfsau2rJ4vGPvzbj20QSZ2/E1GDPF61QVyjLfNHak9xmel6pW4heRt3v1fHa6np9Ehfeg==";
      };
    };
    "async-2.6.3" = {
      name = "async";
      packageName = "async";
      version = "2.6.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/async/-/async-2.6.3.tgz";
        sha512 = "zflvls11DCy+dQWzTW2dzuilv8Z5X/pjfmZOWba6TNIVDm+2UDaJmXSOXlasHKfNBs8oo3M0aT50fDEWfKZjXg==";
      };
    };
    "color-3.2.1" = {
      name = "color";
      packageName = "color";
      version = "3.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/color/-/color-3.2.1.tgz";
        sha512 = "aBl7dZI9ENN6fUGC7mWpMTPNHmWUSNan9tuWN6ahh5ZLNk9baLJOnSMlrQkHcrfFgz2/RigjUVAjdx36VcemKA==";
      };
    };
    "color-convert-1.9.3" = {
      name = "color-convert";
      packageName = "color-convert";
      version = "1.9.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/color-convert/-/color-convert-1.9.3.tgz";
        sha512 = "QfAUtd+vFdAtFQcC8CCyYt1fYWxSqAiK2cSD6zDB8N3cpsEBAvRxp9zOGg6G/SHHJYAT88/az/IuDGALsNVbGg==";
      };
    };
    "color-name-1.1.3" = {
      name = "color-name";
      packageName = "color-name";
      version = "1.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/color-name/-/color-name-1.1.3.tgz";
        sha1 = "a7d0558bd89c42f795dd42328f740831ca53bc25";
      };
    };
    "color-string-1.9.0" = {
      name = "color-string";
      packageName = "color-string";
      version = "1.9.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/color-string/-/color-string-1.9.0.tgz";
        sha512 = "9Mrz2AQLefkH1UvASKj6v6hj/7eWgjnT/cVsR8CumieLoT+g900exWeNogqtweI8dxloXN9BDQTYro1oWu/5CQ==";
      };
    };
    "colornames-1.1.1" = {
      name = "colornames";
      packageName = "colornames";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/colornames/-/colornames-1.1.1.tgz";
        sha1 = "f8889030685c7c4ff9e2a559f5077eb76a816f96";
      };
    };
    "colors-1.4.0" = {
      name = "colors";
      packageName = "colors";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/colors/-/colors-1.4.0.tgz";
        sha512 = "a+UqTh4kgZg/SlGvfbzDHpgRu7AAQOmmqRHJnxhRZICKFUT91brVhNNt58CMWU9PsBbv3PDCZUHbVxuDiH2mtA==";
      };
    };
    "colorspace-1.1.4" = {
      name = "colorspace";
      packageName = "colorspace";
      version = "1.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/colorspace/-/colorspace-1.1.4.tgz";
        sha512 = "BgvKJiuVu1igBUF2kEjRCZXol6wiiGbY5ipL/oVPwm0BL9sIpMIzM8IK7vwuxIIzOXMV3Ey5w+vxhm0rR/TN8w==";
      };
    };
    "core-util-is-1.0.3" = {
      name = "core-util-is";
      packageName = "core-util-is";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/core-util-is/-/core-util-is-1.0.3.tgz";
        sha512 = "ZQBvi1DcpJ4GDqanjucZ2Hj3wEO5pZDS89BWbkcrvdxksJorwUDDZamX9ldFkp9aw2lmBDLgkObEA4DWNJ9FYQ==";
      };
    };
    "diagnostics-1.1.1" = {
      name = "diagnostics";
      packageName = "diagnostics";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/diagnostics/-/diagnostics-1.1.1.tgz";
        sha512 = "8wn1PmdunLJ9Tqbx+Fx/ZEuHfJf4NKSN2ZBj7SJC/OWRWha843+WsTjqMe1B5E3p28jqBlp+mJ2fPVxPyNgYKQ==";
      };
    };
    "enabled-1.0.2" = {
      name = "enabled";
      packageName = "enabled";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/enabled/-/enabled-1.0.2.tgz";
        sha1 = "965f6513d2c2d1c5f4652b64a2e3396467fc2f93";
      };
    };
    "env-variable-0.0.6" = {
      name = "env-variable";
      packageName = "env-variable";
      version = "0.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/env-variable/-/env-variable-0.0.6.tgz";
        sha512 = "bHz59NlBbtS0NhftmR8+ExBEekE7br0e01jw+kk0NDro7TtZzBYZ5ScGPs3OmwnpyfHTHOtr1Y6uedCdrIldtg==";
      };
    };
    "fast-safe-stringify-2.1.1" = {
      name = "fast-safe-stringify";
      packageName = "fast-safe-stringify";
      version = "2.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/fast-safe-stringify/-/fast-safe-stringify-2.1.1.tgz";
        sha512 = "W+KJc2dmILlPplD/H4K9l9LcAHAfPtP6BY84uVLXQ6Evcz9Lcg33Y2z1IVblT6xdY54PXYVHEv+0Wpq8Io6zkA==";
      };
    };
    "fecha-2.3.3" = {
      name = "fecha";
      packageName = "fecha";
      version = "2.3.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/fecha/-/fecha-2.3.3.tgz";
        sha512 = "lUGBnIamTAwk4znq5BcqsDaxSmZ9nDVJaij6NvRt/Tg4R69gERA+otPKbS86ROw9nxVMw2/mp1fnaiWqbs6Sdg==";
      };
    };
    "inherits-2.0.4" = {
      name = "inherits";
      packageName = "inherits";
      version = "2.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/inherits/-/inherits-2.0.4.tgz";
        sha512 = "k/vGaX4/Yla3WzyMCvTQOXYeIHvqOKtnqBduzTHpzpQZzAskKMhZ2K+EnBiSM9zGSoIFeMpXKxa4dYeZIQqewQ==";
      };
    };
    "is-arrayish-0.3.2" = {
      name = "is-arrayish";
      packageName = "is-arrayish";
      version = "0.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-arrayish/-/is-arrayish-0.3.2.tgz";
        sha512 = "eVRqCvVlZbuw3GrM63ovNSNAeA1K16kaR/LRY/92w0zxQ5/1YzwblUX652i4Xs9RwAGjW9d9y6X88t8OaAJfWQ==";
      };
    };
    "is-stream-1.1.0" = {
      name = "is-stream";
      packageName = "is-stream";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-stream/-/is-stream-1.1.0.tgz";
        sha1 = "12d4a3dd4e68e0b79ceb8dbc84173ae80d91ca44";
      };
    };
    "isarray-1.0.0" = {
      name = "isarray";
      packageName = "isarray";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/isarray/-/isarray-1.0.0.tgz";
        sha1 = "bb935d48582cba168c06834957a54a3e07124f11";
      };
    };
    "kuler-1.0.1" = {
      name = "kuler";
      packageName = "kuler";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/kuler/-/kuler-1.0.1.tgz";
        sha512 = "J9nVUucG1p/skKul6DU3PUZrhs0LPulNaeUOox0IyXDi8S4CztTHs1gQphhuZmzXG7VOQSf6NJfKuzteQLv9gQ==";
      };
    };
    "lodash-4.17.21" = {
      name = "lodash";
      packageName = "lodash";
      version = "4.17.21";
      src = fetchurl {
        url = "https://registry.npmjs.org/lodash/-/lodash-4.17.21.tgz";
        sha512 = "v2kDEe57lecTulaDIuNTPy3Ry4gLGJ6Z1O3vE1krgXZNrsQ+LFTGHVxVjcXPs17LhbZVGedAJv8XZ1tvj5FvSg==";
      };
    };
    "lodash.defaults-4.2.0" = {
      name = "lodash.defaults";
      packageName = "lodash.defaults";
      version = "4.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/lodash.defaults/-/lodash.defaults-4.2.0.tgz";
        sha1 = "d09178716ffea4dde9e5fb7b37f6f0802274580c";
      };
    };
    "lodash.omit-4.5.0" = {
      name = "lodash.omit";
      packageName = "lodash.omit";
      version = "4.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/lodash.omit/-/lodash.omit-4.5.0.tgz";
        sha1 = "6eb19ae5a1ee1dd9df0b969e66ce0b7fa30b5e60";
      };
    };
    "logform-1.10.0" = {
      name = "logform";
      packageName = "logform";
      version = "1.10.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/logform/-/logform-1.10.0.tgz";
        sha512 = "em5ojIhU18fIMOw/333mD+ZLE2fis0EzXl1ZwHx4iQzmpQi6odNiY/t+ITNr33JZhT9/KEaH+UPIipr6a9EjWg==";
      };
    };
    "lru-cache-6.0.0" = {
      name = "lru-cache";
      packageName = "lru-cache";
      version = "6.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/lru-cache/-/lru-cache-6.0.0.tgz";
        sha512 = "Jo6dJ04CmSjuznwJSS3pUeWmd/H0ffTlkXXgwZi+eq1UCmqQwCh+eLsYOYCwY991i2Fah4h1BEMCx4qThGbsiA==";
      };
    };
    "ms-2.1.3" = {
      name = "ms";
      packageName = "ms";
      version = "2.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/ms/-/ms-2.1.3.tgz";
        sha512 = "6FlzubTLZG3J2a/NVCAleEhjzq5oxgHyaCU9yYXvcLsvoVaHJq/s5xXI6/XXP6tz7R9xAOtHnSO/tXtF3WRTlA==";
      };
    };
    "one-time-0.0.4" = {
      name = "one-time";
      packageName = "one-time";
      version = "0.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/one-time/-/one-time-0.0.4.tgz";
        sha1 = "f8cdf77884826fe4dff93e3a9cc37b1e4480742e";
      };
    };
    "process-nextick-args-2.0.1" = {
      name = "process-nextick-args";
      packageName = "process-nextick-args";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/process-nextick-args/-/process-nextick-args-2.0.1.tgz";
        sha512 = "3ouUOpQhtgrbOa17J7+uxOTpITYWaGP7/AhoR3+A+/1e9skrzelGi/dXzEYyvbxubEF6Wn2ypscTKiKJFFn1ag==";
      };
    };
    "readable-stream-2.3.7" = {
      name = "readable-stream";
      packageName = "readable-stream";
      version = "2.3.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/readable-stream/-/readable-stream-2.3.7.tgz";
        sha512 = "Ebho8K4jIbHAxnuxi7o42OrZgF/ZTNcsZj6nRKyUmkhLFq8CHItp/fy6hQZuZmP/n3yZ9VBUbp4zz/mX8hmYPw==";
      };
    };
    "safe-buffer-5.1.2" = {
      name = "safe-buffer";
      packageName = "safe-buffer";
      version = "5.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.1.2.tgz";
        sha512 = "Gd2UZBJDkXlY7GbJxfsE8/nvKkUEU1G38c1siN6QP6a9PT9MmHB8GnpscSmMJSoF8LOIrt8ud/wPtojys4G6+g==";
      };
    };
    "semver-7.3.5" = {
      name = "semver";
      packageName = "semver";
      version = "7.3.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/semver/-/semver-7.3.5.tgz";
        sha512 = "PoeGJYh8HK4BTO/a9Tf6ZG3veo/A7ZVsYrSA6J8ny9nb3B1VrpkuN+z9OE5wfE5p6H4LchYZsegiQgbJD94ZFQ==";
      };
    };
    "simple-swizzle-0.2.2" = {
      name = "simple-swizzle";
      packageName = "simple-swizzle";
      version = "0.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/simple-swizzle/-/simple-swizzle-0.2.2.tgz";
        sha1 = "a4da6b635ffcccca33f70d17cb92592de95e557a";
      };
    };
    "stack-trace-0.0.10" = {
      name = "stack-trace";
      packageName = "stack-trace";
      version = "0.0.10";
      src = fetchurl {
        url = "https://registry.npmjs.org/stack-trace/-/stack-trace-0.0.10.tgz";
        sha1 = "547c70b347e8d32b4e108ea1a2a159e5fdde19c0";
      };
    };
    "string_decoder-1.1.1" = {
      name = "string_decoder";
      packageName = "string_decoder";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/string_decoder/-/string_decoder-1.1.1.tgz";
        sha512 = "n/ShnvDi6FHbbVfviro+WojiFzv+s8MPMHBczVePfUpDJLwoLT0ht1l4YwBCbi8pJAveEEdnkHyPyTP/mzRfwg==";
      };
    };
    "text-hex-1.0.0" = {
      name = "text-hex";
      packageName = "text-hex";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/text-hex/-/text-hex-1.0.0.tgz";
        sha512 = "uuVGNWzgJ4yhRaNSiubPY7OjISw4sw4E5Uv0wbjp+OzcbmVU/rsT8ujgcXJhn9ypzsgr5vlzpPqP+MBBKcGvbg==";
      };
    };
    "triple-beam-1.3.0" = {
      name = "triple-beam";
      packageName = "triple-beam";
      version = "1.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/triple-beam/-/triple-beam-1.3.0.tgz";
        sha512 = "XrHUvV5HpdLmIj4uVMxHggLbFSZYIn7HEWsqePZcI50pco+MPqJ50wMGY794X7AOOhxOBAjbkqfAbEe/QMp2Lw==";
      };
    };
    "util-deprecate-1.0.2" = {
      name = "util-deprecate";
      packageName = "util-deprecate";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.2.tgz";
        sha1 = "450d4dc9fa70de732762fbd2d4a28981419a0ccf";
      };
    };
    "winston-3.1.0" = {
      name = "winston";
      packageName = "winston";
      version = "3.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/winston/-/winston-3.1.0.tgz";
        sha512 = "FsQfEE+8YIEeuZEYhHDk5cILo1HOcWkGwvoidLrDgPog0r4bser1lEIOco2dN9zpDJ1M88hfDgZvxe5z4xNcwg==";
      };
    };
    "winston-transport-4.4.0" = {
      name = "winston-transport";
      packageName = "winston-transport";
      version = "4.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/winston-transport/-/winston-transport-4.4.0.tgz";
        sha512 = "Lc7/p3GtqtqPBYYtS6KCN3c77/2QCev51DvcJKbkFPQNoj1sinkGwLGFDxkXY9J6p9+EPnYs+D90uwbnaiURTw==";
      };
    };
    "yallist-4.0.0" = {
      name = "yallist";
      packageName = "yallist";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/yallist/-/yallist-4.0.0.tgz";
        sha512 = "3wdGidZyq5PB084XLES5TpOSRA3wjXAlIWMhum2kRcv/41Sn2emQ0dycQW4uZXLejwKvg6EsvbdlVL+FYEct7A==";
      };
    };
  };
in
{
  neovim = nodeEnv.buildNodePackage {
    name = "neovim";
    packageName = "neovim";
    version = "4.10.0";
    src = fetchurl {
      url = "https://registry.npmjs.org/neovim/-/neovim-4.10.0.tgz";
      sha512 = "MMtsyjCPYXy45I8TZTz0iYJUIJhaDSO0zfHOJeidGuLUCeY6WLQiwZteJ9tmCveNWMjT1r2QO9nq135mUDgbtw==";
    };
    dependencies = [
      sources."@msgpack/msgpack-1.12.2"
      sources."async-2.6.3"
      sources."color-3.2.1"
      sources."color-convert-1.9.3"
      sources."color-name-1.1.3"
      sources."color-string-1.9.0"
      sources."colornames-1.1.1"
      sources."colors-1.4.0"
      sources."colorspace-1.1.4"
      sources."core-util-is-1.0.3"
      sources."diagnostics-1.1.1"
      sources."enabled-1.0.2"
      sources."env-variable-0.0.6"
      sources."fast-safe-stringify-2.1.1"
      sources."fecha-2.3.3"
      sources."inherits-2.0.4"
      sources."is-arrayish-0.3.2"
      sources."is-stream-1.1.0"
      sources."isarray-1.0.0"
      sources."kuler-1.0.1"
      sources."lodash-4.17.21"
      sources."lodash.defaults-4.2.0"
      sources."lodash.omit-4.5.0"
      sources."logform-1.10.0"
      sources."lru-cache-6.0.0"
      sources."ms-2.1.3"
      sources."one-time-0.0.4"
      sources."process-nextick-args-2.0.1"
      sources."readable-stream-2.3.7"
      sources."safe-buffer-5.1.2"
      sources."semver-7.3.5"
      sources."simple-swizzle-0.2.2"
      sources."stack-trace-0.0.10"
      sources."string_decoder-1.1.1"
      sources."text-hex-1.0.0"
      sources."triple-beam-1.3.0"
      sources."util-deprecate-1.0.2"
      sources."winston-3.1.0"
      sources."winston-transport-4.4.0"
      sources."yallist-4.0.0"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "Neovim client API and neovim remote plugin provider";
      homepage = "https://github.com/neovim/node-client";
      license = "MIT";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
}
