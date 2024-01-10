{- This file was auto-generated from utxorpc/watch/v1/watch.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Utxorpc.Watch.V1.Watch_Fields where
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
import qualified Proto.Utxorpc.Cardano.V1.Cardano
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
apply ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "apply" a) =>
  Lens.Family2.LensLike' f s a
apply = Data.ProtoLens.Field.field @"apply"
asset ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "asset" a) =>
  Lens.Family2.LensLike' f s a
asset = Data.ProtoLens.Field.field @"asset"
cardano ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cardano" a) =>
  Lens.Family2.LensLike' f s a
cardano = Data.ProtoLens.Field.field @"cardano"
datum ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "datum" a) =>
  Lens.Family2.LensLike' f s a
datum = Data.ProtoLens.Field.field @"datum"
fieldMask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fieldMask" a) =>
  Lens.Family2.LensLike' f s a
fieldMask = Data.ProtoLens.Field.field @"fieldMask"
matchAny ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "matchAny" a) =>
  Lens.Family2.LensLike' f s a
matchAny = Data.ProtoLens.Field.field @"matchAny"
matchHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "matchHash" a) =>
  Lens.Family2.LensLike' f s a
matchHash = Data.ProtoLens.Field.field @"matchHash"
matchIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "matchIndex" a) =>
  Lens.Family2.LensLike' f s a
matchIndex = Data.ProtoLens.Field.field @"matchIndex"
matchName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "matchName" a) =>
  Lens.Family2.LensLike' f s a
matchName = Data.ProtoLens.Field.field @"matchName"
matchPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "matchPolicy" a) =>
  Lens.Family2.LensLike' f s a
matchPolicy = Data.ProtoLens.Field.field @"matchPolicy"
matchSource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "matchSource" a) =>
  Lens.Family2.LensLike' f s a
matchSource = Data.ProtoLens.Field.field @"matchSource"
matchTarget ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "matchTarget" a) =>
  Lens.Family2.LensLike' f s a
matchTarget = Data.ProtoLens.Field.field @"matchTarget"
maybe'action ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'action" a) =>
  Lens.Family2.LensLike' f s a
maybe'action = Data.ProtoLens.Field.field @"maybe'action"
maybe'address ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'address" a) =>
  Lens.Family2.LensLike' f s a
maybe'address = Data.ProtoLens.Field.field @"maybe'address"
maybe'apply ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'apply" a) =>
  Lens.Family2.LensLike' f s a
maybe'apply = Data.ProtoLens.Field.field @"maybe'apply"
maybe'asset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'asset" a) =>
  Lens.Family2.LensLike' f s a
maybe'asset = Data.ProtoLens.Field.field @"maybe'asset"
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
maybe'datum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'datum" a) =>
  Lens.Family2.LensLike' f s a
maybe'datum = Data.ProtoLens.Field.field @"maybe'datum"
maybe'fieldMask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fieldMask" a) =>
  Lens.Family2.LensLike' f s a
maybe'fieldMask = Data.ProtoLens.Field.field @"maybe'fieldMask"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
maybe'undo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'undo" a) =>
  Lens.Family2.LensLike' f s a
maybe'undo = Data.ProtoLens.Field.field @"maybe'undo"
maybe'utxo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'utxo" a) =>
  Lens.Family2.LensLike' f s a
maybe'utxo = Data.ProtoLens.Field.field @"maybe'utxo"
predicate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "predicate" a) =>
  Lens.Family2.LensLike' f s a
predicate = Data.ProtoLens.Field.field @"predicate"
undo ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "undo" a) =>
  Lens.Family2.LensLike' f s a
undo = Data.ProtoLens.Field.field @"undo"
utxo ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "utxo" a) =>
  Lens.Family2.LensLike' f s a
utxo = Data.ProtoLens.Field.field @"utxo"
vec'predicate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'predicate" a) =>
  Lens.Family2.LensLike' f s a
vec'predicate = Data.ProtoLens.Field.field @"vec'predicate"