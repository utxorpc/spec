{- This file was auto-generated from utxorpc/v1alpha/cardano/cardano.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Utxorpc.V1alpha.Cardano.Cardano_Fields where
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
addrKeyHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "addrKeyHash" a) =>
  Lens.Family2.LensLike' f s a
addrKeyHash = Data.ProtoLens.Field.field @"addrKeyHash"
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
anyAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "anyAddress" a) =>
  Lens.Family2.LensLike' f s a
anyAddress = Data.ProtoLens.Field.field @"anyAddress"
anyAsset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "anyAsset" a) =>
  Lens.Family2.LensLike' f s a
anyAsset = Data.ProtoLens.Field.field @"anyAsset"
anyConstructor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "anyConstructor" a) =>
  Lens.Family2.LensLike' f s a
anyConstructor = Data.ProtoLens.Field.field @"anyConstructor"
anyDatum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "anyDatum" a) =>
  Lens.Family2.LensLike' f s a
anyDatum = Data.ProtoLens.Field.field @"anyDatum"
anyOutput ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "anyOutput" a) =>
  Lens.Family2.LensLike' f s a
anyOutput = Data.ProtoLens.Field.field @"anyOutput"
array ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "array" a) =>
  Lens.Family2.LensLike' f s a
array = Data.ProtoLens.Field.field @"array"
asOutput ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "asOutput" a) =>
  Lens.Family2.LensLike' f s a
asOutput = Data.ProtoLens.Field.field @"asOutput"
assets ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "assets" a) =>
  Lens.Family2.LensLike' f s a
assets = Data.ProtoLens.Field.field @"assets"
auxiliary ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "auxiliary" a) =>
  Lens.Family2.LensLike' f s a
auxiliary = Data.ProtoLens.Field.field @"auxiliary"
bigInt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "bigInt" a) =>
  Lens.Family2.LensLike' f s a
bigInt = Data.ProtoLens.Field.field @"bigInt"
bigNInt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "bigNInt" a) =>
  Lens.Family2.LensLike' f s a
bigNInt = Data.ProtoLens.Field.field @"bigNInt"
bigUInt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "bigUInt" a) =>
  Lens.Family2.LensLike' f s a
bigUInt = Data.ProtoLens.Field.field @"bigUInt"
body ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "body" a) =>
  Lens.Family2.LensLike' f s a
body = Data.ProtoLens.Field.field @"body"
boundedBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "boundedBytes" a) =>
  Lens.Family2.LensLike' f s a
boundedBytes = Data.ProtoLens.Field.field @"boundedBytes"
byronAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "byronAddress" a) =>
  Lens.Family2.LensLike' f s a
byronAddress = Data.ProtoLens.Field.field @"byronAddress"
bytes ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "bytes" a) =>
  Lens.Family2.LensLike' f s a
bytes = Data.ProtoLens.Field.field @"bytes"
certificates ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "certificates" a) =>
  Lens.Family2.LensLike' f s a
certificates = Data.ProtoLens.Field.field @"certificates"
coin ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "coin" a) =>
  Lens.Family2.LensLike' f s a
coin = Data.ProtoLens.Field.field @"coin"
collateral ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "collateral" a) =>
  Lens.Family2.LensLike' f s a
collateral = Data.ProtoLens.Field.field @"collateral"
collateralReturn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "collateralReturn" a) =>
  Lens.Family2.LensLike' f s a
collateralReturn = Data.ProtoLens.Field.field @"collateralReturn"
constr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "constr" a) =>
  Lens.Family2.LensLike' f s a
constr = Data.ProtoLens.Field.field @"constr"
cost ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cost" a) =>
  Lens.Family2.LensLike' f s a
cost = Data.ProtoLens.Field.field @"cost"
datum ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "datum" a) =>
  Lens.Family2.LensLike' f s a
datum = Data.ProtoLens.Field.field @"datum"
datumHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "datumHash" a) =>
  Lens.Family2.LensLike' f s a
datumHash = Data.ProtoLens.Field.field @"datumHash"
delegationIsScript ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delegationIsScript" a) =>
  Lens.Family2.LensLike' f s a
delegationIsScript
  = Data.ProtoLens.Field.field @"delegationIsScript"
delegationPart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delegationPart" a) =>
  Lens.Family2.LensLike' f s a
delegationPart = Data.ProtoLens.Field.field @"delegationPart"
deltaCoin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deltaCoin" a) =>
  Lens.Family2.LensLike' f s a
deltaCoin = Data.ProtoLens.Field.field @"deltaCoin"
denominator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "denominator" a) =>
  Lens.Family2.LensLike' f s a
denominator = Data.ProtoLens.Field.field @"denominator"
dnsName ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dnsName" a) =>
  Lens.Family2.LensLike' f s a
dnsName = Data.ProtoLens.Field.field @"dnsName"
epoch ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "epoch" a) =>
  Lens.Family2.LensLike' f s a
epoch = Data.ProtoLens.Field.field @"epoch"
fee ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fee" a) =>
  Lens.Family2.LensLike' f s a
fee = Data.ProtoLens.Field.field @"fee"
fields ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fields" a) =>
  Lens.Family2.LensLike' f s a
fields = Data.ProtoLens.Field.field @"fields"
from ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "from" a) =>
  Lens.Family2.LensLike' f s a
from = Data.ProtoLens.Field.field @"from"
genesisDelegateHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "genesisDelegateHash" a) =>
  Lens.Family2.LensLike' f s a
genesisDelegateHash
  = Data.ProtoLens.Field.field @"genesisDelegateHash"
genesisHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "genesisHash" a) =>
  Lens.Family2.LensLike' f s a
genesisHash = Data.ProtoLens.Field.field @"genesisHash"
genesisKeyDelegation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "genesisKeyDelegation" a) =>
  Lens.Family2.LensLike' f s a
genesisKeyDelegation
  = Data.ProtoLens.Field.field @"genesisKeyDelegation"
hash ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "hash" a) =>
  Lens.Family2.LensLike' f s a
hash = Data.ProtoLens.Field.field @"hash"
header ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "header" a) =>
  Lens.Family2.LensLike' f s a
header = Data.ProtoLens.Field.field @"header"
inputs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "inputs" a) =>
  Lens.Family2.LensLike' f s a
inputs = Data.ProtoLens.Field.field @"inputs"
int ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "int" a) =>
  Lens.Family2.LensLike' f s a
int = Data.ProtoLens.Field.field @"int"
invalidBefore ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "invalidBefore" a) =>
  Lens.Family2.LensLike' f s a
invalidBefore = Data.ProtoLens.Field.field @"invalidBefore"
invalidHereafter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "invalidHereafter" a) =>
  Lens.Family2.LensLike' f s a
invalidHereafter = Data.ProtoLens.Field.field @"invalidHereafter"
ipV4 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ipV4" a) =>
  Lens.Family2.LensLike' f s a
ipV4 = Data.ProtoLens.Field.field @"ipV4"
ipV6 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ipV6" a) =>
  Lens.Family2.LensLike' f s a
ipV6 = Data.ProtoLens.Field.field @"ipV6"
items ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "items" a) =>
  Lens.Family2.LensLike' f s a
items = Data.ProtoLens.Field.field @"items"
k ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "k" a) =>
  Lens.Family2.LensLike' f s a
k = Data.ProtoLens.Field.field @"k"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
label ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "label" a) =>
  Lens.Family2.LensLike' f s a
label = Data.ProtoLens.Field.field @"label"
map ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "map" a) =>
  Lens.Family2.LensLike' f s a
map = Data.ProtoLens.Field.field @"map"
margin ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "margin" a) =>
  Lens.Family2.LensLike' f s a
margin = Data.ProtoLens.Field.field @"margin"
maybe'addrKeyHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'addrKeyHash" a) =>
  Lens.Family2.LensLike' f s a
maybe'addrKeyHash = Data.ProtoLens.Field.field @"maybe'addrKeyHash"
maybe'anyAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'anyAddress" a) =>
  Lens.Family2.LensLike' f s a
maybe'anyAddress = Data.ProtoLens.Field.field @"maybe'anyAddress"
maybe'anyAsset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'anyAsset" a) =>
  Lens.Family2.LensLike' f s a
maybe'anyAsset = Data.ProtoLens.Field.field @"maybe'anyAsset"
maybe'anyDatum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'anyDatum" a) =>
  Lens.Family2.LensLike' f s a
maybe'anyDatum = Data.ProtoLens.Field.field @"maybe'anyDatum"
maybe'anyOutput ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'anyOutput" a) =>
  Lens.Family2.LensLike' f s a
maybe'anyOutput = Data.ProtoLens.Field.field @"maybe'anyOutput"
maybe'array ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'array" a) =>
  Lens.Family2.LensLike' f s a
maybe'array = Data.ProtoLens.Field.field @"maybe'array"
maybe'asOutput ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'asOutput" a) =>
  Lens.Family2.LensLike' f s a
maybe'asOutput = Data.ProtoLens.Field.field @"maybe'asOutput"
maybe'auxiliary ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'auxiliary" a) =>
  Lens.Family2.LensLike' f s a
maybe'auxiliary = Data.ProtoLens.Field.field @"maybe'auxiliary"
maybe'bigInt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bigInt" a) =>
  Lens.Family2.LensLike' f s a
maybe'bigInt = Data.ProtoLens.Field.field @"maybe'bigInt"
maybe'bigNInt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bigNInt" a) =>
  Lens.Family2.LensLike' f s a
maybe'bigNInt = Data.ProtoLens.Field.field @"maybe'bigNInt"
maybe'bigUInt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bigUInt" a) =>
  Lens.Family2.LensLike' f s a
maybe'bigUInt = Data.ProtoLens.Field.field @"maybe'bigUInt"
maybe'body ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'body" a) =>
  Lens.Family2.LensLike' f s a
maybe'body = Data.ProtoLens.Field.field @"maybe'body"
maybe'boundedBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'boundedBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'boundedBytes
  = Data.ProtoLens.Field.field @"maybe'boundedBytes"
maybe'bytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'bytes = Data.ProtoLens.Field.field @"maybe'bytes"
maybe'certificate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'certificate" a) =>
  Lens.Family2.LensLike' f s a
maybe'certificate = Data.ProtoLens.Field.field @"maybe'certificate"
maybe'collateral ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'collateral" a) =>
  Lens.Family2.LensLike' f s a
maybe'collateral = Data.ProtoLens.Field.field @"maybe'collateral"
maybe'collateralReturn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'collateralReturn" a) =>
  Lens.Family2.LensLike' f s a
maybe'collateralReturn
  = Data.ProtoLens.Field.field @"maybe'collateralReturn"
maybe'constr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'constr" a) =>
  Lens.Family2.LensLike' f s a
maybe'constr = Data.ProtoLens.Field.field @"maybe'constr"
maybe'datum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'datum" a) =>
  Lens.Family2.LensLike' f s a
maybe'datum = Data.ProtoLens.Field.field @"maybe'datum"
maybe'genesisKeyDelegation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'genesisKeyDelegation" a) =>
  Lens.Family2.LensLike' f s a
maybe'genesisKeyDelegation
  = Data.ProtoLens.Field.field @"maybe'genesisKeyDelegation"
maybe'header ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'header" a) =>
  Lens.Family2.LensLike' f s a
maybe'header = Data.ProtoLens.Field.field @"maybe'header"
maybe'int ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'int" a) =>
  Lens.Family2.LensLike' f s a
maybe'int = Data.ProtoLens.Field.field @"maybe'int"
maybe'invalidBefore ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'invalidBefore" a) =>
  Lens.Family2.LensLike' f s a
maybe'invalidBefore
  = Data.ProtoLens.Field.field @"maybe'invalidBefore"
maybe'invalidHereafter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'invalidHereafter" a) =>
  Lens.Family2.LensLike' f s a
maybe'invalidHereafter
  = Data.ProtoLens.Field.field @"maybe'invalidHereafter"
maybe'key ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'key" a) =>
  Lens.Family2.LensLike' f s a
maybe'key = Data.ProtoLens.Field.field @"maybe'key"
maybe'map ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'map" a) =>
  Lens.Family2.LensLike' f s a
maybe'map = Data.ProtoLens.Field.field @"maybe'map"
maybe'margin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'margin" a) =>
  Lens.Family2.LensLike' f s a
maybe'margin = Data.ProtoLens.Field.field @"maybe'margin"
maybe'metadatum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'metadatum" a) =>
  Lens.Family2.LensLike' f s a
maybe'metadatum = Data.ProtoLens.Field.field @"maybe'metadatum"
maybe'mirCert ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mirCert" a) =>
  Lens.Family2.LensLike' f s a
maybe'mirCert = Data.ProtoLens.Field.field @"maybe'mirCert"
maybe'native ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'native" a) =>
  Lens.Family2.LensLike' f s a
maybe'native = Data.ProtoLens.Field.field @"maybe'native"
maybe'nativeScript ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nativeScript" a) =>
  Lens.Family2.LensLike' f s a
maybe'nativeScript
  = Data.ProtoLens.Field.field @"maybe'nativeScript"
maybe'plutusData ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'plutusData" a) =>
  Lens.Family2.LensLike' f s a
maybe'plutusData = Data.ProtoLens.Field.field @"maybe'plutusData"
maybe'plutusV1 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'plutusV1" a) =>
  Lens.Family2.LensLike' f s a
maybe'plutusV1 = Data.ProtoLens.Field.field @"maybe'plutusV1"
maybe'plutusV2 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'plutusV2" a) =>
  Lens.Family2.LensLike' f s a
maybe'plutusV2 = Data.ProtoLens.Field.field @"maybe'plutusV2"
maybe'poolMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'poolMetadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'poolMetadata
  = Data.ProtoLens.Field.field @"maybe'poolMetadata"
maybe'poolRegistration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'poolRegistration" a) =>
  Lens.Family2.LensLike' f s a
maybe'poolRegistration
  = Data.ProtoLens.Field.field @"maybe'poolRegistration"
maybe'poolRetirement ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'poolRetirement" a) =>
  Lens.Family2.LensLike' f s a
maybe'poolRetirement
  = Data.ProtoLens.Field.field @"maybe'poolRetirement"
maybe'redeemer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'redeemer" a) =>
  Lens.Family2.LensLike' f s a
maybe'redeemer = Data.ProtoLens.Field.field @"maybe'redeemer"
maybe'script ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'script" a) =>
  Lens.Family2.LensLike' f s a
maybe'script = Data.ProtoLens.Field.field @"maybe'script"
maybe'scriptAll ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scriptAll" a) =>
  Lens.Family2.LensLike' f s a
maybe'scriptAll = Data.ProtoLens.Field.field @"maybe'scriptAll"
maybe'scriptAny ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scriptAny" a) =>
  Lens.Family2.LensLike' f s a
maybe'scriptAny = Data.ProtoLens.Field.field @"maybe'scriptAny"
maybe'scriptHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scriptHash" a) =>
  Lens.Family2.LensLike' f s a
maybe'scriptHash = Data.ProtoLens.Field.field @"maybe'scriptHash"
maybe'scriptNOfK ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scriptNOfK" a) =>
  Lens.Family2.LensLike' f s a
maybe'scriptNOfK = Data.ProtoLens.Field.field @"maybe'scriptNOfK"
maybe'scriptPubkey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scriptPubkey" a) =>
  Lens.Family2.LensLike' f s a
maybe'scriptPubkey
  = Data.ProtoLens.Field.field @"maybe'scriptPubkey"
maybe'stakeCredential ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stakeCredential" a) =>
  Lens.Family2.LensLike' f s a
maybe'stakeCredential
  = Data.ProtoLens.Field.field @"maybe'stakeCredential"
maybe'stakeDelegation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stakeDelegation" a) =>
  Lens.Family2.LensLike' f s a
maybe'stakeDelegation
  = Data.ProtoLens.Field.field @"maybe'stakeDelegation"
maybe'stakeDeregistration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stakeDeregistration" a) =>
  Lens.Family2.LensLike' f s a
maybe'stakeDeregistration
  = Data.ProtoLens.Field.field @"maybe'stakeDeregistration"
maybe'stakeRegistration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stakeRegistration" a) =>
  Lens.Family2.LensLike' f s a
maybe'stakeRegistration
  = Data.ProtoLens.Field.field @"maybe'stakeRegistration"
maybe'text ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'text" a) =>
  Lens.Family2.LensLike' f s a
maybe'text = Data.ProtoLens.Field.field @"maybe'text"
maybe'txPattern ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'txPattern" a) =>
  Lens.Family2.LensLike' f s a
maybe'txPattern = Data.ProtoLens.Field.field @"maybe'txPattern"
maybe'validity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'validity" a) =>
  Lens.Family2.LensLike' f s a
maybe'validity = Data.ProtoLens.Field.field @"maybe'validity"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
maybe'witnesses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'witnesses" a) =>
  Lens.Family2.LensLike' f s a
maybe'witnesses = Data.ProtoLens.Field.field @"maybe'witnesses"
metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadata" a) =>
  Lens.Family2.LensLike' f s a
metadata = Data.ProtoLens.Field.field @"metadata"
mint ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mint" a) =>
  Lens.Family2.LensLike' f s a
mint = Data.ProtoLens.Field.field @"mint"
mintCoin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mintCoin" a) =>
  Lens.Family2.LensLike' f s a
mintCoin = Data.ProtoLens.Field.field @"mintCoin"
mirCert ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mirCert" a) =>
  Lens.Family2.LensLike' f s a
mirCert = Data.ProtoLens.Field.field @"mirCert"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
native ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "native" a) =>
  Lens.Family2.LensLike' f s a
native = Data.ProtoLens.Field.field @"native"
numerator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "numerator" a) =>
  Lens.Family2.LensLike' f s a
numerator = Data.ProtoLens.Field.field @"numerator"
operator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "operator" a) =>
  Lens.Family2.LensLike' f s a
operator = Data.ProtoLens.Field.field @"operator"
otherPot ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "otherPot" a) =>
  Lens.Family2.LensLike' f s a
otherPot = Data.ProtoLens.Field.field @"otherPot"
outputCoin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "outputCoin" a) =>
  Lens.Family2.LensLike' f s a
outputCoin = Data.ProtoLens.Field.field @"outputCoin"
outputIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "outputIndex" a) =>
  Lens.Family2.LensLike' f s a
outputIndex = Data.ProtoLens.Field.field @"outputIndex"
outputs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "outputs" a) =>
  Lens.Family2.LensLike' f s a
outputs = Data.ProtoLens.Field.field @"outputs"
pairs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pairs" a) =>
  Lens.Family2.LensLike' f s a
pairs = Data.ProtoLens.Field.field @"pairs"
paymentIsScript ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "paymentIsScript" a) =>
  Lens.Family2.LensLike' f s a
paymentIsScript = Data.ProtoLens.Field.field @"paymentIsScript"
paymentPart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "paymentPart" a) =>
  Lens.Family2.LensLike' f s a
paymentPart = Data.ProtoLens.Field.field @"paymentPart"
pledge ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pledge" a) =>
  Lens.Family2.LensLike' f s a
pledge = Data.ProtoLens.Field.field @"pledge"
plutusDatums ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "plutusDatums" a) =>
  Lens.Family2.LensLike' f s a
plutusDatums = Data.ProtoLens.Field.field @"plutusDatums"
plutusV1 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "plutusV1" a) =>
  Lens.Family2.LensLike' f s a
plutusV1 = Data.ProtoLens.Field.field @"plutusV1"
plutusV2 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "plutusV2" a) =>
  Lens.Family2.LensLike' f s a
plutusV2 = Data.ProtoLens.Field.field @"plutusV2"
policyId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "policyId" a) =>
  Lens.Family2.LensLike' f s a
policyId = Data.ProtoLens.Field.field @"policyId"
poolKeyhash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "poolKeyhash" a) =>
  Lens.Family2.LensLike' f s a
poolKeyhash = Data.ProtoLens.Field.field @"poolKeyhash"
poolMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "poolMetadata" a) =>
  Lens.Family2.LensLike' f s a
poolMetadata = Data.ProtoLens.Field.field @"poolMetadata"
poolOwners ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "poolOwners" a) =>
  Lens.Family2.LensLike' f s a
poolOwners = Data.ProtoLens.Field.field @"poolOwners"
poolRegistration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "poolRegistration" a) =>
  Lens.Family2.LensLike' f s a
poolRegistration = Data.ProtoLens.Field.field @"poolRegistration"
poolRetirement ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "poolRetirement" a) =>
  Lens.Family2.LensLike' f s a
poolRetirement = Data.ProtoLens.Field.field @"poolRetirement"
port ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "port" a) =>
  Lens.Family2.LensLike' f s a
port = Data.ProtoLens.Field.field @"port"
purpose ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "purpose" a) =>
  Lens.Family2.LensLike' f s a
purpose = Data.ProtoLens.Field.field @"purpose"
redeemer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "redeemer" a) =>
  Lens.Family2.LensLike' f s a
redeemer = Data.ProtoLens.Field.field @"redeemer"
referenceInputs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "referenceInputs" a) =>
  Lens.Family2.LensLike' f s a
referenceInputs = Data.ProtoLens.Field.field @"referenceInputs"
relays ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "relays" a) =>
  Lens.Family2.LensLike' f s a
relays = Data.ProtoLens.Field.field @"relays"
rewardAccount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rewardAccount" a) =>
  Lens.Family2.LensLike' f s a
rewardAccount = Data.ProtoLens.Field.field @"rewardAccount"
script ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "script" a) =>
  Lens.Family2.LensLike' f s a
script = Data.ProtoLens.Field.field @"script"
scriptAll ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scriptAll" a) =>
  Lens.Family2.LensLike' f s a
scriptAll = Data.ProtoLens.Field.field @"scriptAll"
scriptAny ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scriptAny" a) =>
  Lens.Family2.LensLike' f s a
scriptAny = Data.ProtoLens.Field.field @"scriptAny"
scriptHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scriptHash" a) =>
  Lens.Family2.LensLike' f s a
scriptHash = Data.ProtoLens.Field.field @"scriptHash"
scriptNOfK ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scriptNOfK" a) =>
  Lens.Family2.LensLike' f s a
scriptNOfK = Data.ProtoLens.Field.field @"scriptNOfK"
scriptPubkey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scriptPubkey" a) =>
  Lens.Family2.LensLike' f s a
scriptPubkey = Data.ProtoLens.Field.field @"scriptPubkey"
scripts ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "scripts" a) =>
  Lens.Family2.LensLike' f s a
scripts = Data.ProtoLens.Field.field @"scripts"
signature ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signature" a) =>
  Lens.Family2.LensLike' f s a
signature = Data.ProtoLens.Field.field @"signature"
slot ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "slot" a) =>
  Lens.Family2.LensLike' f s a
slot = Data.ProtoLens.Field.field @"slot"
stakeCredential ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stakeCredential" a) =>
  Lens.Family2.LensLike' f s a
stakeCredential = Data.ProtoLens.Field.field @"stakeCredential"
stakeDelegation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stakeDelegation" a) =>
  Lens.Family2.LensLike' f s a
stakeDelegation = Data.ProtoLens.Field.field @"stakeDelegation"
stakeDeregistration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stakeDeregistration" a) =>
  Lens.Family2.LensLike' f s a
stakeDeregistration
  = Data.ProtoLens.Field.field @"stakeDeregistration"
stakeRegistration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stakeRegistration" a) =>
  Lens.Family2.LensLike' f s a
stakeRegistration = Data.ProtoLens.Field.field @"stakeRegistration"
start ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "start" a) =>
  Lens.Family2.LensLike' f s a
start = Data.ProtoLens.Field.field @"start"
successful ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "successful" a) =>
  Lens.Family2.LensLike' f s a
successful = Data.ProtoLens.Field.field @"successful"
tag ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tag" a) =>
  Lens.Family2.LensLike' f s a
tag = Data.ProtoLens.Field.field @"tag"
text ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "text" a) =>
  Lens.Family2.LensLike' f s a
text = Data.ProtoLens.Field.field @"text"
to ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "to" a) =>
  Lens.Family2.LensLike' f s a
to = Data.ProtoLens.Field.field @"to"
totalCollateral ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalCollateral" a) =>
  Lens.Family2.LensLike' f s a
totalCollateral = Data.ProtoLens.Field.field @"totalCollateral"
ttl ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ttl" a) =>
  Lens.Family2.LensLike' f s a
ttl = Data.ProtoLens.Field.field @"ttl"
tx ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tx" a) =>
  Lens.Family2.LensLike' f s a
tx = Data.ProtoLens.Field.field @"tx"
txHash ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "txHash" a) =>
  Lens.Family2.LensLike' f s a
txHash = Data.ProtoLens.Field.field @"txHash"
url ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "url" a) =>
  Lens.Family2.LensLike' f s a
url = Data.ProtoLens.Field.field @"url"
validity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validity" a) =>
  Lens.Family2.LensLike' f s a
validity = Data.ProtoLens.Field.field @"validity"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'assets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'assets" a) =>
  Lens.Family2.LensLike' f s a
vec'assets = Data.ProtoLens.Field.field @"vec'assets"
vec'certificates ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'certificates" a) =>
  Lens.Family2.LensLike' f s a
vec'certificates = Data.ProtoLens.Field.field @"vec'certificates"
vec'collateral ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'collateral" a) =>
  Lens.Family2.LensLike' f s a
vec'collateral = Data.ProtoLens.Field.field @"vec'collateral"
vec'fields ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'fields" a) =>
  Lens.Family2.LensLike' f s a
vec'fields = Data.ProtoLens.Field.field @"vec'fields"
vec'inputs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'inputs" a) =>
  Lens.Family2.LensLike' f s a
vec'inputs = Data.ProtoLens.Field.field @"vec'inputs"
vec'items ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'items" a) =>
  Lens.Family2.LensLike' f s a
vec'items = Data.ProtoLens.Field.field @"vec'items"
vec'metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'metadata" a) =>
  Lens.Family2.LensLike' f s a
vec'metadata = Data.ProtoLens.Field.field @"vec'metadata"
vec'mint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'mint" a) =>
  Lens.Family2.LensLike' f s a
vec'mint = Data.ProtoLens.Field.field @"vec'mint"
vec'outputs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'outputs" a) =>
  Lens.Family2.LensLike' f s a
vec'outputs = Data.ProtoLens.Field.field @"vec'outputs"
vec'pairs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'pairs" a) =>
  Lens.Family2.LensLike' f s a
vec'pairs = Data.ProtoLens.Field.field @"vec'pairs"
vec'plutusDatums ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'plutusDatums" a) =>
  Lens.Family2.LensLike' f s a
vec'plutusDatums = Data.ProtoLens.Field.field @"vec'plutusDatums"
vec'poolOwners ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'poolOwners" a) =>
  Lens.Family2.LensLike' f s a
vec'poolOwners = Data.ProtoLens.Field.field @"vec'poolOwners"
vec'referenceInputs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'referenceInputs" a) =>
  Lens.Family2.LensLike' f s a
vec'referenceInputs
  = Data.ProtoLens.Field.field @"vec'referenceInputs"
vec'relays ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'relays" a) =>
  Lens.Family2.LensLike' f s a
vec'relays = Data.ProtoLens.Field.field @"vec'relays"
vec'script ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'script" a) =>
  Lens.Family2.LensLike' f s a
vec'script = Data.ProtoLens.Field.field @"vec'script"
vec'scripts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'scripts" a) =>
  Lens.Family2.LensLike' f s a
vec'scripts = Data.ProtoLens.Field.field @"vec'scripts"
vec'to ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vec'to" a) =>
  Lens.Family2.LensLike' f s a
vec'to = Data.ProtoLens.Field.field @"vec'to"
vec'tx ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vec'tx" a) =>
  Lens.Family2.LensLike' f s a
vec'tx = Data.ProtoLens.Field.field @"vec'tx"
vec'vkeywitness ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'vkeywitness" a) =>
  Lens.Family2.LensLike' f s a
vec'vkeywitness = Data.ProtoLens.Field.field @"vec'vkeywitness"
vec'withdrawals ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'withdrawals" a) =>
  Lens.Family2.LensLike' f s a
vec'withdrawals = Data.ProtoLens.Field.field @"vec'withdrawals"
vkey ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vkey" a) =>
  Lens.Family2.LensLike' f s a
vkey = Data.ProtoLens.Field.field @"vkey"
vkeywitness ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vkeywitness" a) =>
  Lens.Family2.LensLike' f s a
vkeywitness = Data.ProtoLens.Field.field @"vkeywitness"
vrfKeyhash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vrfKeyhash" a) =>
  Lens.Family2.LensLike' f s a
vrfKeyhash = Data.ProtoLens.Field.field @"vrfKeyhash"
withdrawals ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "withdrawals" a) =>
  Lens.Family2.LensLike' f s a
withdrawals = Data.ProtoLens.Field.field @"withdrawals"
witnesses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "witnesses" a) =>
  Lens.Family2.LensLike' f s a
witnesses = Data.ProtoLens.Field.field @"witnesses"