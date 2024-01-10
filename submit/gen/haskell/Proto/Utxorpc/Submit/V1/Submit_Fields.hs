{- This file was auto-generated from utxorpc/submit/v1/submit.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Utxorpc.Submit.V1.Submit_Fields where
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
maybe'raw ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'raw" a) =>
  Lens.Family2.LensLike' f s a
maybe'raw = Data.ProtoLens.Field.field @"maybe'raw"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
raw ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "raw" a) =>
  Lens.Family2.LensLike' f s a
raw = Data.ProtoLens.Field.field @"raw"
ref ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ref" a) =>
  Lens.Family2.LensLike' f s a
ref = Data.ProtoLens.Field.field @"ref"
stage ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "stage" a) =>
  Lens.Family2.LensLike' f s a
stage = Data.ProtoLens.Field.field @"stage"
tx ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tx" a) =>
  Lens.Family2.LensLike' f s a
tx = Data.ProtoLens.Field.field @"tx"
vec'ref ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vec'ref" a) =>
  Lens.Family2.LensLike' f s a
vec'ref = Data.ProtoLens.Field.field @"vec'ref"
vec'stage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'stage" a) =>
  Lens.Family2.LensLike' f s a
vec'stage = Data.ProtoLens.Field.field @"vec'stage"
vec'tx ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vec'tx" a) =>
  Lens.Family2.LensLike' f s a
vec'tx = Data.ProtoLens.Field.field @"vec'tx"