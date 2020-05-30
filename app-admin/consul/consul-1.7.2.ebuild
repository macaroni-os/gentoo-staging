# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit go-module systemd
GIT_COMMIT=9ea1a204d

DESCRIPTION="A tool for service discovery, monitoring and configuration"
HOMEPAGE="https://www.consul.io"

# Upstream doesn't use "-mod=vendor" in their build system, and the
# vendor directory is incomplete.
# On the next bump, remove this if they have added "-mod=vendor"
EGO_SUM=(
	"cloud.google.com/go v0.26.0"
	"cloud.google.com/go v0.26.0/go.mod"
	"github.com/Azure/azure-sdk-for-go v16.0.0+incompatible"
	"github.com/Azure/azure-sdk-for-go v16.0.0+incompatible/go.mod"
	"github.com/Azure/go-autorest v10.7.0+incompatible/go.mod"
	"github.com/Azure/go-autorest v10.15.3+incompatible"
	"github.com/Azure/go-autorest v10.15.3+incompatible/go.mod"
	"github.com/BurntSushi/toml v0.3.1/go.mod"
	"github.com/DataDog/datadog-go v2.2.0+incompatible"
	"github.com/DataDog/datadog-go v2.2.0+incompatible/go.mod"
	"github.com/Microsoft/go-winio v0.4.3"
	"github.com/Microsoft/go-winio v0.4.3/go.mod"
	"github.com/NYTimes/gziphandler v1.0.1"
	"github.com/NYTimes/gziphandler v1.0.1/go.mod"
	"github.com/StackExchange/wmi v0.0.0-20180116203802-5d049714c4a6"
	"github.com/StackExchange/wmi v0.0.0-20180116203802-5d049714c4a6/go.mod"
	"github.com/abdullin/seq v0.0.0-20160510034733-d5467c17e7af"
	"github.com/abdullin/seq v0.0.0-20160510034733-d5467c17e7af/go.mod"
	"github.com/armon/circbuf v0.0.0-20150827004946-bbbad097214e"
	"github.com/armon/circbuf v0.0.0-20150827004946-bbbad097214e/go.mod"
	"github.com/armon/go-metrics v0.0.0-20180917152333-f0300d1749da"
	"github.com/armon/go-metrics v0.0.0-20180917152333-f0300d1749da/go.mod"
	"github.com/armon/go-metrics v0.0.0-20190430140413-ec5e00d3c878"
	"github.com/armon/go-metrics v0.0.0-20190430140413-ec5e00d3c878/go.mod"
	"github.com/armon/go-radix v0.0.0-20180808171621-7fddfc383310"
	"github.com/armon/go-radix v0.0.0-20180808171621-7fddfc383310/go.mod"
	"github.com/armon/go-radix v1.0.0"
	"github.com/armon/go-radix v1.0.0/go.mod"
	"github.com/aws/aws-sdk-go v1.25.41"
	"github.com/aws/aws-sdk-go v1.25.41/go.mod"
	"github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973"
	"github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973/go.mod"
	"github.com/bgentry/speakeasy v0.1.0"
	"github.com/bgentry/speakeasy v0.1.0/go.mod"
	"github.com/boltdb/bolt v1.3.1"
	"github.com/boltdb/bolt v1.3.1/go.mod"
	"github.com/circonus-labs/circonus-gometrics v2.3.1+incompatible"
	"github.com/circonus-labs/circonus-gometrics v2.3.1+incompatible/go.mod"
	"github.com/circonus-labs/circonusllhist v0.1.3"
	"github.com/circonus-labs/circonusllhist v0.1.3/go.mod"
	"github.com/client9/misspell v0.3.4/go.mod"
	"github.com/coredns/coredns v1.1.2"
	"github.com/coredns/coredns v1.1.2/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/denverdino/aliyungo v0.0.0-20170926055100-d3308649c661"
	"github.com/denverdino/aliyungo v0.0.0-20170926055100-d3308649c661/go.mod"
	"github.com/dgrijalva/jwt-go v3.2.0+incompatible"
	"github.com/dgrijalva/jwt-go v3.2.0+incompatible/go.mod"
	"github.com/digitalocean/godo v1.1.1"
	"github.com/digitalocean/godo v1.1.1/go.mod"
	"github.com/digitalocean/godo v1.10.0"
	"github.com/digitalocean/godo v1.10.0/go.mod"
	"github.com/dimchansky/utfbom v1.1.0"
	"github.com/dimchansky/utfbom v1.1.0/go.mod"
	"github.com/dnaeon/go-vcr v1.0.1"
	"github.com/dnaeon/go-vcr v1.0.1/go.mod"
	"github.com/docker/go-connections v0.3.0"
	"github.com/docker/go-connections v0.3.0/go.mod"
	"github.com/elazarl/go-bindata-assetfs v0.0.0-20160803192304-e1a2a7ec64b0"
	"github.com/elazarl/go-bindata-assetfs v0.0.0-20160803192304-e1a2a7ec64b0/go.mod"
	"github.com/envoyproxy/go-control-plane v0.8.0"
	"github.com/envoyproxy/go-control-plane v0.8.0/go.mod"
	"github.com/envoyproxy/protoc-gen-validate v0.0.14"
	"github.com/envoyproxy/protoc-gen-validate v0.0.14/go.mod"
	"github.com/fatih/color v1.7.0"
	"github.com/fatih/color v1.7.0/go.mod"
	"github.com/fatih/color v1.9.0"
	"github.com/fatih/color v1.9.0/go.mod"
	"github.com/fatih/structs v1.1.0/go.mod"
	"github.com/fsnotify/fsnotify v1.4.7"
	"github.com/fsnotify/fsnotify v1.4.7/go.mod"
	"github.com/ghodss/yaml v1.0.0"
	"github.com/ghodss/yaml v1.0.0/go.mod"
	"github.com/go-check/check v0.0.0-20140225173054-eb6ee6f84d0a/go.mod"
	"github.com/go-ldap/ldap v3.0.2+incompatible"
	"github.com/go-ldap/ldap v3.0.2+incompatible/go.mod"
	"github.com/go-ole/go-ole v1.2.1"
	"github.com/go-ole/go-ole v1.2.1/go.mod"
	"github.com/go-test/deep v1.0.2-0.20181118220953-042da051cf31/go.mod"
	"github.com/go-test/deep v1.0.2"
	"github.com/go-test/deep v1.0.2/go.mod"
	"github.com/gogo/googleapis v1.1.0"
	"github.com/gogo/googleapis v1.1.0/go.mod"
	"github.com/gogo/protobuf v1.1.1"
	"github.com/gogo/protobuf v1.1.1/go.mod"
	"github.com/gogo/protobuf v1.2.1"
	"github.com/gogo/protobuf v1.2.1/go.mod"
	"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b"
	"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b/go.mod"
	"github.com/golang/mock v1.1.1"
	"github.com/golang/mock v1.1.1/go.mod"
	"github.com/golang/protobuf v1.2.0"
	"github.com/golang/protobuf v1.2.0/go.mod"
	"github.com/golang/protobuf v1.3.1"
	"github.com/golang/protobuf v1.3.1/go.mod"
	"github.com/golang/snappy v0.0.1"
	"github.com/golang/snappy v0.0.1/go.mod"
	"github.com/google/btree v0.0.0-20180813153112-4030bb1f1f0c"
	"github.com/google/btree v0.0.0-20180813153112-4030bb1f1f0c/go.mod"
	"github.com/google/go-cmp v0.2.0"
	"github.com/google/go-cmp v0.2.0/go.mod"
	"github.com/google/go-querystring v0.0.0-20170111101155-53e6ce116135"
	"github.com/google/go-querystring v0.0.0-20170111101155-53e6ce116135/go.mod"
	"github.com/google/gofuzz v0.0.0-20170612174753-24818f796faf"
	"github.com/google/gofuzz v0.0.0-20170612174753-24818f796faf/go.mod"
	"github.com/googleapis/gnostic v0.2.0"
	"github.com/googleapis/gnostic v0.2.0/go.mod"
	"github.com/gophercloud/gophercloud v0.0.0-20180828235145-f29afc2cceca"
	"github.com/gophercloud/gophercloud v0.0.0-20180828235145-f29afc2cceca/go.mod"
	"github.com/gopherjs/gopherjs v0.0.0-20180825215210-0210a2f0f73c"
	"github.com/gopherjs/gopherjs v0.0.0-20180825215210-0210a2f0f73c/go.mod"
	"github.com/gregjones/httpcache v0.0.0-20180305231024-9cad4c3443a7"
	"github.com/gregjones/httpcache v0.0.0-20180305231024-9cad4c3443a7/go.mod"
	"github.com/hashicorp/errwrap v1.0.0"
	"github.com/hashicorp/errwrap v1.0.0/go.mod"
	"github.com/hashicorp/go-bexpr v0.1.2"
	"github.com/hashicorp/go-bexpr v0.1.2/go.mod"
	"github.com/hashicorp/go-checkpoint v0.0.0-20171009173528-1545e56e46de"
	"github.com/hashicorp/go-checkpoint v0.0.0-20171009173528-1545e56e46de/go.mod"
	"github.com/hashicorp/go-cleanhttp v0.5.0/go.mod"
	"github.com/hashicorp/go-cleanhttp v0.5.1"
	"github.com/hashicorp/go-cleanhttp v0.5.1/go.mod"
	"github.com/hashicorp/go-connlimit v0.2.0"
	"github.com/hashicorp/go-connlimit v0.2.0/go.mod"
	"github.com/hashicorp/go-discover v0.0.0-20191202160150-7ec2cfbda7a2"
	"github.com/hashicorp/go-discover v0.0.0-20191202160150-7ec2cfbda7a2/go.mod"
	"github.com/hashicorp/go-hclog v0.0.0-20180709165350-ff2cf002a8dd/go.mod"
	"github.com/hashicorp/go-hclog v0.8.0/go.mod"
	"github.com/hashicorp/go-hclog v0.9.1"
	"github.com/hashicorp/go-hclog v0.9.1/go.mod"
	"github.com/hashicorp/go-hclog v0.12.0"
	"github.com/hashicorp/go-hclog v0.12.0/go.mod"
	"github.com/hashicorp/go-immutable-radix v1.0.0"
	"github.com/hashicorp/go-immutable-radix v1.0.0/go.mod"
	"github.com/hashicorp/go-immutable-radix v1.1.0"
	"github.com/hashicorp/go-immutable-radix v1.1.0/go.mod"
	"github.com/hashicorp/go-memdb v1.0.3"
	"github.com/hashicorp/go-memdb v1.0.3/go.mod"
	"github.com/hashicorp/go-msgpack v0.5.3/go.mod"
	"github.com/hashicorp/go-msgpack v0.5.5"
	"github.com/hashicorp/go-msgpack v0.5.5/go.mod"
	"github.com/hashicorp/go-multierror v1.0.0"
	"github.com/hashicorp/go-multierror v1.0.0/go.mod"
	"github.com/hashicorp/go-plugin v1.0.1"
	"github.com/hashicorp/go-plugin v1.0.1/go.mod"
	"github.com/hashicorp/go-raftchunking v0.6.1"
	"github.com/hashicorp/go-raftchunking v0.6.1/go.mod"
	"github.com/hashicorp/go-retryablehttp v0.5.3"
	"github.com/hashicorp/go-retryablehttp v0.5.3/go.mod"
	"github.com/hashicorp/go-retryablehttp v0.5.4"
	"github.com/hashicorp/go-retryablehttp v0.5.4/go.mod"
	"github.com/hashicorp/go-rootcerts v1.0.1"
	"github.com/hashicorp/go-rootcerts v1.0.1/go.mod"
	"github.com/hashicorp/go-rootcerts v1.0.2"
	"github.com/hashicorp/go-rootcerts v1.0.2/go.mod"
	"github.com/hashicorp/go-sockaddr v1.0.0"
	"github.com/hashicorp/go-sockaddr v1.0.0/go.mod"
	"github.com/hashicorp/go-sockaddr v1.0.2"
	"github.com/hashicorp/go-sockaddr v1.0.2/go.mod"
	"github.com/hashicorp/go-syslog v1.0.0"
	"github.com/hashicorp/go-syslog v1.0.0/go.mod"
	"github.com/hashicorp/go-uuid v1.0.0"
	"github.com/hashicorp/go-uuid v1.0.0/go.mod"
	"github.com/hashicorp/go-uuid v1.0.1"
	"github.com/hashicorp/go-uuid v1.0.1/go.mod"
	"github.com/hashicorp/go-version v1.1.0"
	"github.com/hashicorp/go-version v1.1.0/go.mod"
	"github.com/hashicorp/go.net v0.0.1"
	"github.com/hashicorp/go.net v0.0.1/go.mod"
	"github.com/hashicorp/golang-lru v0.5.0"
	"github.com/hashicorp/golang-lru v0.5.0/go.mod"
	"github.com/hashicorp/golang-lru v0.5.1"
	"github.com/hashicorp/golang-lru v0.5.1/go.mod"
	"github.com/hashicorp/hcl v1.0.0"
	"github.com/hashicorp/hcl v1.0.0/go.mod"
	"github.com/hashicorp/hil v0.0.0-20160711231837-1e86c6b523c5"
	"github.com/hashicorp/hil v0.0.0-20160711231837-1e86c6b523c5/go.mod"
	"github.com/hashicorp/logutils v1.0.0"
	"github.com/hashicorp/logutils v1.0.0/go.mod"
	"github.com/hashicorp/mdns v1.0.0"
	"github.com/hashicorp/mdns v1.0.0/go.mod"
	"github.com/hashicorp/mdns v1.0.1"
	"github.com/hashicorp/mdns v1.0.1/go.mod"
	"github.com/hashicorp/memberlist v0.1.3"
	"github.com/hashicorp/memberlist v0.1.3/go.mod"
	"github.com/hashicorp/memberlist v0.1.6"
	"github.com/hashicorp/memberlist v0.1.6/go.mod"
	"github.com/hashicorp/net-rpc-msgpackrpc v0.0.0-20151116020338-a14192a58a69"
	"github.com/hashicorp/net-rpc-msgpackrpc v0.0.0-20151116020338-a14192a58a69/go.mod"
	"github.com/hashicorp/raft v1.1.1"
	"github.com/hashicorp/raft v1.1.1/go.mod"
	"github.com/hashicorp/raft v1.1.2"
	"github.com/hashicorp/raft v1.1.2/go.mod"
	"github.com/hashicorp/raft-boltdb v0.0.0-20171010151810-6e5ba93211ea"
	"github.com/hashicorp/raft-boltdb v0.0.0-20171010151810-6e5ba93211ea/go.mod"
	"github.com/hashicorp/serf v0.8.2"
	"github.com/hashicorp/serf v0.8.2/go.mod"
	"github.com/hashicorp/serf v0.8.5"
	"github.com/hashicorp/serf v0.8.5/go.mod"
	"github.com/hashicorp/vault/api v1.0.4"
	"github.com/hashicorp/vault/api v1.0.4/go.mod"
	"github.com/hashicorp/vault/sdk v0.1.13"
	"github.com/hashicorp/vault/sdk v0.1.13/go.mod"
	"github.com/hashicorp/vic v1.5.1-0.20190403131502-bbfe86ec9443"
	"github.com/hashicorp/vic v1.5.1-0.20190403131502-bbfe86ec9443/go.mod"
	"github.com/hashicorp/yamux v0.0.0-20180604194846-3520598351bb/go.mod"
	"github.com/hashicorp/yamux v0.0.0-20181012175058-2f1d1f20f75d"
	"github.com/hashicorp/yamux v0.0.0-20181012175058-2f1d1f20f75d/go.mod"
	"github.com/hpcloud/tail v1.0.0"
	"github.com/hpcloud/tail v1.0.0/go.mod"
	"github.com/imdario/mergo v0.3.6"
	"github.com/imdario/mergo v0.3.6/go.mod"
	"github.com/istio/gogo-genproto v0.0.0-20190124151557-6d926a6e6feb/go.mod"
	"github.com/jarcoal/httpmock v0.0.0-20180424175123-9c70cfe4a1da"
	"github.com/jarcoal/httpmock v0.0.0-20180424175123-9c70cfe4a1da/go.mod"
	"github.com/jmespath/go-jmespath v0.0.0-20180206201540-c2b33e8439af"
	"github.com/jmespath/go-jmespath v0.0.0-20180206201540-c2b33e8439af/go.mod"
	"github.com/joyent/triton-go v0.0.0-20180628001255-830d2b111e62"
	"github.com/joyent/triton-go v0.0.0-20180628001255-830d2b111e62/go.mod"
	"github.com/json-iterator/go v1.1.5"
	"github.com/json-iterator/go v1.1.5/go.mod"
	"github.com/jtolds/gls v4.2.1+incompatible"
	"github.com/jtolds/gls v4.2.1+incompatible/go.mod"
	"github.com/kisielk/errcheck v1.1.0/go.mod"
	"github.com/kisielk/gotool v1.0.0"
	"github.com/kisielk/gotool v1.0.0/go.mod"
	"github.com/kr/pretty v0.1.0"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pretty v0.2.0"
	"github.com/kr/pretty v0.2.0/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/likexian/gokit v0.0.0-20190309162924-0a377eecf7aa/go.mod"
	"github.com/likexian/gokit v0.0.0-20190418170008-ace88ad0983b/go.mod"
	"github.com/likexian/gokit v0.0.0-20190501133040-e77ea8b19cdc/go.mod"
	"github.com/likexian/gokit v0.20.16/go.mod"
	"github.com/likexian/simplejson-go v0.0.0-20190409170913-40473a74d76d/go.mod"
	"github.com/likexian/simplejson-go v0.0.0-20190419151922-c1f9f0b4f084/go.mod"
	"github.com/likexian/simplejson-go v0.0.0-20190502021454-d8787b4bfa0b/go.mod"
	"github.com/linode/linodego v0.7.1"
	"github.com/linode/linodego v0.7.1/go.mod"
	"github.com/mattn/go-colorable v0.0.9"
	"github.com/mattn/go-colorable v0.0.9/go.mod"
	"github.com/mattn/go-colorable v0.1.4"
	"github.com/mattn/go-colorable v0.1.4/go.mod"
	"github.com/mattn/go-isatty v0.0.3"
	"github.com/mattn/go-isatty v0.0.3/go.mod"
	"github.com/mattn/go-isatty v0.0.8/go.mod"
	"github.com/mattn/go-isatty v0.0.10/go.mod"
	"github.com/mattn/go-isatty v0.0.11/go.mod"
	"github.com/mattn/go-isatty v0.0.12"
	"github.com/mattn/go-isatty v0.0.12/go.mod"
	"github.com/matttproud/golang_protobuf_extensions v1.0.1"
	"github.com/matttproud/golang_protobuf_extensions v1.0.1/go.mod"
	"github.com/miekg/dns v1.0.14"
	"github.com/miekg/dns v1.0.14/go.mod"
	"github.com/miekg/dns v1.1.26"
	"github.com/miekg/dns v1.1.26/go.mod"
	"github.com/mitchellh/cli v1.0.0"
	"github.com/mitchellh/cli v1.0.0/go.mod"
	"github.com/mitchellh/copystructure v1.0.0"
	"github.com/mitchellh/copystructure v1.0.0/go.mod"
	"github.com/mitchellh/go-homedir v1.0.0"
	"github.com/mitchellh/go-homedir v1.0.0/go.mod"
	"github.com/mitchellh/go-homedir v1.1.0"
	"github.com/mitchellh/go-homedir v1.1.0/go.mod"
	"github.com/mitchellh/go-testing-interface v0.0.0-20171004221916-a61a99592b77/go.mod"
	"github.com/mitchellh/go-testing-interface v1.0.0"
	"github.com/mitchellh/go-testing-interface v1.0.0/go.mod"
	"github.com/mitchellh/go-wordwrap v1.0.0/go.mod"
	"github.com/mitchellh/gox v0.4.0/go.mod"
	"github.com/mitchellh/hashstructure v0.0.0-20170609045927-2bca23e0e452"
	"github.com/mitchellh/hashstructure v0.0.0-20170609045927-2bca23e0e452/go.mod"
	"github.com/mitchellh/iochan v1.0.0/go.mod"
	"github.com/mitchellh/mapstructure v0.0.0-20160808181253-ca63d7c062ee/go.mod"
	"github.com/mitchellh/mapstructure v1.1.2"
	"github.com/mitchellh/mapstructure v1.1.2/go.mod"
	"github.com/mitchellh/reflectwalk v1.0.0/go.mod"
	"github.com/mitchellh/reflectwalk v1.0.1"
	"github.com/mitchellh/reflectwalk v1.0.1/go.mod"
	"github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd"
	"github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd/go.mod"
	"github.com/modern-go/reflect2 v1.0.1"
	"github.com/modern-go/reflect2 v1.0.1/go.mod"
	"github.com/nicolai86/scaleway-sdk v1.10.2-0.20180628010248-798f60e20bb2"
	"github.com/nicolai86/scaleway-sdk v1.10.2-0.20180628010248-798f60e20bb2/go.mod"
	"github.com/oklog/run v1.0.0"
	"github.com/oklog/run v1.0.0/go.mod"
	"github.com/onsi/ginkgo v1.6.0"
	"github.com/onsi/ginkgo v1.6.0/go.mod"
	"github.com/onsi/gomega v1.4.1"
	"github.com/onsi/gomega v1.4.1/go.mod"
	"github.com/onsi/gomega v1.4.2"
	"github.com/onsi/gomega v1.4.2/go.mod"
	"github.com/packethost/packngo v0.1.1-0.20180711074735-b9cb5096f54c"
	"github.com/packethost/packngo v0.1.1-0.20180711074735-b9cb5096f54c/go.mod"
	"github.com/pascaldekloe/goe v0.0.0-20180627143212-57f6aae5913c"
	"github.com/pascaldekloe/goe v0.0.0-20180627143212-57f6aae5913c/go.mod"
	"github.com/pascaldekloe/goe v0.1.0"
	"github.com/pascaldekloe/goe v0.1.0/go.mod"
	"github.com/peterbourgon/diskv v2.0.1+incompatible"
	"github.com/peterbourgon/diskv v2.0.1+incompatible/go.mod"
	"github.com/pierrec/lz4 v2.0.5+incompatible"
	"github.com/pierrec/lz4 v2.0.5+incompatible/go.mod"
	"github.com/pkg/errors v0.8.0"
	"github.com/pkg/errors v0.8.0/go.mod"
	"github.com/pkg/errors v0.8.1"
	"github.com/pkg/errors v0.8.1/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/posener/complete v1.1.1"
	"github.com/posener/complete v1.1.1/go.mod"
	"github.com/prometheus/client_golang v0.9.2"
	"github.com/prometheus/client_golang v0.9.2/go.mod"
	"github.com/prometheus/client_model v0.0.0-20180712105110-5c3871d89910"
	"github.com/prometheus/client_model v0.0.0-20180712105110-5c3871d89910/go.mod"
	"github.com/prometheus/common v0.0.0-20181126121408-4724e9255275"
	"github.com/prometheus/common v0.0.0-20181126121408-4724e9255275/go.mod"
	"github.com/prometheus/procfs v0.0.0-20181204211112-1dc9a6cbc91a"
	"github.com/prometheus/procfs v0.0.0-20181204211112-1dc9a6cbc91a/go.mod"
	"github.com/renier/xmlrpc v0.0.0-20170708154548-ce4a1a486c03"
	"github.com/renier/xmlrpc v0.0.0-20170708154548-ce4a1a486c03/go.mod"
	"github.com/ryanuber/columnize v0.0.0-20160712163229-9b3edd62028f"
	"github.com/ryanuber/columnize v0.0.0-20160712163229-9b3edd62028f/go.mod"
	"github.com/ryanuber/columnize v2.1.0+incompatible"
	"github.com/ryanuber/columnize v2.1.0+incompatible/go.mod"
	"github.com/ryanuber/go-glob v1.0.0"
	"github.com/ryanuber/go-glob v1.0.0/go.mod"
	"github.com/sean-/seed v0.0.0-20170313163322-e2103e2c3529"
	"github.com/sean-/seed v0.0.0-20170313163322-e2103e2c3529/go.mod"
	"github.com/shirou/gopsutil v0.0.0-20181107111621-48177ef5f880"
	"github.com/shirou/gopsutil v0.0.0-20181107111621-48177ef5f880/go.mod"
	"github.com/shirou/w32 v0.0.0-20160930032740-bb4de0191aa4"
	"github.com/shirou/w32 v0.0.0-20160930032740-bb4de0191aa4/go.mod"
	"github.com/sirupsen/logrus v1.0.6"
	"github.com/sirupsen/logrus v1.0.6/go.mod"
	"github.com/smartystreets/assertions v0.0.0-20180820201707-7c9eb446e3cf"
	"github.com/smartystreets/assertions v0.0.0-20180820201707-7c9eb446e3cf/go.mod"
	"github.com/smartystreets/goconvey v0.0.0-20180222194500-ef6db91d284a"
	"github.com/smartystreets/goconvey v0.0.0-20180222194500-ef6db91d284a/go.mod"
	"github.com/softlayer/softlayer-go v0.0.0-20180806151055-260589d94c7d"
	"github.com/softlayer/softlayer-go v0.0.0-20180806151055-260589d94c7d/go.mod"
	"github.com/spf13/pflag v1.0.2/go.mod"
	"github.com/spf13/pflag v1.0.3"
	"github.com/spf13/pflag v1.0.3/go.mod"
	"github.com/stretchr/objx v0.1.0"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/objx v0.1.1"
	"github.com/stretchr/objx v0.1.1/go.mod"
	"github.com/stretchr/testify v1.2.2"
	"github.com/stretchr/testify v1.2.2/go.mod"
	"github.com/stretchr/testify v1.3.0"
	"github.com/stretchr/testify v1.3.0/go.mod"
	"github.com/stretchr/testify v1.4.0"
	"github.com/stretchr/testify v1.4.0/go.mod"
	"github.com/tencentcloud/tencentcloud-sdk-go v3.0.83+incompatible"
	"github.com/tencentcloud/tencentcloud-sdk-go v3.0.83+incompatible/go.mod"
	"github.com/tent/http-link-go v0.0.0-20130702225549-ac974c61c2f9"
	"github.com/tent/http-link-go v0.0.0-20130702225549-ac974c61c2f9/go.mod"
	"github.com/tv42/httpunix v0.0.0-20150427012821-b75d8614f926"
	"github.com/tv42/httpunix v0.0.0-20150427012821-b75d8614f926/go.mod"
	"github.com/vmware/govmomi v0.18.0"
	"github.com/vmware/govmomi v0.18.0/go.mod"
	"golang.org/x/crypto v0.0.0-20181029021203-45a5f77698d3"
	"golang.org/x/crypto v0.0.0-20181029021203-45a5f77698d3/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20190923035154-9ee001bba392"
	"golang.org/x/crypto v0.0.0-20190923035154-9ee001bba392/go.mod"
	"golang.org/x/crypto v0.0.0-20191106202628-ed6320f186d4"
	"golang.org/x/crypto v0.0.0-20191106202628-ed6320f186d4/go.mod"
	"golang.org/x/exp v0.0.0-20190121172915-509febef88a4/go.mod"
	"golang.org/x/lint v0.0.0-20181026193005-c67002cb31c3/go.mod"
	"golang.org/x/lint v0.0.0-20190227174305-5b3e6a55c961/go.mod"
	"golang.org/x/lint v0.0.0-20190313153728-d0100b6bd8b3/go.mod"
	"golang.org/x/net v0.0.0-20180724234803-3673e40ba225/go.mod"
	"golang.org/x/net v0.0.0-20180826012351-8a410e7b638d/go.mod"
	"golang.org/x/net v0.0.0-20180906233101-161cd47e91fd/go.mod"
	"golang.org/x/net v0.0.0-20181023162649-9b4f9f5ad519"
	"golang.org/x/net v0.0.0-20181023162649-9b4f9f5ad519/go.mod"
	"golang.org/x/net v0.0.0-20181201002055-351d144fa1fc"
	"golang.org/x/net v0.0.0-20181201002055-351d144fa1fc/go.mod"
	"golang.org/x/net v0.0.0-20181220203305-927f97764cc3/go.mod"
	"golang.org/x/net v0.0.0-20190213061140-3a22650c66bd/go.mod"
	"golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20190503192946-f4e77d36d62c"
	"golang.org/x/net v0.0.0-20190503192946-f4e77d36d62c/go.mod"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
	"golang.org/x/net v0.0.0-20190923162816-aa69164e4478"
	"golang.org/x/net v0.0.0-20190923162816-aa69164e4478/go.mod"
	"golang.org/x/oauth2 v0.0.0-20170807180024-9a379c6b3e95/go.mod"
	"golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be"
	"golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be/go.mod"
	"golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f/go.mod"
	"golang.org/x/sync v0.0.0-20181108010431-42b317875d0f/go.mod"
	"golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4/go.mod"
	"golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6/go.mod"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
	"golang.org/x/sys v0.0.0-20180823144017-11551d06cbcc/go.mod"
	"golang.org/x/sys v0.0.0-20180830151530-49385e6e1522/go.mod"
	"golang.org/x/sys v0.0.0-20180909124046-d0be0721c37e/go.mod"
	"golang.org/x/sys v0.0.0-20181026203630-95b1ffbd15a5"
	"golang.org/x/sys v0.0.0-20181026203630-95b1ffbd15a5/go.mod"
	"golang.org/x/sys v0.0.0-20190129075346-302c3dd5f1cc/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190222072716-a9d3bda3a223/go.mod"
	"golang.org/x/sys v0.0.0-20190403152447-81d4e9dc473e/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20190508220229-2d0786266e9c"
	"golang.org/x/sys v0.0.0-20190508220229-2d0786266e9c/go.mod"
	"golang.org/x/sys v0.0.0-20190523142557-0e01d883c5c5"
	"golang.org/x/sys v0.0.0-20190523142557-0e01d883c5c5/go.mod"
	"golang.org/x/sys v0.0.0-20190922100055-0a153f010e69/go.mod"
	"golang.org/x/sys v0.0.0-20190924154521-2837fb4f24fe"
	"golang.org/x/sys v0.0.0-20190924154521-2837fb4f24fe/go.mod"
	"golang.org/x/sys v0.0.0-20191008105621-543471e840be/go.mod"
	"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037/go.mod"
	"golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod"
	"golang.org/x/sys v0.0.0-20200124204421-9fbb57f87de9"
	"golang.org/x/sys v0.0.0-20200124204421-9fbb57f87de9/go.mod"
	"golang.org/x/text v0.3.0"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.1-0.20181227161524-e6919f6577db/go.mod"
	"golang.org/x/text v0.3.2"
	"golang.org/x/text v0.3.2/go.mod"
	"golang.org/x/time v0.0.0-20180412165947-fbb02b2291d2"
	"golang.org/x/time v0.0.0-20180412165947-fbb02b2291d2/go.mod"
	"golang.org/x/time v0.0.0-20190308202827-9d24e82272b4"
	"golang.org/x/time v0.0.0-20190308202827-9d24e82272b4/go.mod"
	"golang.org/x/tools v0.0.0-20180221164845-07fd8470d635/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"golang.org/x/tools v0.0.0-20190114222345-bf090417da8b/go.mod"
	"golang.org/x/tools v0.0.0-20190226205152-f727befe758c/go.mod"
	"golang.org/x/tools v0.0.0-20190311212946-11955173bddd/go.mod"
	"golang.org/x/tools v0.0.0-20190524140312-2c0ae7006135/go.mod"
	"golang.org/x/tools v0.0.0-20190907020128-2ca718005c18/go.mod"
	"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod"
	"google.golang.org/api v0.0.0-20180829000535-087779f1d2c9"
	"google.golang.org/api v0.0.0-20180829000535-087779f1d2c9/go.mod"
	"google.golang.org/appengine v1.1.0"
	"google.golang.org/appengine v1.1.0/go.mod"
	"google.golang.org/appengine v1.4.0"
	"google.golang.org/appengine v1.4.0/go.mod"
	"google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8"
	"google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8/go.mod"
	"google.golang.org/genproto v0.0.0-20190404172233-64821d5d2107"
	"google.golang.org/genproto v0.0.0-20190404172233-64821d5d2107/go.mod"
	"google.golang.org/grpc v1.14.0/go.mod"
	"google.golang.org/grpc v1.19.0/go.mod"
	"google.golang.org/grpc v1.19.1"
	"google.golang.org/grpc v1.19.1/go.mod"
	"google.golang.org/grpc v1.22.0/go.mod"
	"google.golang.org/grpc v1.23.0"
	"google.golang.org/grpc v1.23.0/go.mod"
	"gopkg.in/airbrake/gobrake.v2 v2.0.9"
	"gopkg.in/airbrake/gobrake.v2 v2.0.9/go.mod"
	"gopkg.in/asn1-ber.v1 v1.0.0-20181015200546-f715ec2f112d"
	"gopkg.in/asn1-ber.v1 v1.0.0-20181015200546-f715ec2f112d/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15"
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15/go.mod"
	"gopkg.in/fsnotify.v1 v1.4.7"
	"gopkg.in/fsnotify.v1 v1.4.7/go.mod"
	"gopkg.in/gemnasium/logrus-airbrake-hook.v2 v2.1.2"
	"gopkg.in/gemnasium/logrus-airbrake-hook.v2 v2.1.2/go.mod"
	"gopkg.in/inf.v0 v0.9.1"
	"gopkg.in/inf.v0 v0.9.1/go.mod"
	"gopkg.in/resty.v1 v1.12.0"
	"gopkg.in/resty.v1 v1.12.0/go.mod"
	"gopkg.in/square/go-jose.v2 v2.3.1"
	"gopkg.in/square/go-jose.v2 v2.3.1/go.mod"
	"gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7"
	"gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7/go.mod"
	"gopkg.in/yaml.v2 v2.2.1"
	"gopkg.in/yaml.v2 v2.2.1/go.mod"
	"gopkg.in/yaml.v2 v2.2.2"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
	"gopkg.in/yaml.v2 v2.2.8"
	"gopkg.in/yaml.v2 v2.2.8/go.mod"
	"honnef.co/go/tools v0.0.0-20190102054323-c2f93a96b099/go.mod"
	"honnef.co/go/tools v0.0.0-20190523083050-ea95bdfd59fc/go.mod"
	"k8s.io/api v0.0.0-20180806132203-61b11ee65332/go.mod"
	"k8s.io/api v0.0.0-20190325185214-7544f9db76f6"
	"k8s.io/api v0.0.0-20190325185214-7544f9db76f6/go.mod"
	"k8s.io/apimachinery v0.0.0-20180821005732-488889b0007f/go.mod"
	"k8s.io/apimachinery v0.0.0-20190223001710-c182ff3b9841"
	"k8s.io/apimachinery v0.0.0-20190223001710-c182ff3b9841/go.mod"
	"k8s.io/client-go v8.0.0+incompatible"
	"k8s.io/client-go v8.0.0+incompatible/go.mod"
	)
go-module_set_globals
SRC_URI="https://github.com/hashicorp/consul/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="MPL-2.0 Apache-2.0 BSD BSD-2 CC0-1.0 ISC MIT"
SLOT="0"
KEYWORDS="amd64"

BDEPEND="dev-go/gox"
COMMON_DEPEND="
	acct-group/consul
	acct-user/consul"
	DEPEND="${COMMON_DEPEND}"
	RDEPEND="${COMMON_DEPEND}"

src_compile() {
	# The dev target sets causes build.sh to set appropriate XC_OS
	# and XC_ARCH, and skips generation of an unused zip file,
	# avoiding a dependency on app-arch/zip.
	GIT_DESCRIBE="v${PV}" \
	GIT_DIRTY="" \
	GIT_COMMIT="${GIT_COMMIT}" \
	emake dev-build
}

src_install() {
	dobin bin/consul

	keepdir /etc/consul.d
	insinto /etc/consul.d
	doins "${FILESDIR}/"*.json.example

	keepdir /var/log/consul
	fowners consul:consul /var/log/consul

	newinitd "${FILESDIR}/consul.initd" "${PN}"
	newconfd "${FILESDIR}/consul.confd" "${PN}"
	insinto /etc/logrotate.d
	newins "${FILESDIR}/${PN}.logrotated" "${PN}"
	systemd_dounit "${FILESDIR}/consul.service"
}
