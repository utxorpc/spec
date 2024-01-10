{- This file was auto-generated from utxorpc/watch/v1/watch.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Utxorpc.Watch.V1.Watch (
        TxWatchService(..), AddressPredicate(), AnyChainTx(),
        AnyChainTx'Chain(..), _AnyChainTx'Cardano, AnyPredicate(),
        AnyPredicate'Type(..), _AnyPredicate'Address, _AnyPredicate'Asset,
        _AnyPredicate'Utxo, _AnyPredicate'Datum, AssetPredicate(),
        DatumPredicate(), UtxoPredicate(), WatchTxRequest(),
        WatchTxResponse(), WatchTxResponse'Action(..),
        _WatchTxResponse'Apply, _WatchTxResponse'Undo
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
import qualified Proto.Utxorpc.Cardano.V1.Cardano
{- | Fields :
     
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.matchSource' @:: Lens' AddressPredicate Data.ByteString.ByteString@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.matchTarget' @:: Lens' AddressPredicate Data.ByteString.ByteString@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.matchAny' @:: Lens' AddressPredicate Data.ByteString.ByteString@ -}
data AddressPredicate
  = AddressPredicate'_constructor {_AddressPredicate'matchSource :: !Data.ByteString.ByteString,
                                   _AddressPredicate'matchTarget :: !Data.ByteString.ByteString,
                                   _AddressPredicate'matchAny :: !Data.ByteString.ByteString,
                                   _AddressPredicate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AddressPredicate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AddressPredicate "matchSource" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AddressPredicate'matchSource
           (\ x__ y__ -> x__ {_AddressPredicate'matchSource = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AddressPredicate "matchTarget" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AddressPredicate'matchTarget
           (\ x__ y__ -> x__ {_AddressPredicate'matchTarget = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AddressPredicate "matchAny" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AddressPredicate'matchAny
           (\ x__ y__ -> x__ {_AddressPredicate'matchAny = y__}))
        Prelude.id
instance Data.ProtoLens.Message AddressPredicate where
  messageName _ = Data.Text.pack "utxorpc.watch.v1.AddressPredicate"
  packedMessageDescriptor _
    = "\n\
      \\DLEAddressPredicate\DC2!\n\
      \\fmatch_source\CAN\SOH \SOH(\fR\vmatchSource\DC2!\n\
      \\fmatch_target\CAN\STX \SOH(\fR\vmatchTarget\DC2\ESC\n\
      \\tmatch_any\CAN\ETX \SOH(\fR\bmatchAny"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        matchSource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match_source"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"matchSource")) ::
              Data.ProtoLens.FieldDescriptor AddressPredicate
        matchTarget__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match_target"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"matchTarget")) ::
              Data.ProtoLens.FieldDescriptor AddressPredicate
        matchAny__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match_any"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"matchAny")) ::
              Data.ProtoLens.FieldDescriptor AddressPredicate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, matchSource__field_descriptor),
           (Data.ProtoLens.Tag 2, matchTarget__field_descriptor),
           (Data.ProtoLens.Tag 3, matchAny__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AddressPredicate'_unknownFields
        (\ x__ y__ -> x__ {_AddressPredicate'_unknownFields = y__})
  defMessage
    = AddressPredicate'_constructor
        {_AddressPredicate'matchSource = Data.ProtoLens.fieldDefault,
         _AddressPredicate'matchTarget = Data.ProtoLens.fieldDefault,
         _AddressPredicate'matchAny = Data.ProtoLens.fieldDefault,
         _AddressPredicate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AddressPredicate
          -> Data.ProtoLens.Encoding.Bytes.Parser AddressPredicate
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "match_source"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"matchSource") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "match_target"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"matchTarget") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "match_any"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"matchAny") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AddressPredicate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"matchSource") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"matchTarget") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"matchAny") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData AddressPredicate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AddressPredicate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AddressPredicate'matchSource x__)
                (Control.DeepSeq.deepseq
                   (_AddressPredicate'matchTarget x__)
                   (Control.DeepSeq.deepseq (_AddressPredicate'matchAny x__) ())))
{- | Fields :
     
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.maybe'chain' @:: Lens' AnyChainTx (Prelude.Maybe AnyChainTx'Chain)@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.maybe'cardano' @:: Lens' AnyChainTx (Prelude.Maybe Proto.Utxorpc.Cardano.V1.Cardano.Tx)@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.cardano' @:: Lens' AnyChainTx Proto.Utxorpc.Cardano.V1.Cardano.Tx@ -}
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
  = AnyChainTx'Cardano !Proto.Utxorpc.Cardano.V1.Cardano.Tx
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField AnyChainTx "maybe'chain" (Prelude.Maybe AnyChainTx'Chain) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainTx'chain (\ x__ y__ -> x__ {_AnyChainTx'chain = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AnyChainTx "maybe'cardano" (Prelude.Maybe Proto.Utxorpc.Cardano.V1.Cardano.Tx) where
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
instance Data.ProtoLens.Field.HasField AnyChainTx "cardano" Proto.Utxorpc.Cardano.V1.Cardano.Tx where
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
  messageName _ = Data.Text.pack "utxorpc.watch.v1.AnyChainTx"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \AnyChainTx\DC22\n\
      \\acardano\CAN\SOH \SOH(\v2\SYN.utxorpc.cardano.v1.TxH\NULR\acardanoB\a\n\
      \\ENQchain"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cardano__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cardano"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Utxorpc.Cardano.V1.Cardano.Tx)
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
  Data.ProtoLens.Prism.Prism' AnyChainTx'Chain Proto.Utxorpc.Cardano.V1.Cardano.Tx
_AnyChainTx'Cardano
  = Data.ProtoLens.Prism.prism'
      AnyChainTx'Cardano
      (\ p__
         -> case p__ of (AnyChainTx'Cardano p__val) -> Prelude.Just p__val)
{- | Fields :
     
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.maybe'type'' @:: Lens' AnyPredicate (Prelude.Maybe AnyPredicate'Type)@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.maybe'address' @:: Lens' AnyPredicate (Prelude.Maybe AddressPredicate)@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.address' @:: Lens' AnyPredicate AddressPredicate@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.maybe'asset' @:: Lens' AnyPredicate (Prelude.Maybe AssetPredicate)@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.asset' @:: Lens' AnyPredicate AssetPredicate@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.maybe'utxo' @:: Lens' AnyPredicate (Prelude.Maybe UtxoPredicate)@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.utxo' @:: Lens' AnyPredicate UtxoPredicate@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.maybe'datum' @:: Lens' AnyPredicate (Prelude.Maybe DatumPredicate)@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.datum' @:: Lens' AnyPredicate DatumPredicate@ -}
data AnyPredicate
  = AnyPredicate'_constructor {_AnyPredicate'type' :: !(Prelude.Maybe AnyPredicate'Type),
                               _AnyPredicate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AnyPredicate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data AnyPredicate'Type
  = AnyPredicate'Address !AddressPredicate |
    AnyPredicate'Asset !AssetPredicate |
    AnyPredicate'Utxo !UtxoPredicate |
    AnyPredicate'Datum !DatumPredicate
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField AnyPredicate "maybe'type'" (Prelude.Maybe AnyPredicate'Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyPredicate'type' (\ x__ y__ -> x__ {_AnyPredicate'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AnyPredicate "maybe'address" (Prelude.Maybe AddressPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyPredicate'type' (\ x__ y__ -> x__ {_AnyPredicate'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AnyPredicate'Address x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AnyPredicate'Address y__))
instance Data.ProtoLens.Field.HasField AnyPredicate "address" AddressPredicate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyPredicate'type' (\ x__ y__ -> x__ {_AnyPredicate'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AnyPredicate'Address x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AnyPredicate'Address y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField AnyPredicate "maybe'asset" (Prelude.Maybe AssetPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyPredicate'type' (\ x__ y__ -> x__ {_AnyPredicate'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AnyPredicate'Asset x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AnyPredicate'Asset y__))
instance Data.ProtoLens.Field.HasField AnyPredicate "asset" AssetPredicate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyPredicate'type' (\ x__ y__ -> x__ {_AnyPredicate'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AnyPredicate'Asset x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AnyPredicate'Asset y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField AnyPredicate "maybe'utxo" (Prelude.Maybe UtxoPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyPredicate'type' (\ x__ y__ -> x__ {_AnyPredicate'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AnyPredicate'Utxo x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AnyPredicate'Utxo y__))
instance Data.ProtoLens.Field.HasField AnyPredicate "utxo" UtxoPredicate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyPredicate'type' (\ x__ y__ -> x__ {_AnyPredicate'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AnyPredicate'Utxo x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AnyPredicate'Utxo y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField AnyPredicate "maybe'datum" (Prelude.Maybe DatumPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyPredicate'type' (\ x__ y__ -> x__ {_AnyPredicate'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AnyPredicate'Datum x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AnyPredicate'Datum y__))
instance Data.ProtoLens.Field.HasField AnyPredicate "datum" DatumPredicate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyPredicate'type' (\ x__ y__ -> x__ {_AnyPredicate'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AnyPredicate'Datum x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AnyPredicate'Datum y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message AnyPredicate where
  messageName _ = Data.Text.pack "utxorpc.watch.v1.AnyPredicate"
  packedMessageDescriptor _
    = "\n\
      \\fAnyPredicate\DC2>\n\
      \\aaddress\CAN\SOH \SOH(\v2\".utxorpc.watch.v1.AddressPredicateH\NULR\aaddress\DC28\n\
      \\ENQasset\CAN\STX \SOH(\v2 .utxorpc.watch.v1.AssetPredicateH\NULR\ENQasset\DC25\n\
      \\EOTutxo\CAN\ETX \SOH(\v2\US.utxorpc.watch.v1.UtxoPredicateH\NULR\EOTutxo\DC28\n\
      \\ENQdatum\CAN\EOT \SOH(\v2 .utxorpc.watch.v1.DatumPredicateH\NULR\ENQdatumB\ACK\n\
      \\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AddressPredicate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'address")) ::
              Data.ProtoLens.FieldDescriptor AnyPredicate
        asset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "asset"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AssetPredicate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'asset")) ::
              Data.ProtoLens.FieldDescriptor AnyPredicate
        utxo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "utxo"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UtxoPredicate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'utxo")) ::
              Data.ProtoLens.FieldDescriptor AnyPredicate
        datum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "datum"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DatumPredicate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'datum")) ::
              Data.ProtoLens.FieldDescriptor AnyPredicate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, asset__field_descriptor),
           (Data.ProtoLens.Tag 3, utxo__field_descriptor),
           (Data.ProtoLens.Tag 4, datum__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AnyPredicate'_unknownFields
        (\ x__ y__ -> x__ {_AnyPredicate'_unknownFields = y__})
  defMessage
    = AnyPredicate'_constructor
        {_AnyPredicate'type' = Prelude.Nothing,
         _AnyPredicate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AnyPredicate -> Data.ProtoLens.Encoding.Bytes.Parser AnyPredicate
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
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "asset"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"asset") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "utxo"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"utxo") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "datum"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"datum") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AnyPredicate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (AnyPredicate'Address v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (AnyPredicate'Asset v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (AnyPredicate'Utxo v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (AnyPredicate'Datum v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData AnyPredicate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AnyPredicate'_unknownFields x__)
             (Control.DeepSeq.deepseq (_AnyPredicate'type' x__) ())
instance Control.DeepSeq.NFData AnyPredicate'Type where
  rnf (AnyPredicate'Address x__) = Control.DeepSeq.rnf x__
  rnf (AnyPredicate'Asset x__) = Control.DeepSeq.rnf x__
  rnf (AnyPredicate'Utxo x__) = Control.DeepSeq.rnf x__
  rnf (AnyPredicate'Datum x__) = Control.DeepSeq.rnf x__
_AnyPredicate'Address ::
  Data.ProtoLens.Prism.Prism' AnyPredicate'Type AddressPredicate
_AnyPredicate'Address
  = Data.ProtoLens.Prism.prism'
      AnyPredicate'Address
      (\ p__
         -> case p__ of
              (AnyPredicate'Address p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AnyPredicate'Asset ::
  Data.ProtoLens.Prism.Prism' AnyPredicate'Type AssetPredicate
_AnyPredicate'Asset
  = Data.ProtoLens.Prism.prism'
      AnyPredicate'Asset
      (\ p__
         -> case p__ of
              (AnyPredicate'Asset p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AnyPredicate'Utxo ::
  Data.ProtoLens.Prism.Prism' AnyPredicate'Type UtxoPredicate
_AnyPredicate'Utxo
  = Data.ProtoLens.Prism.prism'
      AnyPredicate'Utxo
      (\ p__
         -> case p__ of
              (AnyPredicate'Utxo p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AnyPredicate'Datum ::
  Data.ProtoLens.Prism.Prism' AnyPredicate'Type DatumPredicate
_AnyPredicate'Datum
  = Data.ProtoLens.Prism.prism'
      AnyPredicate'Datum
      (\ p__
         -> case p__ of
              (AnyPredicate'Datum p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.matchPolicy' @:: Lens' AssetPredicate Data.ByteString.ByteString@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.matchName' @:: Lens' AssetPredicate Data.ByteString.ByteString@ -}
data AssetPredicate
  = AssetPredicate'_constructor {_AssetPredicate'matchPolicy :: !Data.ByteString.ByteString,
                                 _AssetPredicate'matchName :: !Data.ByteString.ByteString,
                                 _AssetPredicate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AssetPredicate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AssetPredicate "matchPolicy" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AssetPredicate'matchPolicy
           (\ x__ y__ -> x__ {_AssetPredicate'matchPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AssetPredicate "matchName" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AssetPredicate'matchName
           (\ x__ y__ -> x__ {_AssetPredicate'matchName = y__}))
        Prelude.id
instance Data.ProtoLens.Message AssetPredicate where
  messageName _ = Data.Text.pack "utxorpc.watch.v1.AssetPredicate"
  packedMessageDescriptor _
    = "\n\
      \\SOAssetPredicate\DC2!\n\
      \\fmatch_policy\CAN\SOH \SOH(\fR\vmatchPolicy\DC2\GS\n\
      \\n\
      \match_name\CAN\STX \SOH(\fR\tmatchName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        matchPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match_policy"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"matchPolicy")) ::
              Data.ProtoLens.FieldDescriptor AssetPredicate
        matchName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"matchName")) ::
              Data.ProtoLens.FieldDescriptor AssetPredicate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, matchPolicy__field_descriptor),
           (Data.ProtoLens.Tag 2, matchName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AssetPredicate'_unknownFields
        (\ x__ y__ -> x__ {_AssetPredicate'_unknownFields = y__})
  defMessage
    = AssetPredicate'_constructor
        {_AssetPredicate'matchPolicy = Data.ProtoLens.fieldDefault,
         _AssetPredicate'matchName = Data.ProtoLens.fieldDefault,
         _AssetPredicate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AssetPredicate
          -> Data.ProtoLens.Encoding.Bytes.Parser AssetPredicate
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "match_policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"matchPolicy") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "match_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"matchName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AssetPredicate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"matchPolicy") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"matchName") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AssetPredicate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AssetPredicate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AssetPredicate'matchPolicy x__)
                (Control.DeepSeq.deepseq (_AssetPredicate'matchName x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.matchHash' @:: Lens' DatumPredicate Data.ByteString.ByteString@ -}
data DatumPredicate
  = DatumPredicate'_constructor {_DatumPredicate'matchHash :: !Data.ByteString.ByteString,
                                 _DatumPredicate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DatumPredicate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DatumPredicate "matchHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DatumPredicate'matchHash
           (\ x__ y__ -> x__ {_DatumPredicate'matchHash = y__}))
        Prelude.id
instance Data.ProtoLens.Message DatumPredicate where
  messageName _ = Data.Text.pack "utxorpc.watch.v1.DatumPredicate"
  packedMessageDescriptor _
    = "\n\
      \\SODatumPredicate\DC2\GS\n\
      \\n\
      \match_hash\CAN\SOH \SOH(\fR\tmatchHash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        matchHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"matchHash")) ::
              Data.ProtoLens.FieldDescriptor DatumPredicate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, matchHash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DatumPredicate'_unknownFields
        (\ x__ y__ -> x__ {_DatumPredicate'_unknownFields = y__})
  defMessage
    = DatumPredicate'_constructor
        {_DatumPredicate'matchHash = Data.ProtoLens.fieldDefault,
         _DatumPredicate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DatumPredicate
          -> Data.ProtoLens.Encoding.Bytes.Parser DatumPredicate
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "match_hash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"matchHash") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DatumPredicate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"matchHash") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DatumPredicate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DatumPredicate'_unknownFields x__)
             (Control.DeepSeq.deepseq (_DatumPredicate'matchHash x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.matchHash' @:: Lens' UtxoPredicate Data.ByteString.ByteString@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.matchIndex' @:: Lens' UtxoPredicate Data.Word.Word32@ -}
data UtxoPredicate
  = UtxoPredicate'_constructor {_UtxoPredicate'matchHash :: !Data.ByteString.ByteString,
                                _UtxoPredicate'matchIndex :: !Data.Word.Word32,
                                _UtxoPredicate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UtxoPredicate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UtxoPredicate "matchHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UtxoPredicate'matchHash
           (\ x__ y__ -> x__ {_UtxoPredicate'matchHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UtxoPredicate "matchIndex" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UtxoPredicate'matchIndex
           (\ x__ y__ -> x__ {_UtxoPredicate'matchIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Message UtxoPredicate where
  messageName _ = Data.Text.pack "utxorpc.watch.v1.UtxoPredicate"
  packedMessageDescriptor _
    = "\n\
      \\rUtxoPredicate\DC2\GS\n\
      \\n\
      \match_hash\CAN\SOH \SOH(\fR\tmatchHash\DC2\US\n\
      \\vmatch_index\CAN\STX \SOH(\rR\n\
      \matchIndex"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        matchHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"matchHash")) ::
              Data.ProtoLens.FieldDescriptor UtxoPredicate
        matchIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"matchIndex")) ::
              Data.ProtoLens.FieldDescriptor UtxoPredicate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, matchHash__field_descriptor),
           (Data.ProtoLens.Tag 2, matchIndex__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UtxoPredicate'_unknownFields
        (\ x__ y__ -> x__ {_UtxoPredicate'_unknownFields = y__})
  defMessage
    = UtxoPredicate'_constructor
        {_UtxoPredicate'matchHash = Data.ProtoLens.fieldDefault,
         _UtxoPredicate'matchIndex = Data.ProtoLens.fieldDefault,
         _UtxoPredicate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UtxoPredicate -> Data.ProtoLens.Encoding.Bytes.Parser UtxoPredicate
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "match_hash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"matchHash") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "match_index"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"matchIndex") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UtxoPredicate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"matchHash") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"matchIndex") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData UtxoPredicate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UtxoPredicate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UtxoPredicate'matchHash x__)
                (Control.DeepSeq.deepseq (_UtxoPredicate'matchIndex x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.predicate' @:: Lens' WatchTxRequest [AnyPredicate]@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.vec'predicate' @:: Lens' WatchTxRequest (Data.Vector.Vector AnyPredicate)@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.fieldMask' @:: Lens' WatchTxRequest Proto.Google.Protobuf.FieldMask.FieldMask@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.maybe'fieldMask' @:: Lens' WatchTxRequest (Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask)@ -}
data WatchTxRequest
  = WatchTxRequest'_constructor {_WatchTxRequest'predicate :: !(Data.Vector.Vector AnyPredicate),
                                 _WatchTxRequest'fieldMask :: !(Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask),
                                 _WatchTxRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WatchTxRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WatchTxRequest "predicate" [AnyPredicate] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WatchTxRequest'predicate
           (\ x__ y__ -> x__ {_WatchTxRequest'predicate = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WatchTxRequest "vec'predicate" (Data.Vector.Vector AnyPredicate) where
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
  messageName _ = Data.Text.pack "utxorpc.watch.v1.WatchTxRequest"
  packedMessageDescriptor _
    = "\n\
      \\SOWatchTxRequest\DC2<\n\
      \\tpredicate\CAN\SOH \ETX(\v2\RS.utxorpc.watch.v1.AnyPredicateR\tpredicate\DC29\n\
      \\n\
      \field_mask\CAN\STX \SOH(\v2\SUB.google.protobuf.FieldMaskR\tfieldMask"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        predicate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "predicate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AnyPredicate)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"predicate")) ::
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
        {_WatchTxRequest'predicate = Data.Vector.Generic.empty,
         _WatchTxRequest'fieldMask = Prelude.Nothing,
         _WatchTxRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WatchTxRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld AnyPredicate
             -> Data.ProtoLens.Encoding.Bytes.Parser WatchTxRequest
        loop x mutable'predicate
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'predicate <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'predicate)
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
                              (Data.ProtoLens.Field.field @"vec'predicate") frozen'predicate x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "predicate"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'predicate y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "field_mask"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fieldMask") y x)
                                  mutable'predicate
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'predicate
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'predicate <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'predicate)
          "WatchTxRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'predicate") _x))
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
     
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.maybe'action' @:: Lens' WatchTxResponse (Prelude.Maybe WatchTxResponse'Action)@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.maybe'apply' @:: Lens' WatchTxResponse (Prelude.Maybe AnyChainTx)@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.apply' @:: Lens' WatchTxResponse AnyChainTx@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.maybe'undo' @:: Lens' WatchTxResponse (Prelude.Maybe AnyChainTx)@
         * 'Proto.Utxorpc.Watch.V1.Watch_Fields.undo' @:: Lens' WatchTxResponse AnyChainTx@ -}
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
  messageName _ = Data.Text.pack "utxorpc.watch.v1.WatchTxResponse"
  packedMessageDescriptor _
    = "\n\
      \\SIWatchTxResponse\DC24\n\
      \\ENQapply\CAN\SOH \SOH(\v2\FS.utxorpc.watch.v1.AnyChainTxH\NULR\ENQapply\DC22\n\
      \\EOTundo\CAN\STX \SOH(\v2\FS.utxorpc.watch.v1.AnyChainTxH\NULR\EOTundoB\b\n\
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
data TxWatchService = TxWatchService {}
instance Data.ProtoLens.Service.Types.Service TxWatchService where
  type ServiceName TxWatchService = "TxWatchService"
  type ServicePackage TxWatchService = "utxorpc.watch.v1"
  type ServiceMethods TxWatchService = '["watchTx"]
  packedServiceDescriptor _
    = "\n\
      \\SOTxWatchService\DC2P\n\
      \\aWatchTx\DC2 .utxorpc.watch.v1.WatchTxRequest\SUB!.utxorpc.watch.v1.WatchTxResponse0\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl TxWatchService "watchTx" where
  type MethodName TxWatchService "watchTx" = "WatchTx"
  type MethodInput TxWatchService "watchTx" = WatchTxRequest
  type MethodOutput TxWatchService "watchTx" = WatchTxResponse
  type MethodStreamingType TxWatchService "watchTx" = 'Data.ProtoLens.Service.Types.ServerStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\FSutxorpc/watch/v1/watch.proto\DC2\DLEutxorpc.watch.v1\SUB google/protobuf/field_mask.proto\SUB utxorpc/cardano/v1/cardano.proto\"u\n\
    \\DLEAddressPredicate\DC2!\n\
    \\fmatch_source\CAN\SOH \SOH(\fR\vmatchSource\DC2!\n\
    \\fmatch_target\CAN\STX \SOH(\fR\vmatchTarget\DC2\ESC\n\
    \\tmatch_any\CAN\ETX \SOH(\fR\bmatchAny\"R\n\
    \\SOAssetPredicate\DC2!\n\
    \\fmatch_policy\CAN\SOH \SOH(\fR\vmatchPolicy\DC2\GS\n\
    \\n\
    \match_name\CAN\STX \SOH(\fR\tmatchName\"O\n\
    \\rUtxoPredicate\DC2\GS\n\
    \\n\
    \match_hash\CAN\SOH \SOH(\fR\tmatchHash\DC2\US\n\
    \\vmatch_index\CAN\STX \SOH(\rR\n\
    \matchIndex\"/\n\
    \\SODatumPredicate\DC2\GS\n\
    \\n\
    \match_hash\CAN\SOH \SOH(\fR\tmatchHash\"\129\STX\n\
    \\fAnyPredicate\DC2>\n\
    \\aaddress\CAN\SOH \SOH(\v2\".utxorpc.watch.v1.AddressPredicateH\NULR\aaddress\DC28\n\
    \\ENQasset\CAN\STX \SOH(\v2 .utxorpc.watch.v1.AssetPredicateH\NULR\ENQasset\DC25\n\
    \\EOTutxo\CAN\ETX \SOH(\v2\US.utxorpc.watch.v1.UtxoPredicateH\NULR\EOTutxo\DC28\n\
    \\ENQdatum\CAN\EOT \SOH(\v2 .utxorpc.watch.v1.DatumPredicateH\NULR\ENQdatumB\ACK\n\
    \\EOTtype\"\137\SOH\n\
    \\SOWatchTxRequest\DC2<\n\
    \\tpredicate\CAN\SOH \ETX(\v2\RS.utxorpc.watch.v1.AnyPredicateR\tpredicate\DC29\n\
    \\n\
    \field_mask\CAN\STX \SOH(\v2\SUB.google.protobuf.FieldMaskR\tfieldMask\"I\n\
    \\n\
    \AnyChainTx\DC22\n\
    \\acardano\CAN\SOH \SOH(\v2\SYN.utxorpc.cardano.v1.TxH\NULR\acardanoB\a\n\
    \\ENQchain\"\133\SOH\n\
    \\SIWatchTxResponse\DC24\n\
    \\ENQapply\CAN\SOH \SOH(\v2\FS.utxorpc.watch.v1.AnyChainTxH\NULR\ENQapply\DC22\n\
    \\EOTundo\CAN\STX \SOH(\v2\FS.utxorpc.watch.v1.AnyChainTxH\NULR\EOTundoB\b\n\
    \\ACKaction2b\n\
    \\SOTxWatchService\DC2P\n\
    \\aWatchTx\DC2 .utxorpc.watch.v1.WatchTxRequest\SUB!.utxorpc.watch.v1.WatchTxResponse0\SOHB\191\SOH\n\
    \\DC4com.utxorpc.watch.v1B\n\
    \WatchProtoP\SOHZ9github.com/bufbuild/buf-tour/gen/utxorpc/watch/v1;watchv1\162\STX\ETXUWX\170\STX\DLEUtxorpc.Watch.V1\202\STX\DLEUtxorpc\\Watch\\V1\226\STX\FSUtxorpc\\Watch\\V1\\GPBMetadata\234\STX\DC2Utxorpc::Watch::V1J\248\DC4\n\
    \\ACK\DC2\EOT\NUL\NULA\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\EM\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL*\n\
    \A\n\
    \\STX\EOT\NUL\DC2\EOT\b\NUL\f\SOH\SUB5 Predicate to match transactions based on addresses.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\b\b\CAN\n\
    \D\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\t\STX\EM\"7 Match transactions with the specified source address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\t\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\t\b\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\t\ETB\CAN\n\
    \D\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\n\
    \\STX\EM\"7 Match transactions with the specified target address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\n\
    \\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\n\
    \\b\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\n\
    \\ETB\CAN\n\
    \X\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\v\STX\SYN\"K Match transactions with the specified address as either source or target.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\v\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\v\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\v\DC4\NAK\n\
    \>\n\
    \\STX\EOT\SOH\DC2\EOT\SI\NUL\DC2\SOH\SUB2 Predicate to match transactions based on assets.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SI\b\SYN\n\
    \B\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DLE\STX\EM\"5 Match transactions with the specified asset policy.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\DLE\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DLE\b\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DLE\ETB\CAN\n\
    \@\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\DC1\STX\ETB\"3 Match transactions with the specified asset name.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\DC1\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\DC1\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\DC1\NAK\SYN\n\
    \=\n\
    \\STX\EOT\STX\DC2\EOT\NAK\NUL\CAN\SOH\SUB1 Predicate to match transactions based on UTXOs.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\NAK\b\NAK\n\
    \?\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\SYN\STX\ETB\"2 Match transactions with the specified UTXO hash.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\SYN\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\SYN\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\SYN\NAK\SYN\n\
    \@\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\ETB\STX\EM\"3 Match transactions with the specified UTXO index.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\ETB\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\ETB\ETB\CAN\n\
    \>\n\
    \\STX\EOT\ETX\DC2\EOT\ESC\NUL\GS\SOH\SUB2 Predicate to match transactions based on datums.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\ESC\b\SYN\n\
    \@\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\FS\STX\ETB\"3 Match transactions with the specified datum hash.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\FS\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\FS\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\FS\NAK\SYN\n\
    \R\n\
    \\STX\EOT\EOT\DC2\EOT \NUL'\SOH\SUBF Predicate to match transactions based on any of the specified types.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX \b\DC4\n\
    \\f\n\
    \\EOT\EOT\EOT\b\NUL\DC2\EOT!\STX&\ETX\n\
    \\f\n\
    \\ENQ\EOT\EOT\b\NUL\SOH\DC2\ETX!\b\f\n\
    \'\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX\"\EOT!\"\SUB Address-based predicate.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETX\"\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX\"\NAK\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX\"\US \n\
    \%\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX#\EOT\GS\"\CAN Asset-based predicate.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETX#\EOT\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX#\DC3\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX#\ESC\FS\n\
    \$\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX$\EOT\ESC\"\ETB UTXO-based predicate.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\ETX$\EOT\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX$\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX$\EM\SUB\n\
    \%\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX%\EOT\GS\"\CAN Datum-based predicate.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ACK\DC2\ETX%\EOT\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX%\DC3\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX%\ESC\FS\n\
    \I\n\
    \\STX\EOT\ENQ\DC2\EOT*\NUL-\SOH\SUB= Request to watch transactions based on a set of predicates.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX*\b\SYN\n\
    \9\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX+\STX&\", List of predicates to filter transactions.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX+\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETX+\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX+\CAN!\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX+$%\n\
    \7\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX,\STX+\"* Field mask to selectively return fields.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\ETX,\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX,\FS&\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX,)*\n\
    \E\n\
    \\STX\EOT\ACK\DC2\EOT0\NUL4\SOH\SUB9 Represents a transaction from any supported blockchain.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX0\b\DC2\n\
    \\f\n\
    \\EOT\EOT\ACK\b\NUL\DC2\EOT1\STX3\ETX\n\
    \\f\n\
    \\ENQ\EOT\ACK\b\NUL\SOH\DC2\ETX1\b\r\n\
    \%\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX2\EOT&\"\CAN A Cardano transaction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\ETX2\EOT\EM\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX2\SUB!\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX2$%\n\
    \<\n\
    \\STX\EOT\a\DC2\EOT7\NUL<\SOH\SUB0 Response containing the matching transactions.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX7\b\ETB\n\
    \\f\n\
    \\EOT\EOT\a\b\NUL\DC2\EOT8\STX;\ETX\n\
    \\f\n\
    \\ENQ\EOT\a\b\NUL\SOH\DC2\ETX8\b\SO\n\
    \&\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX9\EOT\EM\"\EM Apply this transaction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\ETX9\EOT\SO\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX9\SI\DC4\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX9\ETB\CAN\n\
    \%\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETX:\EOT\CAN\"\CAN Undo this transaction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\ETX:\EOT\SO\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETX:\SI\DC3\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETX:\SYN\ETB\n\
    \O\n\
    \\STX\ACK\NUL\DC2\EOT?\NULA\SOH\SUBC Service definition for watching transactions based on predicates.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX?\b\SYN\n\
    \E\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX@\STX?\"8 Stream transactions matching the specified predicates.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX@\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX@\SO\FS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ACK\DC2\ETX@'-\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX@.=b\ACKproto3"