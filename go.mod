module github.com/TheThingsNetwork/ttn

replace github.com/brocaar/lorawan => github.com/ThethingsIndustries/legacy-lorawan-lib v0.0.0-20190212122748-b905ab327304

replace github.com/robertkrimen/otto => github.com/ThethingsIndustries/otto v0.0.0-20181129100957-6ddbbb60554a

require (
	github.com/TheThingsNetwork/api v0.0.0-20190212122917-a67ab0c6b31e
	github.com/TheThingsNetwork/go-account-lib v0.0.0-20190212114421-5f3d62d8a152
	github.com/TheThingsNetwork/go-cayenne-lib v1.0.1-0.20190212105337-0f85a62b3a79
	github.com/TheThingsNetwork/go-utils v0.0.0-20190212114733-b66819ba738f
	github.com/TheThingsNetwork/ttn/api v0.0.0-20190212115741-672fb96aebea
	github.com/TheThingsNetwork/ttn/core/types v0.0.0-20190212115741-672fb96aebea
	github.com/TheThingsNetwork/ttn/utils/errors v0.0.0-20190212114225-bc403969e4a8
	github.com/TheThingsNetwork/ttn/utils/random v0.0.0-20190212115741-672fb96aebea
	github.com/TheThingsNetwork/ttn/utils/security v0.0.0-20190212115741-672fb96aebea
	github.com/apex/log v1.1.0
	github.com/bluele/gcache v0.0.0-20190203144525-2016d595ccb0
	github.com/brocaar/lorawan v0.0.0-20190212105515-c959d8761834
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/eclipse/paho.mqtt.golang v1.1.1
	github.com/fatih/structs v1.1.0
	github.com/gogo/protobuf v1.2.0
	github.com/golang/mock v1.1.1
	github.com/golang/protobuf v1.2.0
	github.com/gosuri/uitable v0.0.0-20160404203958-36ee7e946282
	github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0
	github.com/grpc-ecosystem/grpc-gateway v1.7.0
	github.com/howeyc/gopass v0.0.0-20170109162249-bf9dde6d0d2c
	github.com/juju/ratelimit v1.0.1 // indirect
	github.com/kardianos/osext v0.0.0-20170510131534-ae77be60afb1
	github.com/mitchellh/go-homedir v1.0.0
	github.com/mwitkow/go-grpc-middleware v1.0.0
	github.com/pkg/errors v0.8.1
	github.com/prometheus/client_golang v0.9.2
	github.com/rcrowley/go-metrics v0.0.0-20181016184325-3113b8401b8a
	github.com/robertkrimen/otto v0.0.0-20180617131154-15f95af6e78d
	github.com/shirou/gopsutil v2.18.12+incompatible // indirect
	github.com/smartystreets/assertions v0.0.0-20190116191733-b6c0e53d7304
	github.com/smartystreets/go-aws-auth v0.0.0-20180515143844-0c1422d1fdb9 // indirect
	github.com/spf13/cobra v0.0.3
	github.com/spf13/viper v1.2.1
	github.com/streadway/amqp v0.0.0-20181205114330-a314942b2fd9
	github.com/tj/go-elastic v0.0.0-20171221160941-36157cbbebc2
	golang.org/x/net v0.0.0-20190206173232-65e2d4e15006
	golang.org/x/oauth2 v0.0.0-20181017192945-9dcd33a902f4
	google.golang.org/genproto v0.0.0-20181016170114-94acd270e44e
	google.golang.org/grpc v1.18.0
	gopkg.in/redis.v5 v5.2.9
	gopkg.in/sourcemap.v1 v1.0.5 // indirect
	gopkg.in/yaml.v2 v2.2.1
)
