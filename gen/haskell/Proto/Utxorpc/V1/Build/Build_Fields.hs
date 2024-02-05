{- This file was auto-generated from utxorpc/v1/build/build.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Utxorpc.V1.Build.Build_Fields where
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
import qualified Proto.Google.Protobuf.FieldMask
import qualified Proto.Utxorpc.V1.Cardano.Cardano
acquirePoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "acquirePoint" a) =>
  Lens.Family2.LensLike' f s a
acquirePoint = Data.ProtoLens.Field.field @"acquirePoint"
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
cardano ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cardano" a) =>
  Lens.Family2.LensLike' f s a
cardano = Data.ProtoLens.Field.field @"cardano"
hash ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "hash" a) =>
  Lens.Family2.LensLike' f s a
hash = Data.ProtoLens.Field.field @"hash"
height ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "height" a) =>
  Lens.Family2.LensLike' f s a
height = Data.ProtoLens.Field.field @"height"
index ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "index" a) =>
  Lens.Family2.LensLike' f s a
index = Data.ProtoLens.Field.field @"index"
items ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "items" a) =>
  Lens.Family2.LensLike' f s a
items = Data.ProtoLens.Field.field @"items"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
lost ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "lost" a) =>
  Lens.Family2.LensLike' f s a
lost = Data.ProtoLens.Field.field @"lost"
maybe'acquirePoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'acquirePoint" a) =>
  Lens.Family2.LensLike' f s a
maybe'acquirePoint
  = Data.ProtoLens.Field.field @"maybe'acquirePoint"
maybe'cardano ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cardano" a) =>
  Lens.Family2.LensLike' f s a
maybe'cardano = Data.ProtoLens.Field.field @"maybe'cardano"
maybe'chain ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'chain" a) =>
  Lens.Family2.LensLike' f s a
maybe'chain = Data.ProtoLens.Field.field @"maybe'chain"
maybe'tip ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tip" a) =>
  Lens.Family2.LensLike' f s a
maybe'tip = Data.ProtoLens.Field.field @"maybe'tip"
nextToken ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nextToken" a) =>
  Lens.Family2.LensLike' f s a
nextToken = Data.ProtoLens.Field.field @"nextToken"
param ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "param" a) =>
  Lens.Family2.LensLike' f s a
param = Data.ProtoLens.Field.field @"param"
ref ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ref" a) =>
  Lens.Family2.LensLike' f s a
ref = Data.ProtoLens.Field.field @"ref"
refs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "refs" a) =>
  Lens.Family2.LensLike' f s a
refs = Data.ProtoLens.Field.field @"refs"
slot ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "slot" a) =>
  Lens.Family2.LensLike' f s a
slot = Data.ProtoLens.Field.field @"slot"
tip ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tip" a) =>
  Lens.Family2.LensLike' f s a
tip = Data.ProtoLens.Field.field @"tip"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'address ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'address" a) =>
  Lens.Family2.LensLike' f s a
vec'address = Data.ProtoLens.Field.field @"vec'address"
vec'items ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'items" a) =>
  Lens.Family2.LensLike' f s a
vec'items = Data.ProtoLens.Field.field @"vec'items"
vec'lost ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'lost" a) =>
  Lens.Family2.LensLike' f s a
vec'lost = Data.ProtoLens.Field.field @"vec'lost"
vec'param ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'param" a) =>
  Lens.Family2.LensLike' f s a
vec'param = Data.ProtoLens.Field.field @"vec'param"
vec'ref ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vec'ref" a) =>
  Lens.Family2.LensLike' f s a
vec'ref = Data.ProtoLens.Field.field @"vec'ref"
vec'refs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'refs" a) =>
  Lens.Family2.LensLike' f s a
vec'refs = Data.ProtoLens.Field.field @"vec'refs"