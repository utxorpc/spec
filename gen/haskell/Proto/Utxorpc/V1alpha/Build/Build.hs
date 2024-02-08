{- This file was auto-generated from utxorpc/v1/build/build.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Utxorpc.V1alpha.Build.Build (
        LedgerStateService(..), AnyChainUtxo(), AnyChainUtxo'Chain(..),
        _AnyChainUtxo'Cardano, ChainParam(), ChainPoint(),
        GetChainParamRequest(), GetChainParamResponse(),
        GetChainTipRequest(), GetChainTipResponse(),
        GetUtxoByAddressRequest(), GetUtxoByAddressResponse(),
        GetUtxoByRefRequest(), GetUtxoByRefResponse(), HoldUtxoRequest(),
        HoldUtxoResponse(), UtxoRef()
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
     
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.maybe'chain' @:: Lens' AnyChainUtxo (Prelude.Maybe AnyChainUtxo'Chain)@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.maybe'cardano' @:: Lens' AnyChainUtxo (Prelude.Maybe Proto.Utxorpc.V1alpha.Cardano.Cardano.TxOutput)@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.cardano' @:: Lens' AnyChainUtxo Proto.Utxorpc.V1alpha.Cardano.Cardano.TxOutput@ -}
data AnyChainUtxo
  = AnyChainUtxo'_constructor {_AnyChainUtxo'chain :: !(Prelude.Maybe AnyChainUtxo'Chain),
                               _AnyChainUtxo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AnyChainUtxo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data AnyChainUtxo'Chain
  = AnyChainUtxo'Cardano !Proto.Utxorpc.V1alpha.Cardano.Cardano.TxOutput
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField AnyChainUtxo "maybe'chain" (Prelude.Maybe AnyChainUtxo'Chain) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainUtxo'chain (\ x__ y__ -> x__ {_AnyChainUtxo'chain = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AnyChainUtxo "maybe'cardano" (Prelude.Maybe Proto.Utxorpc.V1alpha.Cardano.Cardano.TxOutput) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainUtxo'chain (\ x__ y__ -> x__ {_AnyChainUtxo'chain = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AnyChainUtxo'Cardano x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AnyChainUtxo'Cardano y__))
instance Data.ProtoLens.Field.HasField AnyChainUtxo "cardano" Proto.Utxorpc.V1alpha.Cardano.Cardano.TxOutput where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainUtxo'chain (\ x__ y__ -> x__ {_AnyChainUtxo'chain = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AnyChainUtxo'Cardano x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AnyChainUtxo'Cardano y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message AnyChainUtxo where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.build.AnyChainUtxo"
  packedMessageDescriptor _
    = "\n\
      \\fAnyChainUtxo\DC28\n\
      \\acardano\CAN\SOH \SOH(\v2\FS.utxorpc.v1alpha.cardano.TxOutputH\NULR\acardanoB\a\n\
      \\ENQchain"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cardano__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cardano"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Utxorpc.V1alpha.Cardano.Cardano.TxOutput)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cardano")) ::
              Data.ProtoLens.FieldDescriptor AnyChainUtxo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cardano__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AnyChainUtxo'_unknownFields
        (\ x__ y__ -> x__ {_AnyChainUtxo'_unknownFields = y__})
  defMessage
    = AnyChainUtxo'_constructor
        {_AnyChainUtxo'chain = Prelude.Nothing,
         _AnyChainUtxo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AnyChainUtxo -> Data.ProtoLens.Encoding.Bytes.Parser AnyChainUtxo
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
          (do loop Data.ProtoLens.defMessage) "AnyChainUtxo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'chain") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (AnyChainUtxo'Cardano v))
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
instance Control.DeepSeq.NFData AnyChainUtxo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AnyChainUtxo'_unknownFields x__)
             (Control.DeepSeq.deepseq (_AnyChainUtxo'chain x__) ())
instance Control.DeepSeq.NFData AnyChainUtxo'Chain where
  rnf (AnyChainUtxo'Cardano x__) = Control.DeepSeq.rnf x__
_AnyChainUtxo'Cardano ::
  Data.ProtoLens.Prism.Prism' AnyChainUtxo'Chain Proto.Utxorpc.V1alpha.Cardano.Cardano.TxOutput
_AnyChainUtxo'Cardano
  = Data.ProtoLens.Prism.prism'
      AnyChainUtxo'Cardano
      (\ p__
         -> case p__ of
              (AnyChainUtxo'Cardano p__val) -> Prelude.Just p__val)
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.key' @:: Lens' ChainParam Data.Text.Text@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.value' @:: Lens' ChainParam Data.ByteString.ByteString@ -}
data ChainParam
  = ChainParam'_constructor {_ChainParam'key :: !Data.Text.Text,
                             _ChainParam'value :: !Data.ByteString.ByteString,
                             _ChainParam'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ChainParam where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ChainParam "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChainParam'key (\ x__ y__ -> x__ {_ChainParam'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ChainParam "value" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChainParam'value (\ x__ y__ -> x__ {_ChainParam'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ChainParam where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.build.ChainParam"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \ChainParam\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\fR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor ChainParam
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor ChainParam
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ChainParam'_unknownFields
        (\ x__ y__ -> x__ {_ChainParam'_unknownFields = y__})
  defMessage
    = ChainParam'_constructor
        {_ChainParam'key = Data.ProtoLens.fieldDefault,
         _ChainParam'value = Data.ProtoLens.fieldDefault,
         _ChainParam'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ChainParam -> Data.ProtoLens.Encoding.Bytes.Parser ChainParam
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
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ChainParam"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
instance Control.DeepSeq.NFData ChainParam where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ChainParam'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ChainParam'key x__)
                (Control.DeepSeq.deepseq (_ChainParam'value x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.slot' @:: Lens' ChainPoint Data.Word.Word64@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.height' @:: Lens' ChainPoint Data.Word.Word64@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.hash' @:: Lens' ChainPoint Data.ByteString.ByteString@ -}
data ChainPoint
  = ChainPoint'_constructor {_ChainPoint'slot :: !Data.Word.Word64,
                             _ChainPoint'height :: !Data.Word.Word64,
                             _ChainPoint'hash :: !Data.ByteString.ByteString,
                             _ChainPoint'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ChainPoint where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ChainPoint "slot" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChainPoint'slot (\ x__ y__ -> x__ {_ChainPoint'slot = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ChainPoint "height" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChainPoint'height (\ x__ y__ -> x__ {_ChainPoint'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ChainPoint "hash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChainPoint'hash (\ x__ y__ -> x__ {_ChainPoint'hash = y__}))
        Prelude.id
instance Data.ProtoLens.Message ChainPoint where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.build.ChainPoint"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \ChainPoint\DC2\DC2\n\
      \\EOTslot\CAN\SOH \SOH(\EOTR\EOTslot\DC2\SYN\n\
      \\ACKheight\CAN\STX \SOH(\EOTR\ACKheight\DC2\DC2\n\
      \\EOThash\CAN\ETX \SOH(\fR\EOThash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        slot__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "slot"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"slot")) ::
              Data.ProtoLens.FieldDescriptor ChainPoint
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor ChainPoint
        hash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"hash")) ::
              Data.ProtoLens.FieldDescriptor ChainPoint
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, slot__field_descriptor),
           (Data.ProtoLens.Tag 2, height__field_descriptor),
           (Data.ProtoLens.Tag 3, hash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ChainPoint'_unknownFields
        (\ x__ y__ -> x__ {_ChainPoint'_unknownFields = y__})
  defMessage
    = ChainPoint'_constructor
        {_ChainPoint'slot = Data.ProtoLens.fieldDefault,
         _ChainPoint'height = Data.ProtoLens.fieldDefault,
         _ChainPoint'hash = Data.ProtoLens.fieldDefault,
         _ChainPoint'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ChainPoint -> Data.ProtoLens.Encoding.Bytes.Parser ChainPoint
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "slot"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"slot") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ChainPoint"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"slot") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hash") _x
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
instance Control.DeepSeq.NFData ChainPoint where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ChainPoint'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ChainPoint'slot x__)
                (Control.DeepSeq.deepseq
                   (_ChainPoint'height x__)
                   (Control.DeepSeq.deepseq (_ChainPoint'hash x__) ())))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.param' @:: Lens' GetChainParamRequest [Data.Text.Text]@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.vec'param' @:: Lens' GetChainParamRequest (Data.Vector.Vector Data.Text.Text)@ -}
data GetChainParamRequest
  = GetChainParamRequest'_constructor {_GetChainParamRequest'param :: !(Data.Vector.Vector Data.Text.Text),
                                       _GetChainParamRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetChainParamRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetChainParamRequest "param" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetChainParamRequest'param
           (\ x__ y__ -> x__ {_GetChainParamRequest'param = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GetChainParamRequest "vec'param" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetChainParamRequest'param
           (\ x__ y__ -> x__ {_GetChainParamRequest'param = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetChainParamRequest where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.build.GetChainParamRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC4GetChainParamRequest\DC2\DC4\n\
      \\ENQparam\CAN\SOH \ETX(\tR\ENQparam"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        param__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "param"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"param")) ::
              Data.ProtoLens.FieldDescriptor GetChainParamRequest
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, param__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetChainParamRequest'_unknownFields
        (\ x__ y__ -> x__ {_GetChainParamRequest'_unknownFields = y__})
  defMessage
    = GetChainParamRequest'_constructor
        {_GetChainParamRequest'param = Data.Vector.Generic.empty,
         _GetChainParamRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetChainParamRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser GetChainParamRequest
        loop x mutable'param
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'param <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'param)
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
                              (Data.ProtoLens.Field.field @"vec'param") frozen'param x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getText
                                              (Prelude.fromIntegral len))
                                        "param"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'param y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'param
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'param <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'param)
          "GetChainParamRequest"
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
                           Data.Text.Encoding.encodeUtf8 _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'param") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GetChainParamRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetChainParamRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GetChainParamRequest'param x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.param' @:: Lens' GetChainParamResponse [ChainParam]@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.vec'param' @:: Lens' GetChainParamResponse (Data.Vector.Vector ChainParam)@ -}
data GetChainParamResponse
  = GetChainParamResponse'_constructor {_GetChainParamResponse'param :: !(Data.Vector.Vector ChainParam),
                                        _GetChainParamResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetChainParamResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetChainParamResponse "param" [ChainParam] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetChainParamResponse'param
           (\ x__ y__ -> x__ {_GetChainParamResponse'param = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GetChainParamResponse "vec'param" (Data.Vector.Vector ChainParam) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetChainParamResponse'param
           (\ x__ y__ -> x__ {_GetChainParamResponse'param = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetChainParamResponse where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.build.GetChainParamResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKGetChainParamResponse\DC22\n\
      \\ENQparam\CAN\SOH \ETX(\v2\FS.utxorpc.v1alpha.build.ChainParamR\ENQparam"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        param__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "param"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ChainParam)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"param")) ::
              Data.ProtoLens.FieldDescriptor GetChainParamResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, param__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetChainParamResponse'_unknownFields
        (\ x__ y__ -> x__ {_GetChainParamResponse'_unknownFields = y__})
  defMessage
    = GetChainParamResponse'_constructor
        {_GetChainParamResponse'param = Data.Vector.Generic.empty,
         _GetChainParamResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetChainParamResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ChainParam
             -> Data.ProtoLens.Encoding.Bytes.Parser GetChainParamResponse
        loop x mutable'param
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'param <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'param)
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
                              (Data.ProtoLens.Field.field @"vec'param") frozen'param x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "param"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'param y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'param
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'param <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'param)
          "GetChainParamResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'param") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GetChainParamResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetChainParamResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GetChainParamResponse'param x__) ())
{- | Fields :
      -}
data GetChainTipRequest
  = GetChainTipRequest'_constructor {_GetChainTipRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetChainTipRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message GetChainTipRequest where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.build.GetChainTipRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC2GetChainTipRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetChainTipRequest'_unknownFields
        (\ x__ y__ -> x__ {_GetChainTipRequest'_unknownFields = y__})
  defMessage
    = GetChainTipRequest'_constructor
        {_GetChainTipRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetChainTipRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser GetChainTipRequest
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GetChainTipRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData GetChainTipRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetChainTipRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.tip' @:: Lens' GetChainTipResponse ChainPoint@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.maybe'tip' @:: Lens' GetChainTipResponse (Prelude.Maybe ChainPoint)@ -}
data GetChainTipResponse
  = GetChainTipResponse'_constructor {_GetChainTipResponse'tip :: !(Prelude.Maybe ChainPoint),
                                      _GetChainTipResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetChainTipResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetChainTipResponse "tip" ChainPoint where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetChainTipResponse'tip
           (\ x__ y__ -> x__ {_GetChainTipResponse'tip = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetChainTipResponse "maybe'tip" (Prelude.Maybe ChainPoint) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetChainTipResponse'tip
           (\ x__ y__ -> x__ {_GetChainTipResponse'tip = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetChainTipResponse where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.build.GetChainTipResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3GetChainTipResponse\DC2.\n\
      \\ETXtip\CAN\SOH \SOH(\v2\FS.utxorpc.v1alpha.build.ChainPointR\ETXtip"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tip__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tip"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ChainPoint)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tip")) ::
              Data.ProtoLens.FieldDescriptor GetChainTipResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, tip__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetChainTipResponse'_unknownFields
        (\ x__ y__ -> x__ {_GetChainTipResponse'_unknownFields = y__})
  defMessage
    = GetChainTipResponse'_constructor
        {_GetChainTipResponse'tip = Prelude.Nothing,
         _GetChainTipResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetChainTipResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser GetChainTipResponse
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
                                       "tip"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tip") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GetChainTipResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tip") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GetChainTipResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetChainTipResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GetChainTipResponse'tip x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.address' @:: Lens' GetUtxoByAddressRequest [Data.ByteString.ByteString]@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.vec'address' @:: Lens' GetUtxoByAddressRequest (Data.Vector.Vector Data.ByteString.ByteString)@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.acquirePoint' @:: Lens' GetUtxoByAddressRequest ChainPoint@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.maybe'acquirePoint' @:: Lens' GetUtxoByAddressRequest (Prelude.Maybe ChainPoint)@ -}
data GetUtxoByAddressRequest
  = GetUtxoByAddressRequest'_constructor {_GetUtxoByAddressRequest'address :: !(Data.Vector.Vector Data.ByteString.ByteString),
                                          _GetUtxoByAddressRequest'acquirePoint :: !(Prelude.Maybe ChainPoint),
                                          _GetUtxoByAddressRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetUtxoByAddressRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetUtxoByAddressRequest "address" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetUtxoByAddressRequest'address
           (\ x__ y__ -> x__ {_GetUtxoByAddressRequest'address = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GetUtxoByAddressRequest "vec'address" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetUtxoByAddressRequest'address
           (\ x__ y__ -> x__ {_GetUtxoByAddressRequest'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetUtxoByAddressRequest "acquirePoint" ChainPoint where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetUtxoByAddressRequest'acquirePoint
           (\ x__ y__ -> x__ {_GetUtxoByAddressRequest'acquirePoint = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetUtxoByAddressRequest "maybe'acquirePoint" (Prelude.Maybe ChainPoint) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetUtxoByAddressRequest'acquirePoint
           (\ x__ y__ -> x__ {_GetUtxoByAddressRequest'acquirePoint = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetUtxoByAddressRequest where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.build.GetUtxoByAddressRequest"
  packedMessageDescriptor _
    = "\n\
      \\ETBGetUtxoByAddressRequest\DC2\CAN\n\
      \\aaddress\CAN\SOH \ETX(\fR\aaddress\DC2A\n\
      \\racquire_point\CAN\STX \SOH(\v2\FS.utxorpc.v1alpha.build.ChainPointR\facquirePoint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor GetUtxoByAddressRequest
        acquirePoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "acquire_point"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ChainPoint)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'acquirePoint")) ::
              Data.ProtoLens.FieldDescriptor GetUtxoByAddressRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, acquirePoint__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetUtxoByAddressRequest'_unknownFields
        (\ x__ y__ -> x__ {_GetUtxoByAddressRequest'_unknownFields = y__})
  defMessage
    = GetUtxoByAddressRequest'_constructor
        {_GetUtxoByAddressRequest'address = Data.Vector.Generic.empty,
         _GetUtxoByAddressRequest'acquirePoint = Prelude.Nothing,
         _GetUtxoByAddressRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetUtxoByAddressRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Bytes.Parser GetUtxoByAddressRequest
        loop x mutable'address
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'address <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'address)
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
                              (Data.ProtoLens.Field.field @"vec'address") frozen'address x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "address"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'address y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "acquire_point"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"acquirePoint") y x)
                                  mutable'address
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'address
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'address <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'address)
          "GetUtxoByAddressRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'address") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'acquirePoint") _x
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
instance Control.DeepSeq.NFData GetUtxoByAddressRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetUtxoByAddressRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetUtxoByAddressRequest'address x__)
                (Control.DeepSeq.deepseq
                   (_GetUtxoByAddressRequest'acquirePoint x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.items' @:: Lens' GetUtxoByAddressResponse [AnyChainUtxo]@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.vec'items' @:: Lens' GetUtxoByAddressResponse (Data.Vector.Vector AnyChainUtxo)@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.nextToken' @:: Lens' GetUtxoByAddressResponse Data.Text.Text@ -}
data GetUtxoByAddressResponse
  = GetUtxoByAddressResponse'_constructor {_GetUtxoByAddressResponse'items :: !(Data.Vector.Vector AnyChainUtxo),
                                           _GetUtxoByAddressResponse'nextToken :: !Data.Text.Text,
                                           _GetUtxoByAddressResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetUtxoByAddressResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetUtxoByAddressResponse "items" [AnyChainUtxo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetUtxoByAddressResponse'items
           (\ x__ y__ -> x__ {_GetUtxoByAddressResponse'items = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GetUtxoByAddressResponse "vec'items" (Data.Vector.Vector AnyChainUtxo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetUtxoByAddressResponse'items
           (\ x__ y__ -> x__ {_GetUtxoByAddressResponse'items = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetUtxoByAddressResponse "nextToken" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetUtxoByAddressResponse'nextToken
           (\ x__ y__ -> x__ {_GetUtxoByAddressResponse'nextToken = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetUtxoByAddressResponse where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.build.GetUtxoByAddressResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANGetUtxoByAddressResponse\DC24\n\
      \\ENQitems\CAN\SOH \ETX(\v2\RS.utxorpc.v1alpha.build.AnyChainUtxoR\ENQitems\DC2\GS\n\
      \\n\
      \next_token\CAN\STX \SOH(\tR\tnextToken"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        items__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "items"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AnyChainUtxo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"items")) ::
              Data.ProtoLens.FieldDescriptor GetUtxoByAddressResponse
        nextToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "next_token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"nextToken")) ::
              Data.ProtoLens.FieldDescriptor GetUtxoByAddressResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, items__field_descriptor),
           (Data.ProtoLens.Tag 2, nextToken__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetUtxoByAddressResponse'_unknownFields
        (\ x__ y__ -> x__ {_GetUtxoByAddressResponse'_unknownFields = y__})
  defMessage
    = GetUtxoByAddressResponse'_constructor
        {_GetUtxoByAddressResponse'items = Data.Vector.Generic.empty,
         _GetUtxoByAddressResponse'nextToken = Data.ProtoLens.fieldDefault,
         _GetUtxoByAddressResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetUtxoByAddressResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld AnyChainUtxo
             -> Data.ProtoLens.Encoding.Bytes.Parser GetUtxoByAddressResponse
        loop x mutable'items
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'items)
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
                              (Data.ProtoLens.Field.field @"vec'items") frozen'items x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "items"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'items y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "next_token"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nextToken") y x)
                                  mutable'items
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'items
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'items)
          "GetUtxoByAddressResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'items") _x))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"nextToken") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData GetUtxoByAddressResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetUtxoByAddressResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetUtxoByAddressResponse'items x__)
                (Control.DeepSeq.deepseq
                   (_GetUtxoByAddressResponse'nextToken x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.ref' @:: Lens' GetUtxoByRefRequest [UtxoRef]@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.vec'ref' @:: Lens' GetUtxoByRefRequest (Data.Vector.Vector UtxoRef)@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.acquirePoint' @:: Lens' GetUtxoByRefRequest ChainPoint@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.maybe'acquirePoint' @:: Lens' GetUtxoByRefRequest (Prelude.Maybe ChainPoint)@ -}
data GetUtxoByRefRequest
  = GetUtxoByRefRequest'_constructor {_GetUtxoByRefRequest'ref :: !(Data.Vector.Vector UtxoRef),
                                      _GetUtxoByRefRequest'acquirePoint :: !(Prelude.Maybe ChainPoint),
                                      _GetUtxoByRefRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetUtxoByRefRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetUtxoByRefRequest "ref" [UtxoRef] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetUtxoByRefRequest'ref
           (\ x__ y__ -> x__ {_GetUtxoByRefRequest'ref = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GetUtxoByRefRequest "vec'ref" (Data.Vector.Vector UtxoRef) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetUtxoByRefRequest'ref
           (\ x__ y__ -> x__ {_GetUtxoByRefRequest'ref = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetUtxoByRefRequest "acquirePoint" ChainPoint where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetUtxoByRefRequest'acquirePoint
           (\ x__ y__ -> x__ {_GetUtxoByRefRequest'acquirePoint = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetUtxoByRefRequest "maybe'acquirePoint" (Prelude.Maybe ChainPoint) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetUtxoByRefRequest'acquirePoint
           (\ x__ y__ -> x__ {_GetUtxoByRefRequest'acquirePoint = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetUtxoByRefRequest where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.build.GetUtxoByRefRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC3GetUtxoByRefRequest\DC2+\n\
      \\ETXref\CAN\SOH \ETX(\v2\EM.utxorpc.v1alpha.build.UtxoRefR\ETXref\DC2A\n\
      \\racquire_point\CAN\STX \SOH(\v2\FS.utxorpc.v1alpha.build.ChainPointR\facquirePoint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ref__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ref"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UtxoRef)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"ref")) ::
              Data.ProtoLens.FieldDescriptor GetUtxoByRefRequest
        acquirePoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "acquire_point"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ChainPoint)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'acquirePoint")) ::
              Data.ProtoLens.FieldDescriptor GetUtxoByRefRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ref__field_descriptor),
           (Data.ProtoLens.Tag 2, acquirePoint__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetUtxoByRefRequest'_unknownFields
        (\ x__ y__ -> x__ {_GetUtxoByRefRequest'_unknownFields = y__})
  defMessage
    = GetUtxoByRefRequest'_constructor
        {_GetUtxoByRefRequest'ref = Data.Vector.Generic.empty,
         _GetUtxoByRefRequest'acquirePoint = Prelude.Nothing,
         _GetUtxoByRefRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetUtxoByRefRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld UtxoRef
             -> Data.ProtoLens.Encoding.Bytes.Parser GetUtxoByRefRequest
        loop x mutable'ref
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'ref <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'ref)
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
                              (Data.ProtoLens.Field.field @"vec'ref") frozen'ref x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "ref"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'ref y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "acquire_point"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"acquirePoint") y x)
                                  mutable'ref
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'ref
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'ref <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'ref)
          "GetUtxoByRefRequest"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'ref") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'acquirePoint") _x
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
instance Control.DeepSeq.NFData GetUtxoByRefRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetUtxoByRefRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetUtxoByRefRequest'ref x__)
                (Control.DeepSeq.deepseq
                   (_GetUtxoByRefRequest'acquirePoint x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.items' @:: Lens' GetUtxoByRefResponse [AnyChainUtxo]@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.vec'items' @:: Lens' GetUtxoByRefResponse (Data.Vector.Vector AnyChainUtxo)@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.nextToken' @:: Lens' GetUtxoByRefResponse Data.Text.Text@ -}
data GetUtxoByRefResponse
  = GetUtxoByRefResponse'_constructor {_GetUtxoByRefResponse'items :: !(Data.Vector.Vector AnyChainUtxo),
                                       _GetUtxoByRefResponse'nextToken :: !Data.Text.Text,
                                       _GetUtxoByRefResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetUtxoByRefResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetUtxoByRefResponse "items" [AnyChainUtxo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetUtxoByRefResponse'items
           (\ x__ y__ -> x__ {_GetUtxoByRefResponse'items = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GetUtxoByRefResponse "vec'items" (Data.Vector.Vector AnyChainUtxo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetUtxoByRefResponse'items
           (\ x__ y__ -> x__ {_GetUtxoByRefResponse'items = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetUtxoByRefResponse "nextToken" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetUtxoByRefResponse'nextToken
           (\ x__ y__ -> x__ {_GetUtxoByRefResponse'nextToken = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetUtxoByRefResponse where
  messageName _
    = Data.Text.pack "utxorpc.v1alpha.build.GetUtxoByRefResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4GetUtxoByRefResponse\DC24\n\
      \\ENQitems\CAN\SOH \ETX(\v2\RS.utxorpc.v1alpha.build.AnyChainUtxoR\ENQitems\DC2\GS\n\
      \\n\
      \next_token\CAN\STX \SOH(\tR\tnextToken"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        items__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "items"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AnyChainUtxo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"items")) ::
              Data.ProtoLens.FieldDescriptor GetUtxoByRefResponse
        nextToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "next_token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"nextToken")) ::
              Data.ProtoLens.FieldDescriptor GetUtxoByRefResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, items__field_descriptor),
           (Data.ProtoLens.Tag 2, nextToken__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetUtxoByRefResponse'_unknownFields
        (\ x__ y__ -> x__ {_GetUtxoByRefResponse'_unknownFields = y__})
  defMessage
    = GetUtxoByRefResponse'_constructor
        {_GetUtxoByRefResponse'items = Data.Vector.Generic.empty,
         _GetUtxoByRefResponse'nextToken = Data.ProtoLens.fieldDefault,
         _GetUtxoByRefResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetUtxoByRefResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld AnyChainUtxo
             -> Data.ProtoLens.Encoding.Bytes.Parser GetUtxoByRefResponse
        loop x mutable'items
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'items)
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
                              (Data.ProtoLens.Field.field @"vec'items") frozen'items x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "items"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'items y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "next_token"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nextToken") y x)
                                  mutable'items
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'items
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'items)
          "GetUtxoByRefResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'items") _x))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"nextToken") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData GetUtxoByRefResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetUtxoByRefResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetUtxoByRefResponse'items x__)
                (Control.DeepSeq.deepseq (_GetUtxoByRefResponse'nextToken x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.refs' @:: Lens' HoldUtxoRequest [UtxoRef]@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.vec'refs' @:: Lens' HoldUtxoRequest (Data.Vector.Vector UtxoRef)@ -}
data HoldUtxoRequest
  = HoldUtxoRequest'_constructor {_HoldUtxoRequest'refs :: !(Data.Vector.Vector UtxoRef),
                                  _HoldUtxoRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HoldUtxoRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HoldUtxoRequest "refs" [UtxoRef] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HoldUtxoRequest'refs
           (\ x__ y__ -> x__ {_HoldUtxoRequest'refs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HoldUtxoRequest "vec'refs" (Data.Vector.Vector UtxoRef) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HoldUtxoRequest'refs
           (\ x__ y__ -> x__ {_HoldUtxoRequest'refs = y__}))
        Prelude.id
instance Data.ProtoLens.Message HoldUtxoRequest where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.build.HoldUtxoRequest"
  packedMessageDescriptor _
    = "\n\
      \\SIHoldUtxoRequest\DC2-\n\
      \\EOTrefs\CAN\SOH \ETX(\v2\EM.utxorpc.v1alpha.build.UtxoRefR\EOTrefs"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        refs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "refs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UtxoRef)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"refs")) ::
              Data.ProtoLens.FieldDescriptor HoldUtxoRequest
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, refs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HoldUtxoRequest'_unknownFields
        (\ x__ y__ -> x__ {_HoldUtxoRequest'_unknownFields = y__})
  defMessage
    = HoldUtxoRequest'_constructor
        {_HoldUtxoRequest'refs = Data.Vector.Generic.empty,
         _HoldUtxoRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HoldUtxoRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld UtxoRef
             -> Data.ProtoLens.Encoding.Bytes.Parser HoldUtxoRequest
        loop x mutable'refs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'refs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'refs)
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
                              (Data.ProtoLens.Field.field @"vec'refs") frozen'refs x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "refs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'refs y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'refs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'refs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'refs)
          "HoldUtxoRequest"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'refs") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HoldUtxoRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HoldUtxoRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_HoldUtxoRequest'refs x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.lost' @:: Lens' HoldUtxoResponse [UtxoRef]@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.vec'lost' @:: Lens' HoldUtxoResponse (Data.Vector.Vector UtxoRef)@ -}
data HoldUtxoResponse
  = HoldUtxoResponse'_constructor {_HoldUtxoResponse'lost :: !(Data.Vector.Vector UtxoRef),
                                   _HoldUtxoResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HoldUtxoResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HoldUtxoResponse "lost" [UtxoRef] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HoldUtxoResponse'lost
           (\ x__ y__ -> x__ {_HoldUtxoResponse'lost = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HoldUtxoResponse "vec'lost" (Data.Vector.Vector UtxoRef) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HoldUtxoResponse'lost
           (\ x__ y__ -> x__ {_HoldUtxoResponse'lost = y__}))
        Prelude.id
instance Data.ProtoLens.Message HoldUtxoResponse where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.build.HoldUtxoResponse"
  packedMessageDescriptor _
    = "\n\
      \\DLEHoldUtxoResponse\DC2-\n\
      \\EOTlost\CAN\SOH \ETX(\v2\EM.utxorpc.v1alpha.build.UtxoRefR\EOTlost"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        lost__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lost"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UtxoRef)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"lost")) ::
              Data.ProtoLens.FieldDescriptor HoldUtxoResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, lost__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HoldUtxoResponse'_unknownFields
        (\ x__ y__ -> x__ {_HoldUtxoResponse'_unknownFields = y__})
  defMessage
    = HoldUtxoResponse'_constructor
        {_HoldUtxoResponse'lost = Data.Vector.Generic.empty,
         _HoldUtxoResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HoldUtxoResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld UtxoRef
             -> Data.ProtoLens.Encoding.Bytes.Parser HoldUtxoResponse
        loop x mutable'lost
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'lost <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'lost)
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
                              (Data.ProtoLens.Field.field @"vec'lost") frozen'lost x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "lost"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'lost y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'lost
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'lost <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'lost)
          "HoldUtxoResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'lost") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HoldUtxoResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HoldUtxoResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_HoldUtxoResponse'lost x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.hash' @:: Lens' UtxoRef Data.ByteString.ByteString@
         * 'Proto.Utxorpc.V1alpha.Build.Build_Fields.index' @:: Lens' UtxoRef Data.Word.Word32@ -}
data UtxoRef
  = UtxoRef'_constructor {_UtxoRef'hash :: !Data.ByteString.ByteString,
                          _UtxoRef'index :: !Data.Word.Word32,
                          _UtxoRef'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UtxoRef where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UtxoRef "hash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UtxoRef'hash (\ x__ y__ -> x__ {_UtxoRef'hash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UtxoRef "index" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UtxoRef'index (\ x__ y__ -> x__ {_UtxoRef'index = y__}))
        Prelude.id
instance Data.ProtoLens.Message UtxoRef where
  messageName _ = Data.Text.pack "utxorpc.v1alpha.build.UtxoRef"
  packedMessageDescriptor _
    = "\n\
      \\aUtxoRef\DC2\DC2\n\
      \\EOThash\CAN\SOH \SOH(\fR\EOThash\DC2\DC4\n\
      \\ENQindex\CAN\STX \SOH(\rR\ENQindex"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        hash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"hash")) ::
              Data.ProtoLens.FieldDescriptor UtxoRef
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor UtxoRef
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, hash__field_descriptor),
           (Data.ProtoLens.Tag 2, index__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UtxoRef'_unknownFields
        (\ x__ y__ -> x__ {_UtxoRef'_unknownFields = y__})
  defMessage
    = UtxoRef'_constructor
        {_UtxoRef'hash = Data.ProtoLens.fieldDefault,
         _UtxoRef'index = Data.ProtoLens.fieldDefault,
         _UtxoRef'_unknownFields = []}
  parseMessage
    = let
        loop :: UtxoRef -> Data.ProtoLens.Encoding.Bytes.Parser UtxoRef
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
                                       "hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UtxoRef"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hash") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
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
instance Control.DeepSeq.NFData UtxoRef where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UtxoRef'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UtxoRef'hash x__)
                (Control.DeepSeq.deepseq (_UtxoRef'index x__) ()))
data LedgerStateService = LedgerStateService {}
instance Data.ProtoLens.Service.Types.Service LedgerStateService where
  type ServiceName LedgerStateService = "LedgerStateService"
  type ServicePackage LedgerStateService = "utxorpc.v1alpha.build"
  type ServiceMethods LedgerStateService = '["getChainParam",
                                             "getChainTip",
                                             "getUtxoByAddress",
                                             "getUtxoByRef",
                                             "holdUtxo"]
  packedServiceDescriptor _
    = "\n\
      \\DC2LedgerStateService\DC2Z\n\
      \\vGetChainTip\DC2$.utxorpc.v1alpha.build.GetChainTipRequest\SUB%.utxorpc.v1alpha.build.GetChainTipResponse\DC2`\n\
      \\rGetChainParam\DC2&.utxorpc.v1alpha.build.GetChainParamRequest\SUB'.utxorpc.v1alpha.build.GetChainParamResponse\DC2i\n\
      \\DLEGetUtxoByAddress\DC2).utxorpc.v1alpha.build.GetUtxoByAddressRequest\SUB*.utxorpc.v1alpha.build.GetUtxoByAddressResponse\DC2]\n\
      \\fGetUtxoByRef\DC2%.utxorpc.v1alpha.build.GetUtxoByRefRequest\SUB&.utxorpc.v1alpha.build.GetUtxoByRefResponse\DC2S\n\
      \\bHoldUtxo\DC2!.utxorpc.v1alpha.build.HoldUtxoRequest\SUB\".utxorpc.v1alpha.build.HoldUtxoResponse0\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl LedgerStateService "getChainTip" where
  type MethodName LedgerStateService "getChainTip" = "GetChainTip"
  type MethodInput LedgerStateService "getChainTip" = GetChainTipRequest
  type MethodOutput LedgerStateService "getChainTip" = GetChainTipResponse
  type MethodStreamingType LedgerStateService "getChainTip" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl LedgerStateService "getChainParam" where
  type MethodName LedgerStateService "getChainParam" = "GetChainParam"
  type MethodInput LedgerStateService "getChainParam" = GetChainParamRequest
  type MethodOutput LedgerStateService "getChainParam" = GetChainParamResponse
  type MethodStreamingType LedgerStateService "getChainParam" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl LedgerStateService "getUtxoByAddress" where
  type MethodName LedgerStateService "getUtxoByAddress" = "GetUtxoByAddress"
  type MethodInput LedgerStateService "getUtxoByAddress" = GetUtxoByAddressRequest
  type MethodOutput LedgerStateService "getUtxoByAddress" = GetUtxoByAddressResponse
  type MethodStreamingType LedgerStateService "getUtxoByAddress" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl LedgerStateService "getUtxoByRef" where
  type MethodName LedgerStateService "getUtxoByRef" = "GetUtxoByRef"
  type MethodInput LedgerStateService "getUtxoByRef" = GetUtxoByRefRequest
  type MethodOutput LedgerStateService "getUtxoByRef" = GetUtxoByRefResponse
  type MethodStreamingType LedgerStateService "getUtxoByRef" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl LedgerStateService "holdUtxo" where
  type MethodName LedgerStateService "holdUtxo" = "HoldUtxo"
  type MethodInput LedgerStateService "holdUtxo" = HoldUtxoRequest
  type MethodOutput LedgerStateService "holdUtxo" = HoldUtxoResponse
  type MethodStreamingType LedgerStateService "holdUtxo" = 'Data.ProtoLens.Service.Types.ServerStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\FSutxorpc/v1/build/build.proto\DC2\DLEutxorpc.v1alpha.build\SUB google/protobuf/field_mask.proto\SUB utxorpc/v1/cardano/cardano.proto\"L\n\
    \\n\
    \ChainPoint\DC2\DC2\n\
    \\EOTslot\CAN\SOH \SOH(\EOTR\EOTslot\DC2\SYN\n\
    \\ACKheight\CAN\STX \SOH(\EOTR\ACKheight\DC2\DC2\n\
    \\EOThash\CAN\ETX \SOH(\fR\EOThash\"\DC4\n\
    \\DC2GetChainTipRequest\"E\n\
    \\DC3GetChainTipResponse\DC2.\n\
    \\ETXtip\CAN\SOH \SOH(\v2\FS.utxorpc.v1alpha.build.ChainPointR\ETXtip\",\n\
    \\DC4GetChainParamRequest\DC2\DC4\n\
    \\ENQparam\CAN\SOH \ETX(\tR\ENQparam\"4\n\
    \\n\
    \ChainParam\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\fR\ENQvalue\"K\n\
    \\NAKGetChainParamResponse\DC22\n\
    \\ENQparam\CAN\SOH \ETX(\v2\FS.utxorpc.v1alpha.build.ChainParamR\ENQparam\"v\n\
    \\ETBGetUtxoByAddressRequest\DC2\CAN\n\
    \\aaddress\CAN\SOH \ETX(\fR\aaddress\DC2A\n\
    \\racquire_point\CAN\STX \SOH(\v2\FS.utxorpc.v1alpha.build.ChainPointR\facquirePoint\"Q\n\
    \\fAnyChainUtxo\DC28\n\
    \\acardano\CAN\SOH \SOH(\v2\FS.utxorpc.v1alpha.cardano.TxOutputH\NULR\acardanoB\a\n\
    \\ENQchain\"o\n\
    \\CANGetUtxoByAddressResponse\DC24\n\
    \\ENQitems\CAN\SOH \ETX(\v2\RS.utxorpc.v1alpha.build.AnyChainUtxoR\ENQitems\DC2\GS\n\
    \\n\
    \next_token\CAN\STX \SOH(\tR\tnextToken\"3\n\
    \\aUtxoRef\DC2\DC2\n\
    \\EOThash\CAN\SOH \SOH(\fR\EOThash\DC2\DC4\n\
    \\ENQindex\CAN\STX \SOH(\rR\ENQindex\"\133\SOH\n\
    \\DC3GetUtxoByRefRequest\DC2+\n\
    \\ETXref\CAN\SOH \ETX(\v2\EM.utxorpc.v1alpha.build.UtxoRefR\ETXref\DC2A\n\
    \\racquire_point\CAN\STX \SOH(\v2\FS.utxorpc.v1alpha.build.ChainPointR\facquirePoint\"k\n\
    \\DC4GetUtxoByRefResponse\DC24\n\
    \\ENQitems\CAN\SOH \ETX(\v2\RS.utxorpc.v1alpha.build.AnyChainUtxoR\ENQitems\DC2\GS\n\
    \\n\
    \next_token\CAN\STX \SOH(\tR\tnextToken\"@\n\
    \\SIHoldUtxoRequest\DC2-\n\
    \\EOTrefs\CAN\SOH \ETX(\v2\EM.utxorpc.v1alpha.build.UtxoRefR\EOTrefs\"A\n\
    \\DLEHoldUtxoResponse\DC2-\n\
    \\EOTlost\CAN\SOH \ETX(\v2\EM.utxorpc.v1alpha.build.UtxoRefR\EOTlost2\241\ETX\n\
    \\DC2LedgerStateService\DC2Z\n\
    \\vGetChainTip\DC2$.utxorpc.v1alpha.build.GetChainTipRequest\SUB%.utxorpc.v1alpha.build.GetChainTipResponse\DC2`\n\
    \\rGetChainParam\DC2&.utxorpc.v1alpha.build.GetChainParamRequest\SUB'.utxorpc.v1alpha.build.GetChainParamResponse\DC2i\n\
    \\DLEGetUtxoByAddress\DC2).utxorpc.v1alpha.build.GetUtxoByAddressRequest\SUB*.utxorpc.v1alpha.build.GetUtxoByAddressResponse\DC2]\n\
    \\fGetUtxoByRef\DC2%.utxorpc.v1alpha.build.GetUtxoByRefRequest\SUB&.utxorpc.v1alpha.build.GetUtxoByRefResponse\DC2S\n\
    \\bHoldUtxo\DC2!.utxorpc.v1alpha.build.HoldUtxoRequest\SUB\".utxorpc.v1alpha.build.HoldUtxoResponse0\SOHB\181\SOH\n\
    \\DC4com.utxorpc.v1alpha.buildB\n\
    \BuildProtoP\SOHZ/github.com/utxorpc/spec/gen/go/utxorpc/v1/build\162\STX\ETXUVB\170\STX\DLEUtxorpc.V1alpha.Build\202\STX\DLEUtxorpc\\V1\\Build\226\STX\FSUtxorpc\\V1\\Build\\GPBMetadata\234\STX\DC2Utxorpc::V1::BuildJ\202\ESC\n\
    \\ACK\DC2\EOT\STX\NUL^\SOH\n\
    \9\n\
    \\SOH\f\DC2\ETX\STX\NUL\DC22// A consistent view of the state of the ledger\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\EOT\NUL\EM\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ACK\NUL*\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\a\NUL*\n\
    \<\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL\SO\SOH\SUB0 Represents a specific point in the blockchain.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\DC2\n\
    \\ESC\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\v\STX\DC2\"\SO Slot number.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\v\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\v\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\v\DLE\DC1\n\
    \\FS\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\f\STX\DC4\"\SI Block height.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\f\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\f\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\f\DC2\DC3\n\
    \\SUB\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\r\STX\DC1\"\r Block hash.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\r\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\r\b\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\r\SI\DLE\n\
    \2\n\
    \\STX\EOT\SOH\DC2\ETX\DC1\NUL\GS\SUB' Request to get the current chain tip.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC1\b\SUB\n\
    \8\n\
    \\STX\EOT\STX\DC2\EOT\DC4\NUL\SYN\SOH\SUB, Response containing the current chain tip.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\DC4\b\ESC\n\
    \!\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\NAK\STX\NAK\"\DC4 Current chain tip.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX\NAK\STX\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\NAK\r\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\NAK\DC3\DC4\n\
    \7\n\
    \\STX\EOT\ETX\DC2\EOT\EM\NUL\ESC\SOH\SUB+ Request to get specific chain parameters.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\EM\b\FS\n\
    \,\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\SUB\STX\FS\"\US List of requested parameters.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\SUB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\SUB\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\SUB\SUB\ESC\n\
    \@\n\
    \\STX\EOT\EOT\DC2\EOT\RS\NUL!\SOH\SUB4 Represents a key-value pair for a chain parameter.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX\RS\b\DC2\n\
    \\GS\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX\US\STX\DC1\"\DLE Parameter key.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX\US\t\f\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX\US\SI\DLE\n\
    \\US\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX \STX\DC2\"\DC2 Parameter value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX \STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX \b\r\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX \DLE\DC1\n\
    \A\n\
    \\STX\EOT\ENQ\DC2\EOT$\NUL&\SOH\SUB5 Response containing the requested chain parameters.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX$\b\GS\n\
    \2\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX%\STX \"% List of requested chain parameters.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETX%\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX%\SYN\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX%\RS\US\n\
    \A\n\
    \\STX\EOT\ACK\DC2\EOT)\NUL,\SOH\SUB5 Request to get UTxOs by their associated addresses.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX)\b\US\n\
    \*\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX*\STX\GS\"\GS List of addresses to query.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX*\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX*\DC1\CAN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX*\ESC\FS\n\
    \0\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX+\STX\US\"# Point in the chain to query from.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\ETX+\STX\f\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX+\r\SUB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX+\GS\RS\n\
    \J\n\
    \\STX\EOT\a\DC2\EOT/\NUL3\SOH\SUB> An evenlope that holds an UTxO from any of compatible chains\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX/\b\DC4\n\
    \\f\n\
    \\EOT\EOT\a\b\NUL\DC2\EOT0\STX2\ETX\n\
    \\f\n\
    \\ENQ\EOT\a\b\NUL\SOH\DC2\ETX0\b\r\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX1\EOT,\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\ETX1\EOT\US\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX1 '\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX1*+\n\
    \T\n\
    \\STX\EOT\b\DC2\EOT6\NUL9\SOH\SUBH Response containing the UTxOs associated with the requested addresses.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETX6\b \n\
    \\GS\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETX7\STX\"\"\DLE List of UTxOs.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\ETX7\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\ETX7\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETX7\CAN\GS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETX7 !\n\
    \$\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETX8\STX\CAN\"\ETB Token for pagination.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\ETX8\STX\b\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETX8\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETX8\SYN\ETB\n\
    \/\n\
    \\STX\EOT\t\DC2\EOT<\NUL?\SOH\SUB# Represents a reference to a UTxO.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETX<\b\SI\n\
    \ \n\
    \\EOT\EOT\t\STX\NUL\DC2\ETX=\STX\DC1\"\DC3 Transaction hash.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETX=\STX\a\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETX=\b\f\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETX=\SI\DLE\n\
    \\FS\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETX>\STX\DC3\"\SI Output index.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\ETX>\STX\b\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETX>\t\SO\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETX>\DC1\DC2\n\
    \7\n\
    \\STX\EOT\n\
    \\DC2\EOTB\NULE\SOH\SUB+ Request to get UTxOs by their references.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETXB\b\ESC\n\
    \0\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETXC\STX\ESC\"# List of UTxO references to query.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\EOT\DC2\ETXC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ACK\DC2\ETXC\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETXC\DC3\SYN\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETXC\EM\SUB\n\
    \0\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\ETXD\STX\US\"# Point in the chain to query from.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ACK\DC2\ETXD\STX\f\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\ETXD\r\SUB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\ETXD\GS\RS\n\
    \U\n\
    \\STX\EOT\v\DC2\EOTH\NULK\SOH\SUBI Response containing the UTxOs associated with the requested references.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\v\SOH\DC2\ETXH\b\FS\n\
    \\GS\n\
    \\EOT\EOT\v\STX\NUL\DC2\ETXI\STX\"\"\DLE List of UTxOs.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\EOT\DC2\ETXI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\ETXI\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\ETXI\CAN\GS\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\ETXI !\n\
    \$\n\
    \\EOT\EOT\v\STX\SOH\DC2\ETXJ\STX\CAN\"\ETB Token for pagination.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\ETXJ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\ETXJ\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\ETXJ\SYN\ETB\n\
    \$\n\
    \\STX\EOT\f\DC2\EOTN\NULP\SOH\SUB\CAN Request to hold UTxOs.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\f\SOH\DC2\ETXN\b\ETB\n\
    \/\n\
    \\EOT\EOT\f\STX\NUL\DC2\ETXO\STX\FS\"\" List of UTxO references to hold.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\EOT\DC2\ETXO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ACK\DC2\ETXO\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\ETXO\DC3\ETB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\ETXO\SUB\ESC\n\
    \?\n\
    \\STX\EOT\r\DC2\EOTS\NULU\SOH\SUB3 Response containing information about lost UTxOs.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\r\SOH\DC2\ETXS\b\CAN\n\
    \,\n\
    \\EOT\EOT\r\STX\NUL\DC2\ETXT\STX\FS\"\US List of lost UTxO references.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\EOT\DC2\ETXT\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ACK\DC2\ETXT\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\ETXT\DC3\ETB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\ETXT\SUB\ESC\n\
    \F\n\
    \\STX\ACK\NUL\DC2\EOTX\NUL^\SOH\SUB: Service definition for querying the state of the ledger.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETXX\b\SUB\n\
    \)\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETXY\STXD\"\FS Get the current chain tip.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETXY\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETXY\DC2$\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETXY/B\n\
    \-\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETXZ\STXJ\"  Get specific chain parameters.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETXZ\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETXZ\DC4(\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETXZ3H\n\
    \7\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX[\STXS\"* Get UTxOs by their associated addresses.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX[\ACK\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX[\ETB.\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX[9Q\n\
    \-\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\ETX\\\STXG\"  Get UTxOs by their references.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\\\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\\\DC3&\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\\1E\n\
    \>\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\ETX]\STXB\"1 Hold UTxOs and receive updates about lost UTxOs\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX]\ACK\SO\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX]\SI\RS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ACK\DC2\ETX])/\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX]0@b\ACKproto3"