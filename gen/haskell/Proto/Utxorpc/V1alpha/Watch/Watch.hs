{- This file was auto-generated from utxorpc/v1/watch/watch.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Utxorpc.V1alpha.Watch.Watch (
        WatchService(..), AnyChainTx(), AnyChainTx'Chain(..),
        _AnyChainTx'Cardano, AnyChainTxPattern(),
        AnyChainTxPattern'Chain(..), _AnyChainTxPattern'Cardano,
        TxPredicate(), WatchTxRequest(), WatchTxResponse(),
        WatchTxResponse'Action(..), _WatchTxResponse'Apply,
        _WatchTxResponse'Undo
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
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
import qualified Proto.Utxorpc.V1alpha.Cardano.Cardano
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.maybe'chain' @:: Lens' AnyChainTx (Prelude.Maybe AnyChainTx'Chain)@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.maybe'cardano' @:: Lens' AnyChainTx (Prelude.Maybe Proto.Utxorpc.V1alpha.Cardano.Cardano.Tx)@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.cardano' @:: Lens' AnyChainTx Proto.Utxorpc.V1alpha.Cardano.Cardano.Tx@ -}
data AnyChainTx
  = AnyChainTx'_constructor {_AnyChainTx'chain :: !(Prelude.Maybe AnyChainTx'Chain),
                             _AnyChainTx'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AnyChainTx where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data AnyChainTx'Chain
  = AnyChainTx'Cardano !Proto.Utxorpc.V1alpha.Cardano.Cardano.Tx
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField AnyChainTx "maybe'chain" (Prelude.Maybe AnyChainTx'Chain) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainTx'chain (\ x__ y__ -> x__ {_AnyChainTx'chain = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AnyChainTx "maybe'cardano" (Prelude.Maybe Proto.Utxorpc.V1alpha.Cardano.Cardano.Tx) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainTx'chain (\ x__ y__ -> x__ {_AnyChainTx'chain = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AnyChainTx'Cardano x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AnyChainTx'Cardano y__))
instance Data.ProtoLens.Field.HasField AnyChainTx "cardano" Proto.Utxorpc.V1alpha.Cardano.Cardano.Tx where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainTx'chain (\ x__ y__ -> x__ {_AnyChainTx'chain = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AnyChainTx'Cardano x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AnyChainTx'Cardano y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message AnyChainTx where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.watch.AnyChainTx"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \AnyChainTx\DC22\n\
      \\acardano\CAN\SOH \SOH(\v2\SYN.utxorpc.v1alpha.cardano.TxH\NULR\acardanoB\a\n\
      \\ENQchain"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cardano__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cardano"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Utxorpc.V1alpha.Cardano.Cardano.Tx)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cardano")) ::
              Data.ProtoLens.FieldDescriptor AnyChainTx
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cardano__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AnyChainTx'_unknownFields
        (\ x__ y__ -> x__ {_AnyChainTx'_unknownFields = y__})
  defMessage
    = AnyChainTx'_constructor
        {_AnyChainTx'chain = Prelude.Nothing,
         _AnyChainTx'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AnyChainTx -> Data.ProtoLens.Encoding.Bytes.Parser AnyChainTx
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cardano"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cardano") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AnyChainTx"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'chain") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (AnyChainTx'Cardano v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData AnyChainTx where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AnyChainTx'_unknownFields x__)
             (Control.DeepSeq.deepseq (_AnyChainTx'chain x__) ())
instance Control.DeepSeq.NFData AnyChainTx'Chain where
  rnf (AnyChainTx'Cardano x__) = Control.DeepSeq.rnf x__
_AnyChainTx'Cardano ::
  Data.ProtoLens.Prism.Prism' AnyChainTx'Chain Proto.Utxorpc.V1alpha.Cardano.Cardano.Tx
_AnyChainTx'Cardano
  = Data.ProtoLens.Prism.prism'
      AnyChainTx'Cardano
      (\ p__
         -> case p__ of (AnyChainTx'Cardano p__val) -> Prelude.Just p__val)
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.maybe'chain' @:: Lens' AnyChainTxPattern (Prelude.Maybe AnyChainTxPattern'Chain)@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.maybe'cardano' @:: Lens' AnyChainTxPattern (Prelude.Maybe Proto.Utxorpc.V1alpha.Cardano.Cardano.TxPattern)@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.cardano' @:: Lens' AnyChainTxPattern Proto.Utxorpc.V1alpha.Cardano.Cardano.TxPattern@ -}
data AnyChainTxPattern
  = AnyChainTxPattern'_constructor {_AnyChainTxPattern'chain :: !(Prelude.Maybe AnyChainTxPattern'Chain),
                                    _AnyChainTxPattern'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AnyChainTxPattern where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data AnyChainTxPattern'Chain
  = AnyChainTxPattern'Cardano !Proto.Utxorpc.V1alpha.Cardano.Cardano.TxPattern
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField AnyChainTxPattern "maybe'chain" (Prelude.Maybe AnyChainTxPattern'Chain) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainTxPattern'chain
           (\ x__ y__ -> x__ {_AnyChainTxPattern'chain = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AnyChainTxPattern "maybe'cardano" (Prelude.Maybe Proto.Utxorpc.V1alpha.Cardano.Cardano.TxPattern) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainTxPattern'chain
           (\ x__ y__ -> x__ {_AnyChainTxPattern'chain = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AnyChainTxPattern'Cardano x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AnyChainTxPattern'Cardano y__))
instance Data.ProtoLens.Field.HasField AnyChainTxPattern "cardano" Proto.Utxorpc.V1alpha.Cardano.Cardano.TxPattern where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainTxPattern'chain
           (\ x__ y__ -> x__ {_AnyChainTxPattern'chain = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AnyChainTxPattern'Cardano x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AnyChainTxPattern'Cardano y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message AnyChainTxPattern where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.watch.AnyChainTxPattern"
  packedMessageDescriptor _
    = "\n\
      \\DC1AnyChainTxPattern\DC29\n\
      \\acardano\CAN\SOH \SOH(\v2\GS.utxorpc.v1alpha.cardano.TxPatternH\NULR\acardanoB\a\n\
      \\ENQchain"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cardano__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cardano"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Utxorpc.V1alpha.Cardano.Cardano.TxPattern)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cardano")) ::
              Data.ProtoLens.FieldDescriptor AnyChainTxPattern
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cardano__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AnyChainTxPattern'_unknownFields
        (\ x__ y__ -> x__ {_AnyChainTxPattern'_unknownFields = y__})
  defMessage
    = AnyChainTxPattern'_constructor
        {_AnyChainTxPattern'chain = Prelude.Nothing,
         _AnyChainTxPattern'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AnyChainTxPattern
          -> Data.ProtoLens.Encoding.Bytes.Parser AnyChainTxPattern
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cardano"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cardano") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AnyChainTxPattern"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'chain") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (AnyChainTxPattern'Cardano v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData AnyChainTxPattern where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AnyChainTxPattern'_unknownFields x__)
             (Control.DeepSeq.deepseq (_AnyChainTxPattern'chain x__) ())
instance Control.DeepSeq.NFData AnyChainTxPattern'Chain where
  rnf (AnyChainTxPattern'Cardano x__) = Control.DeepSeq.rnf x__
_AnyChainTxPattern'Cardano ::
  Data.ProtoLens.Prism.Prism' AnyChainTxPattern'Chain Proto.Utxorpc.V1alpha.Cardano.Cardano.TxPattern
_AnyChainTxPattern'Cardano
  = Data.ProtoLens.Prism.prism'
      AnyChainTxPattern'Cardano
      (\ p__
         -> case p__ of
              (AnyChainTxPattern'Cardano p__val) -> Prelude.Just p__val)
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.match' @:: Lens' TxPredicate AnyChainTxPattern@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.maybe'match' @:: Lens' TxPredicate (Prelude.Maybe AnyChainTxPattern)@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.not' @:: Lens' TxPredicate [TxPredicate]@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.vec'not' @:: Lens' TxPredicate (Data.Vector.Vector TxPredicate)@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.allOf' @:: Lens' TxPredicate [TxPredicate]@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.vec'allOf' @:: Lens' TxPredicate (Data.Vector.Vector TxPredicate)@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.anyOf' @:: Lens' TxPredicate [TxPredicate]@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.vec'anyOf' @:: Lens' TxPredicate (Data.Vector.Vector TxPredicate)@ -}
data TxPredicate
  = TxPredicate'_constructor {_TxPredicate'match :: !(Prelude.Maybe AnyChainTxPattern),
                              _TxPredicate'not :: !(Data.Vector.Vector TxPredicate),
                              _TxPredicate'allOf :: !(Data.Vector.Vector TxPredicate),
                              _TxPredicate'anyOf :: !(Data.Vector.Vector TxPredicate),
                              _TxPredicate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxPredicate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxPredicate "match" AnyChainTxPattern where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxPredicate'match (\ x__ y__ -> x__ {_TxPredicate'match = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TxPredicate "maybe'match" (Prelude.Maybe AnyChainTxPattern) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxPredicate'match (\ x__ y__ -> x__ {_TxPredicate'match = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxPredicate "not" [TxPredicate] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxPredicate'not (\ x__ y__ -> x__ {_TxPredicate'not = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TxPredicate "vec'not" (Data.Vector.Vector TxPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxPredicate'not (\ x__ y__ -> x__ {_TxPredicate'not = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxPredicate "allOf" [TxPredicate] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxPredicate'allOf (\ x__ y__ -> x__ {_TxPredicate'allOf = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TxPredicate "vec'allOf" (Data.Vector.Vector TxPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxPredicate'allOf (\ x__ y__ -> x__ {_TxPredicate'allOf = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxPredicate "anyOf" [TxPredicate] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxPredicate'anyOf (\ x__ y__ -> x__ {_TxPredicate'anyOf = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TxPredicate "vec'anyOf" (Data.Vector.Vector TxPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxPredicate'anyOf (\ x__ y__ -> x__ {_TxPredicate'anyOf = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxPredicate where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.watch.TxPredicate"
  packedMessageDescriptor _
    = "\n\
      \\vTxPredicate\DC29\n\
      \\ENQmatch\CAN\SOH \SOH(\v2#.utxorpc.v1alpha.watch.AnyChainTxPatternR\ENQmatch\DC2/\n\
      \\ETXnot\CAN\STX \ETX(\v2\GS.utxorpc.v1alpha.watch.TxPredicateR\ETXnot\DC24\n\
      \\ACKall_of\CAN\ETX \ETX(\v2\GS.utxorpc.v1alpha.watch.TxPredicateR\ENQallOf\DC24\n\
      \\ACKany_of\CAN\EOT \ETX(\v2\GS.utxorpc.v1alpha.watch.TxPredicateR\ENQanyOf"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        match__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AnyChainTxPattern)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'match")) ::
              Data.ProtoLens.FieldDescriptor TxPredicate
        not__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TxPredicate)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"not")) ::
              Data.ProtoLens.FieldDescriptor TxPredicate
        allOf__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "all_of"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TxPredicate)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"allOf")) ::
              Data.ProtoLens.FieldDescriptor TxPredicate
        anyOf__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "any_of"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TxPredicate)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"anyOf")) ::
              Data.ProtoLens.FieldDescriptor TxPredicate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, match__field_descriptor),
           (Data.ProtoLens.Tag 2, not__field_descriptor),
           (Data.ProtoLens.Tag 3, allOf__field_descriptor),
           (Data.ProtoLens.Tag 4, anyOf__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxPredicate'_unknownFields
        (\ x__ y__ -> x__ {_TxPredicate'_unknownFields = y__})
  defMessage
    = TxPredicate'_constructor
        {_TxPredicate'match = Prelude.Nothing,
         _TxPredicate'not = Data.Vector.Generic.empty,
         _TxPredicate'allOf = Data.Vector.Generic.empty,
         _TxPredicate'anyOf = Data.Vector.Generic.empty,
         _TxPredicate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TxPredicate
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld TxPredicate
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld TxPredicate
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld TxPredicate
                   -> Data.ProtoLens.Encoding.Bytes.Parser TxPredicate
        loop x mutable'allOf mutable'anyOf mutable'not
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'allOf <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'allOf)
                      frozen'anyOf <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'anyOf)
                      frozen'not <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'not)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'allOf") frozen'allOf
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'anyOf") frozen'anyOf
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'not") frozen'not x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"match") y x)
                                  mutable'allOf mutable'anyOf mutable'not
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "not"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'not y)
                                loop x mutable'allOf mutable'anyOf v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "all_of"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'allOf y)
                                loop x v mutable'anyOf mutable'not
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "any_of"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'anyOf y)
                                loop x mutable'allOf v mutable'not
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'allOf mutable'anyOf mutable'not
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'allOf <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              mutable'anyOf <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              mutable'not <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'allOf mutable'anyOf mutable'not)
          "TxPredicate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'match") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'not") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'allOf") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'anyOf") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData TxPredicate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxPredicate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TxPredicate'match x__)
                (Control.DeepSeq.deepseq
                   (_TxPredicate'not x__)
                   (Control.DeepSeq.deepseq
                      (_TxPredicate'allOf x__)
                      (Control.DeepSeq.deepseq (_TxPredicate'anyOf x__) ()))))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.predicate' @:: Lens' WatchTxRequest TxPredicate@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.maybe'predicate' @:: Lens' WatchTxRequest (Prelude.Maybe TxPredicate)@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.fieldMask' @:: Lens' WatchTxRequest Proto.Google.Protobuf.FieldMask.FieldMask@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.maybe'fieldMask' @:: Lens' WatchTxRequest (Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask)@ -}
data WatchTxRequest
  = WatchTxRequest'_constructor {_WatchTxRequest'predicate :: !(Prelude.Maybe TxPredicate),
                                 _WatchTxRequest'fieldMask :: !(Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask),
                                 _WatchTxRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WatchTxRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WatchTxRequest "predicate" TxPredicate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WatchTxRequest'predicate
           (\ x__ y__ -> x__ {_WatchTxRequest'predicate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WatchTxRequest "maybe'predicate" (Prelude.Maybe TxPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WatchTxRequest'predicate
           (\ x__ y__ -> x__ {_WatchTxRequest'predicate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WatchTxRequest "fieldMask" Proto.Google.Protobuf.FieldMask.FieldMask where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WatchTxRequest'fieldMask
           (\ x__ y__ -> x__ {_WatchTxRequest'fieldMask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WatchTxRequest "maybe'fieldMask" (Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WatchTxRequest'fieldMask
           (\ x__ y__ -> x__ {_WatchTxRequest'fieldMask = y__}))
        Prelude.id
instance Data.ProtoLens.Message WatchTxRequest where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.watch.WatchTxRequest"
  packedMessageDescriptor _
    = "\n\
      \\SOWatchTxRequest\DC2;\n\
      \\tpredicate\CAN\SOH \SOH(\v2\GS.utxorpc.v1alpha.watch.TxPredicateR\tpredicate\DC29\n\
      \\n\
      \field_mask\CAN\STX \SOH(\v2\SUB.google.protobuf.FieldMaskR\tfieldMask"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        predicate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "predicate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TxPredicate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'predicate")) ::
              Data.ProtoLens.FieldDescriptor WatchTxRequest
        fieldMask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "field_mask"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.FieldMask.FieldMask)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fieldMask")) ::
              Data.ProtoLens.FieldDescriptor WatchTxRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, predicate__field_descriptor),
           (Data.ProtoLens.Tag 2, fieldMask__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WatchTxRequest'_unknownFields
        (\ x__ y__ -> x__ {_WatchTxRequest'_unknownFields = y__})
  defMessage
    = WatchTxRequest'_constructor
        {_WatchTxRequest'predicate = Prelude.Nothing,
         _WatchTxRequest'fieldMask = Prelude.Nothing,
         _WatchTxRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WatchTxRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser WatchTxRequest
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "predicate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"predicate") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "field_mask"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fieldMask") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WatchTxRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'predicate") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'fieldMask") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData WatchTxRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WatchTxRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WatchTxRequest'predicate x__)
                (Control.DeepSeq.deepseq (_WatchTxRequest'fieldMask x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.maybe'action' @:: Lens' WatchTxResponse (Prelude.Maybe WatchTxResponse'Action)@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.maybe'apply' @:: Lens' WatchTxResponse (Prelude.Maybe AnyChainTx)@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.apply' @:: Lens' WatchTxResponse AnyChainTx@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.maybe'undo' @:: Lens' WatchTxResponse (Prelude.Maybe AnyChainTx)@
         * 'Proto.Utxorpc.V1alpha.Watch.Watch_Fields.undo' @:: Lens' WatchTxResponse AnyChainTx@ -}
data WatchTxResponse
  = WatchTxResponse'_constructor {_WatchTxResponse'action :: !(Prelude.Maybe WatchTxResponse'Action),
                                  _WatchTxResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WatchTxResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data WatchTxResponse'Action
  = WatchTxResponse'Apply !AnyChainTx |
    WatchTxResponse'Undo !AnyChainTx
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField WatchTxResponse "maybe'action" (Prelude.Maybe WatchTxResponse'Action) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WatchTxResponse'action
           (\ x__ y__ -> x__ {_WatchTxResponse'action = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WatchTxResponse "maybe'apply" (Prelude.Maybe AnyChainTx) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WatchTxResponse'action
           (\ x__ y__ -> x__ {_WatchTxResponse'action = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WatchTxResponse'Apply x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WatchTxResponse'Apply y__))
instance Data.ProtoLens.Field.HasField WatchTxResponse "apply" AnyChainTx where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WatchTxResponse'action
           (\ x__ y__ -> x__ {_WatchTxResponse'action = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WatchTxResponse'Apply x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WatchTxResponse'Apply y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WatchTxResponse "maybe'undo" (Prelude.Maybe AnyChainTx) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WatchTxResponse'action
           (\ x__ y__ -> x__ {_WatchTxResponse'action = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WatchTxResponse'Undo x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WatchTxResponse'Undo y__))
instance Data.ProtoLens.Field.HasField WatchTxResponse "undo" AnyChainTx where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WatchTxResponse'action
           (\ x__ y__ -> x__ {_WatchTxResponse'action = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WatchTxResponse'Undo x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WatchTxResponse'Undo y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message WatchTxResponse where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.watch.WatchTxResponse"
  packedMessageDescriptor _
    = "\n\
      \\SIWatchTxResponse\DC24\n\
      \\ENQapply\CAN\SOH \SOH(\v2\FS.utxorpc.v1alpha.watch.AnyChainTxH\NULR\ENQapply\DC22\n\
      \\EOTundo\CAN\STX \SOH(\v2\FS.utxorpc.v1alpha.watch.AnyChainTxH\NULR\EOTundoB\b\n\
      \\ACKaction"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        apply__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "apply"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AnyChainTx)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'apply")) ::
              Data.ProtoLens.FieldDescriptor WatchTxResponse
        undo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "undo"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AnyChainTx)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'undo")) ::
              Data.ProtoLens.FieldDescriptor WatchTxResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, apply__field_descriptor),
           (Data.ProtoLens.Tag 2, undo__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WatchTxResponse'_unknownFields
        (\ x__ y__ -> x__ {_WatchTxResponse'_unknownFields = y__})
  defMessage
    = WatchTxResponse'_constructor
        {_WatchTxResponse'action = Prelude.Nothing,
         _WatchTxResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WatchTxResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser WatchTxResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "apply"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"apply") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "undo"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"undo") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WatchTxResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'action") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (WatchTxResponse'Apply v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (WatchTxResponse'Undo v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData WatchTxResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WatchTxResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_WatchTxResponse'action x__) ())
instance Control.DeepSeq.NFData WatchTxResponse'Action where
  rnf (WatchTxResponse'Apply x__) = Control.DeepSeq.rnf x__
  rnf (WatchTxResponse'Undo x__) = Control.DeepSeq.rnf x__
_WatchTxResponse'Apply ::
  Data.ProtoLens.Prism.Prism' WatchTxResponse'Action AnyChainTx
_WatchTxResponse'Apply
  = Data.ProtoLens.Prism.prism'
      WatchTxResponse'Apply
      (\ p__
         -> case p__ of
              (WatchTxResponse'Apply p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WatchTxResponse'Undo ::
  Data.ProtoLens.Prism.Prism' WatchTxResponse'Action AnyChainTx
_WatchTxResponse'Undo
  = Data.ProtoLens.Prism.prism'
      WatchTxResponse'Undo
      (\ p__
         -> case p__ of
              (WatchTxResponse'Undo p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
data WatchService = WatchService {}
instance Data.ProtoLens.Service.Types.Service WatchService where
  type ServiceName WatchService = "WatchService"
  type ServicePackage WatchService = "utxorpc.v1alpha.watch"
  type ServiceMethods WatchService = '["watchTx"]
  packedServiceDescriptor _
    = "\n\
      \\fWatchService\DC2P\n\
      \\aWatchTx\DC2 .utxorpc.v1alpha.watch.WatchTxRequest\SUB!.utxorpc.v1alpha.watch.WatchTxResponse0\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl WatchService "watchTx" where
  type MethodName WatchService "watchTx" = "WatchTx"
  type MethodInput WatchService "watchTx" = WatchTxRequest
  type MethodOutput WatchService "watchTx" = WatchTxResponse
  type MethodStreamingType WatchService "watchTx" = 'Data.ProtoLens.Service.Types.ServerStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\FSutxorpc/v1/watch/watch.proto\DC2\DLEutxorpc.v1alpha.watch\SUB google/protobuf/field_mask.proto\SUB utxorpc/v1/cardano/cardano.proto\"W\n\
    \\DC1AnyChainTxPattern\DC29\n\
    \\acardano\CAN\SOH \SOH(\v2\GS.utxorpc.v1alpha.cardano.TxPatternH\NULR\acardanoB\a\n\
    \\ENQchain\"\229\SOH\n\
    \\vTxPredicate\DC29\n\
    \\ENQmatch\CAN\SOH \SOH(\v2#.utxorpc.v1alpha.watch.AnyChainTxPatternR\ENQmatch\DC2/\n\
    \\ETXnot\CAN\STX \ETX(\v2\GS.utxorpc.v1alpha.watch.TxPredicateR\ETXnot\DC24\n\
    \\ACKall_of\CAN\ETX \ETX(\v2\GS.utxorpc.v1alpha.watch.TxPredicateR\ENQallOf\DC24\n\
    \\ACKany_of\CAN\EOT \ETX(\v2\GS.utxorpc.v1alpha.watch.TxPredicateR\ENQanyOf\"\136\SOH\n\
    \\SOWatchTxRequest\DC2;\n\
    \\tpredicate\CAN\SOH \SOH(\v2\GS.utxorpc.v1alpha.watch.TxPredicateR\tpredicate\DC29\n\
    \\n\
    \field_mask\CAN\STX \SOH(\v2\SUB.google.protobuf.FieldMaskR\tfieldMask\"I\n\
    \\n\
    \AnyChainTx\DC22\n\
    \\acardano\CAN\SOH \SOH(\v2\SYN.utxorpc.v1alpha.cardano.TxH\NULR\acardanoB\a\n\
    \\ENQchain\"\133\SOH\n\
    \\SIWatchTxResponse\DC24\n\
    \\ENQapply\CAN\SOH \SOH(\v2\FS.utxorpc.v1alpha.watch.AnyChainTxH\NULR\ENQapply\DC22\n\
    \\EOTundo\CAN\STX \SOH(\v2\FS.utxorpc.v1alpha.watch.AnyChainTxH\NULR\EOTundoB\b\n\
    \\ACKaction2`\n\
    \\fWatchService\DC2P\n\
    \\aWatchTx\DC2 .utxorpc.v1alpha.watch.WatchTxRequest\SUB!.utxorpc.v1alpha.watch.WatchTxResponse0\SOHB\181\SOH\n\
    \\DC4com.utxorpc.v1alpha.watchB\n\
    \WatchProtoP\SOHZ/github.com/utxorpc/spec/gen/go/utxorpc/v1/watch\162\STX\ETXUVW\170\STX\DLEUtxorpc.V1alpha.Watch\202\STX\DLEUtxorpc\\V1\\Watch\226\STX\FSUtxorpc\\V1\\Watch\\GPBMetadata\234\STX\DC2Utxorpc::V1::WatchJ\150\SO\n\
    \\ACK\DC2\EOT\NUL\NUL.\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\EM\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL*\n\
    \D\n\
    \\STX\EOT\NUL\DC2\EOT\b\NUL\f\SOH\SUB8 Represents a tx pattern from any supported blockchain.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\b\b\EM\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\t\STX\v\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\t\b\r\n\
    \$\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\n\
    \\EOT-\"\ETB A Cardano tx pattern.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\n\
    \\EOT \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\n\
    \!(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\n\
    \+,\n\
    \]\n\
    \\STX\EOT\SOH\DC2\EOT\SI\NUL\DC4\SOH\SUBQ Represents a simple tx predicate that can composed to create more complext ones\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SI\b\DC3\n\
    \8\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DLE\STX\RS\"+ Predicate is true if tx exhibits pattern.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\DLE\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DLE\DC4\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DLE\FS\GS\n\
    \?\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\DC1\STX\US\"2 Predicate is true if tx doesn't exhibit pattern.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\DC1\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\DC1\ETB\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\DC1\GS\RS\n\
    \D\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\DC2\STX\"\"7 Predicate is true if tx exhibits all of the patterns.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX\DC2\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\DC2\ETB\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\DC2 !\n\
    \D\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DC3\STX\"\"7 Predicate is true if tx exhibits any of the patterns.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETX\DC3\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DC3\ETB\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DC3 !\n\
    \X\n\
    \\STX\EOT\STX\DC2\EOT\ETB\NUL\SUB\SOH\SUBL Request to watch transactions from the chain based on a set of predicates.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\ETB\b\SYN\n\
    \3\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\CAN\STX\FS\"& Predicate to filter transactions by.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX\CAN\STX\r\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\CAN\SO\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\CAN\SUB\ESC\n\
    \7\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\EM\STX+\"* Field mask to selectively return fields.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX\EM\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\EM\FS&\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\EM)*\n\
    \E\n\
    \\STX\EOT\ETX\DC2\EOT\GS\NUL!\SOH\SUB9 Represents a transaction from any supported blockchain.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\GS\b\DC2\n\
    \\f\n\
    \\EOT\EOT\ETX\b\NUL\DC2\EOT\RS\STX \ETX\n\
    \\f\n\
    \\ENQ\EOT\ETX\b\NUL\SOH\DC2\ETX\RS\b\r\n\
    \%\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\US\EOT&\"\CAN A Cardano transaction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX\US\EOT\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\US\SUB!\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\US$%\n\
    \B\n\
    \\STX\EOT\EOT\DC2\EOT$\NUL)\SOH\SUB6 Response containing the matching chain transactions.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX$\b\ETB\n\
    \\f\n\
    \\EOT\EOT\EOT\b\NUL\DC2\EOT%\STX(\ETX\n\
    \\f\n\
    \\ENQ\EOT\EOT\b\NUL\SOH\DC2\ETX%\b\SO\n\
    \&\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX&\EOT\EM\"\EM Apply this transaction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETX&\EOT\SO\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX&\SI\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX&\ETB\CAN\n\
    \%\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX'\EOT\CAN\"\CAN Undo this transaction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETX'\EOT\SO\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX'\SI\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX'\SYN\ETB\n\
    \O\n\
    \\STX\ACK\NUL\DC2\EOT,\NUL.\SOH\SUBC Service definition for watching transactions based on predicates.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX,\b\DC4\n\
    \T\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX-\STX?\"G Stream transactions from the chain matching the specified predicates.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX-\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX-\SO\FS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ACK\DC2\ETX-'-\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX-.=b\ACKproto3"