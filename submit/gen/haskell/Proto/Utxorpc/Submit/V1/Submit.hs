{- This file was auto-generated from utxorpc/submit/v1/submit.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Utxorpc.Submit.V1.Submit (
        SubmitService(..), AnyChainTx(), AnyChainTx'Type(..),
        _AnyChainTx'Raw, AnyChainTxPattern(), AnyChainTxPattern'Chain(..),
        _AnyChainTxPattern'Cardano, ReadMempoolRequest(),
        ReadMempoolResponse(), Stage(..), Stage(), Stage'UnrecognizedValue,
        SubmitTxRequest(), SubmitTxResponse(), TxInMempool(),
        TxPredicate(), WaitForTxRequest(), WaitForTxResponse(),
        WatchMempoolRequest(), WatchMempoolResponse()
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
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.maybe'type'' @:: Lens' AnyChainTx (Prelude.Maybe AnyChainTx'Type)@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.maybe'raw' @:: Lens' AnyChainTx (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.raw' @:: Lens' AnyChainTx Data.ByteString.ByteString@ -}
data AnyChainTx
  = AnyChainTx'_constructor {_AnyChainTx'type' :: !(Prelude.Maybe AnyChainTx'Type),
                             _AnyChainTx'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AnyChainTx where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data AnyChainTx'Type
  = AnyChainTx'Raw !Data.ByteString.ByteString
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField AnyChainTx "maybe'type'" (Prelude.Maybe AnyChainTx'Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainTx'type' (\ x__ y__ -> x__ {_AnyChainTx'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AnyChainTx "maybe'raw" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainTx'type' (\ x__ y__ -> x__ {_AnyChainTx'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AnyChainTx'Raw x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AnyChainTx'Raw y__))
instance Data.ProtoLens.Field.HasField AnyChainTx "raw" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainTx'type' (\ x__ y__ -> x__ {_AnyChainTx'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AnyChainTx'Raw x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AnyChainTx'Raw y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message AnyChainTx where
  messageName _ = Data.Text.pack "utxorpc.submit.v1.AnyChainTx"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \AnyChainTx\DC2\DC2\n\
      \\ETXraw\CAN\SOH \SOH(\fH\NULR\ETXrawB\ACK\n\
      \\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        raw__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "raw"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'raw")) ::
              Data.ProtoLens.FieldDescriptor AnyChainTx
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, raw__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AnyChainTx'_unknownFields
        (\ x__ y__ -> x__ {_AnyChainTx'_unknownFields = y__})
  defMessage
    = AnyChainTx'_constructor
        {_AnyChainTx'type' = Prelude.Nothing,
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "raw"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"raw") y x)
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
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (AnyChainTx'Raw v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData AnyChainTx where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AnyChainTx'_unknownFields x__)
             (Control.DeepSeq.deepseq (_AnyChainTx'type' x__) ())
instance Control.DeepSeq.NFData AnyChainTx'Type where
  rnf (AnyChainTx'Raw x__) = Control.DeepSeq.rnf x__
_AnyChainTx'Raw ::
  Data.ProtoLens.Prism.Prism' AnyChainTx'Type Data.ByteString.ByteString
_AnyChainTx'Raw
  = Data.ProtoLens.Prism.prism'
      AnyChainTx'Raw
      (\ p__
         -> case p__ of (AnyChainTx'Raw p__val) -> Prelude.Just p__val)
{- | Fields :
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.maybe'chain' @:: Lens' AnyChainTxPattern (Prelude.Maybe AnyChainTxPattern'Chain)@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.maybe'cardano' @:: Lens' AnyChainTxPattern (Prelude.Maybe Proto.Utxorpc.Cardano.V1.Cardano.TxPattern)@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.cardano' @:: Lens' AnyChainTxPattern Proto.Utxorpc.Cardano.V1.Cardano.TxPattern@ -}
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
  = AnyChainTxPattern'Cardano !Proto.Utxorpc.Cardano.V1.Cardano.TxPattern
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField AnyChainTxPattern "maybe'chain" (Prelude.Maybe AnyChainTxPattern'Chain) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainTxPattern'chain
           (\ x__ y__ -> x__ {_AnyChainTxPattern'chain = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AnyChainTxPattern "maybe'cardano" (Prelude.Maybe Proto.Utxorpc.Cardano.V1.Cardano.TxPattern) where
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
instance Data.ProtoLens.Field.HasField AnyChainTxPattern "cardano" Proto.Utxorpc.Cardano.V1.Cardano.TxPattern where
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
  messageName _
    = Data.Text.pack "utxorpc.submit.v1.AnyChainTxPattern"
  packedMessageDescriptor _
    = "\n\
      \\DC1AnyChainTxPattern\DC29\n\
      \\acardano\CAN\SOH \SOH(\v2\GS.utxorpc.cardano.v1.TxPatternH\NULR\acardanoB\a\n\
      \\ENQchain"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cardano__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cardano"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Utxorpc.Cardano.V1.Cardano.TxPattern)
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
  Data.ProtoLens.Prism.Prism' AnyChainTxPattern'Chain Proto.Utxorpc.Cardano.V1.Cardano.TxPattern
_AnyChainTxPattern'Cardano
  = Data.ProtoLens.Prism.prism'
      AnyChainTxPattern'Cardano
      (\ p__
         -> case p__ of
              (AnyChainTxPattern'Cardano p__val) -> Prelude.Just p__val)
{- | Fields :
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.txs' @:: Lens' ReadMempoolRequest [TxInMempool]@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.vec'txs' @:: Lens' ReadMempoolRequest (Data.Vector.Vector TxInMempool)@ -}
data ReadMempoolRequest
  = ReadMempoolRequest'_constructor {_ReadMempoolRequest'txs :: !(Data.Vector.Vector TxInMempool),
                                     _ReadMempoolRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReadMempoolRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ReadMempoolRequest "txs" [TxInMempool] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadMempoolRequest'txs
           (\ x__ y__ -> x__ {_ReadMempoolRequest'txs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ReadMempoolRequest "vec'txs" (Data.Vector.Vector TxInMempool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadMempoolRequest'txs
           (\ x__ y__ -> x__ {_ReadMempoolRequest'txs = y__}))
        Prelude.id
instance Data.ProtoLens.Message ReadMempoolRequest where
  messageName _
    = Data.Text.pack "utxorpc.submit.v1.ReadMempoolRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC2ReadMempoolRequest\DC20\n\
      \\ETXtxs\CAN\SOH \ETX(\v2\RS.utxorpc.submit.v1.TxInMempoolR\ETXtxs"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        txs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "txs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TxInMempool)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"txs")) ::
              Data.ProtoLens.FieldDescriptor ReadMempoolRequest
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, txs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReadMempoolRequest'_unknownFields
        (\ x__ y__ -> x__ {_ReadMempoolRequest'_unknownFields = y__})
  defMessage
    = ReadMempoolRequest'_constructor
        {_ReadMempoolRequest'txs = Data.Vector.Generic.empty,
         _ReadMempoolRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ReadMempoolRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld TxInMempool
             -> Data.ProtoLens.Encoding.Bytes.Parser ReadMempoolRequest
        loop x mutable'txs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'txs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'txs)
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
                              (Data.ProtoLens.Field.field @"vec'txs") frozen'txs x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "txs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'txs y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'txs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'txs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'txs)
          "ReadMempoolRequest"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'txs") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ReadMempoolRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReadMempoolRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ReadMempoolRequest'txs x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.stage' @:: Lens' ReadMempoolResponse [Stage]@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.vec'stage' @:: Lens' ReadMempoolResponse (Data.Vector.Vector Stage)@ -}
data ReadMempoolResponse
  = ReadMempoolResponse'_constructor {_ReadMempoolResponse'stage :: !(Data.Vector.Vector Stage),
                                      _ReadMempoolResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReadMempoolResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ReadMempoolResponse "stage" [Stage] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadMempoolResponse'stage
           (\ x__ y__ -> x__ {_ReadMempoolResponse'stage = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ReadMempoolResponse "vec'stage" (Data.Vector.Vector Stage) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadMempoolResponse'stage
           (\ x__ y__ -> x__ {_ReadMempoolResponse'stage = y__}))
        Prelude.id
instance Data.ProtoLens.Message ReadMempoolResponse where
  messageName _
    = Data.Text.pack "utxorpc.submit.v1.ReadMempoolResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3ReadMempoolResponse\DC2.\n\
      \\ENQstage\CAN\SOH \ETX(\SO2\CAN.utxorpc.submit.v1.StageR\ENQstage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        stage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Stage)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed (Data.ProtoLens.Field.field @"stage")) ::
              Data.ProtoLens.FieldDescriptor ReadMempoolResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, stage__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReadMempoolResponse'_unknownFields
        (\ x__ y__ -> x__ {_ReadMempoolResponse'_unknownFields = y__})
  defMessage
    = ReadMempoolResponse'_constructor
        {_ReadMempoolResponse'stage = Data.Vector.Generic.empty,
         _ReadMempoolResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ReadMempoolResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Stage
             -> Data.ProtoLens.Encoding.Bytes.Parser ReadMempoolResponse
        loop x mutable'stage
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'stage <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'stage)
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
                              (Data.ProtoLens.Field.field @"vec'stage") frozen'stage x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.toEnum
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "stage"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'stage y)
                                loop x v
                        10
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.toEnum
                                                                       (Prelude.fmap
                                                                          Prelude.fromIntegral
                                                                          Data.ProtoLens.Encoding.Bytes.getVarInt))
                                                                    "stage"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'stage)
                                loop x y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'stage
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'stage <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'stage)
          "ReadMempoolResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                p = Lens.Family2.view (Data.ProtoLens.Field.field @"vec'stage") _x
              in
                if Data.Vector.Generic.null p then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         (Data.ProtoLens.Encoding.Bytes.runBuilder
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               ((Prelude..)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                  Prelude.fromEnum)
                               p))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ReadMempoolResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReadMempoolResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ReadMempoolResponse'stage x__) ())
newtype Stage'UnrecognizedValue
  = Stage'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Stage
  = STAGE_UNSPECIFIED |
    STAGE_ACKNOWLEDGED |
    STAGE_MEMPOOL |
    STAGE_NETWORK |
    STAGE_CONFIRMED |
    Stage'Unrecognized !Stage'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Stage where
  maybeToEnum 0 = Prelude.Just STAGE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just STAGE_ACKNOWLEDGED
  maybeToEnum 2 = Prelude.Just STAGE_MEMPOOL
  maybeToEnum 3 = Prelude.Just STAGE_NETWORK
  maybeToEnum 4 = Prelude.Just STAGE_CONFIRMED
  maybeToEnum k
    = Prelude.Just
        (Stage'Unrecognized
           (Stage'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum STAGE_UNSPECIFIED = "STAGE_UNSPECIFIED"
  showEnum STAGE_ACKNOWLEDGED = "STAGE_ACKNOWLEDGED"
  showEnum STAGE_MEMPOOL = "STAGE_MEMPOOL"
  showEnum STAGE_NETWORK = "STAGE_NETWORK"
  showEnum STAGE_CONFIRMED = "STAGE_CONFIRMED"
  showEnum (Stage'Unrecognized (Stage'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "STAGE_UNSPECIFIED"
    = Prelude.Just STAGE_UNSPECIFIED
    | (Prelude.==) k "STAGE_ACKNOWLEDGED"
    = Prelude.Just STAGE_ACKNOWLEDGED
    | (Prelude.==) k "STAGE_MEMPOOL" = Prelude.Just STAGE_MEMPOOL
    | (Prelude.==) k "STAGE_NETWORK" = Prelude.Just STAGE_NETWORK
    | (Prelude.==) k "STAGE_CONFIRMED" = Prelude.Just STAGE_CONFIRMED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Stage where
  minBound = STAGE_UNSPECIFIED
  maxBound = STAGE_CONFIRMED
instance Prelude.Enum Stage where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Stage: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum STAGE_UNSPECIFIED = 0
  fromEnum STAGE_ACKNOWLEDGED = 1
  fromEnum STAGE_MEMPOOL = 2
  fromEnum STAGE_NETWORK = 3
  fromEnum STAGE_CONFIRMED = 4
  fromEnum (Stage'Unrecognized (Stage'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ STAGE_CONFIRMED
    = Prelude.error
        "Stage.succ: bad argument STAGE_CONFIRMED. This value would be out of bounds."
  succ STAGE_UNSPECIFIED = STAGE_ACKNOWLEDGED
  succ STAGE_ACKNOWLEDGED = STAGE_MEMPOOL
  succ STAGE_MEMPOOL = STAGE_NETWORK
  succ STAGE_NETWORK = STAGE_CONFIRMED
  succ (Stage'Unrecognized _)
    = Prelude.error "Stage.succ: bad argument: unrecognized value"
  pred STAGE_UNSPECIFIED
    = Prelude.error
        "Stage.pred: bad argument STAGE_UNSPECIFIED. This value would be out of bounds."
  pred STAGE_ACKNOWLEDGED = STAGE_UNSPECIFIED
  pred STAGE_MEMPOOL = STAGE_ACKNOWLEDGED
  pred STAGE_NETWORK = STAGE_MEMPOOL
  pred STAGE_CONFIRMED = STAGE_NETWORK
  pred (Stage'Unrecognized _)
    = Prelude.error "Stage.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Stage where
  fieldDefault = STAGE_UNSPECIFIED
instance Control.DeepSeq.NFData Stage where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.tx' @:: Lens' SubmitTxRequest [AnyChainTx]@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.vec'tx' @:: Lens' SubmitTxRequest (Data.Vector.Vector AnyChainTx)@ -}
data SubmitTxRequest
  = SubmitTxRequest'_constructor {_SubmitTxRequest'tx :: !(Data.Vector.Vector AnyChainTx),
                                  _SubmitTxRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SubmitTxRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SubmitTxRequest "tx" [AnyChainTx] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubmitTxRequest'tx (\ x__ y__ -> x__ {_SubmitTxRequest'tx = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SubmitTxRequest "vec'tx" (Data.Vector.Vector AnyChainTx) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubmitTxRequest'tx (\ x__ y__ -> x__ {_SubmitTxRequest'tx = y__}))
        Prelude.id
instance Data.ProtoLens.Message SubmitTxRequest where
  messageName _ = Data.Text.pack "utxorpc.submit.v1.SubmitTxRequest"
  packedMessageDescriptor _
    = "\n\
      \\SISubmitTxRequest\DC2-\n\
      \\STXtx\CAN\SOH \ETX(\v2\GS.utxorpc.submit.v1.AnyChainTxR\STXtx"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AnyChainTx)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"tx")) ::
              Data.ProtoLens.FieldDescriptor SubmitTxRequest
      in Data.Map.fromList [(Data.ProtoLens.Tag 1, tx__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SubmitTxRequest'_unknownFields
        (\ x__ y__ -> x__ {_SubmitTxRequest'_unknownFields = y__})
  defMessage
    = SubmitTxRequest'_constructor
        {_SubmitTxRequest'tx = Data.Vector.Generic.empty,
         _SubmitTxRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SubmitTxRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld AnyChainTx
             -> Data.ProtoLens.Encoding.Bytes.Parser SubmitTxRequest
        loop x mutable'tx
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'tx <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'tx)
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
                              (Data.ProtoLens.Field.field @"vec'tx") frozen'tx x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "tx"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'tx y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'tx
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'tx <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                              Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'tx)
          "SubmitTxRequest"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'tx") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SubmitTxRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SubmitTxRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_SubmitTxRequest'tx x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.ref' @:: Lens' SubmitTxResponse [Data.ByteString.ByteString]@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.vec'ref' @:: Lens' SubmitTxResponse (Data.Vector.Vector Data.ByteString.ByteString)@ -}
data SubmitTxResponse
  = SubmitTxResponse'_constructor {_SubmitTxResponse'ref :: !(Data.Vector.Vector Data.ByteString.ByteString),
                                   _SubmitTxResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SubmitTxResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SubmitTxResponse "ref" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubmitTxResponse'ref
           (\ x__ y__ -> x__ {_SubmitTxResponse'ref = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SubmitTxResponse "vec'ref" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubmitTxResponse'ref
           (\ x__ y__ -> x__ {_SubmitTxResponse'ref = y__}))
        Prelude.id
instance Data.ProtoLens.Message SubmitTxResponse where
  messageName _ = Data.Text.pack "utxorpc.submit.v1.SubmitTxResponse"
  packedMessageDescriptor _
    = "\n\
      \\DLESubmitTxResponse\DC2\DLE\n\
      \\ETXref\CAN\SOH \ETX(\fR\ETXref"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ref__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ref"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"ref")) ::
              Data.ProtoLens.FieldDescriptor SubmitTxResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, ref__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SubmitTxResponse'_unknownFields
        (\ x__ y__ -> x__ {_SubmitTxResponse'_unknownFields = y__})
  defMessage
    = SubmitTxResponse'_constructor
        {_SubmitTxResponse'ref = Data.Vector.Generic.empty,
         _SubmitTxResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SubmitTxResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Bytes.Parser SubmitTxResponse
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
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "ref"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'ref y)
                                loop x v
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
          "SubmitTxResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'ref") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SubmitTxResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SubmitTxResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_SubmitTxResponse'ref x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.tx' @:: Lens' TxInMempool AnyChainTx@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.maybe'tx' @:: Lens' TxInMempool (Prelude.Maybe AnyChainTx)@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.stage' @:: Lens' TxInMempool Stage@ -}
data TxInMempool
  = TxInMempool'_constructor {_TxInMempool'tx :: !(Prelude.Maybe AnyChainTx),
                              _TxInMempool'stage :: !Stage,
                              _TxInMempool'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxInMempool where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxInMempool "tx" AnyChainTx where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxInMempool'tx (\ x__ y__ -> x__ {_TxInMempool'tx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TxInMempool "maybe'tx" (Prelude.Maybe AnyChainTx) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxInMempool'tx (\ x__ y__ -> x__ {_TxInMempool'tx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxInMempool "stage" Stage where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxInMempool'stage (\ x__ y__ -> x__ {_TxInMempool'stage = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxInMempool where
  messageName _ = Data.Text.pack "utxorpc.submit.v1.TxInMempool"
  packedMessageDescriptor _
    = "\n\
      \\vTxInMempool\DC2-\n\
      \\STXtx\CAN\SOH \SOH(\v2\GS.utxorpc.submit.v1.AnyChainTxR\STXtx\DC2.\n\
      \\ENQstage\CAN\STX \SOH(\SO2\CAN.utxorpc.submit.v1.StageR\ENQstage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AnyChainTx)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tx")) ::
              Data.ProtoLens.FieldDescriptor TxInMempool
        stage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Stage)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"stage")) ::
              Data.ProtoLens.FieldDescriptor TxInMempool
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tx__field_descriptor),
           (Data.ProtoLens.Tag 2, stage__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxInMempool'_unknownFields
        (\ x__ y__ -> x__ {_TxInMempool'_unknownFields = y__})
  defMessage
    = TxInMempool'_constructor
        {_TxInMempool'tx = Prelude.Nothing,
         _TxInMempool'stage = Data.ProtoLens.fieldDefault,
         _TxInMempool'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TxInMempool -> Data.ProtoLens.Encoding.Bytes.Parser TxInMempool
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
                                       "tx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tx") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "stage"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"stage") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TxInMempool"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tx") _x
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"stage") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TxInMempool where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxInMempool'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TxInMempool'tx x__)
                (Control.DeepSeq.deepseq (_TxInMempool'stage x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.match' @:: Lens' TxPredicate AnyChainTxPattern@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.maybe'match' @:: Lens' TxPredicate (Prelude.Maybe AnyChainTxPattern)@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.not' @:: Lens' TxPredicate [TxPredicate]@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.vec'not' @:: Lens' TxPredicate (Data.Vector.Vector TxPredicate)@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.allOf' @:: Lens' TxPredicate [TxPredicate]@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.vec'allOf' @:: Lens' TxPredicate (Data.Vector.Vector TxPredicate)@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.anyOf' @:: Lens' TxPredicate [TxPredicate]@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.vec'anyOf' @:: Lens' TxPredicate (Data.Vector.Vector TxPredicate)@ -}
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
  messageName _ = Data.Text.pack "utxorpc.submit.v1.TxPredicate"
  packedMessageDescriptor _
    = "\n\
      \\vTxPredicate\DC2:\n\
      \\ENQmatch\CAN\SOH \SOH(\v2$.utxorpc.submit.v1.AnyChainTxPatternR\ENQmatch\DC20\n\
      \\ETXnot\CAN\STX \ETX(\v2\RS.utxorpc.submit.v1.TxPredicateR\ETXnot\DC25\n\
      \\ACKall_of\CAN\ETX \ETX(\v2\RS.utxorpc.submit.v1.TxPredicateR\ENQallOf\DC25\n\
      \\ACKany_of\CAN\EOT \ETX(\v2\RS.utxorpc.submit.v1.TxPredicateR\ENQanyOf"
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
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.ref' @:: Lens' WaitForTxRequest [Data.ByteString.ByteString]@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.vec'ref' @:: Lens' WaitForTxRequest (Data.Vector.Vector Data.ByteString.ByteString)@ -}
data WaitForTxRequest
  = WaitForTxRequest'_constructor {_WaitForTxRequest'ref :: !(Data.Vector.Vector Data.ByteString.ByteString),
                                   _WaitForTxRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WaitForTxRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WaitForTxRequest "ref" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WaitForTxRequest'ref
           (\ x__ y__ -> x__ {_WaitForTxRequest'ref = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WaitForTxRequest "vec'ref" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WaitForTxRequest'ref
           (\ x__ y__ -> x__ {_WaitForTxRequest'ref = y__}))
        Prelude.id
instance Data.ProtoLens.Message WaitForTxRequest where
  messageName _ = Data.Text.pack "utxorpc.submit.v1.WaitForTxRequest"
  packedMessageDescriptor _
    = "\n\
      \\DLEWaitForTxRequest\DC2\DLE\n\
      \\ETXref\CAN\SOH \ETX(\fR\ETXref"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ref__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ref"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"ref")) ::
              Data.ProtoLens.FieldDescriptor WaitForTxRequest
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, ref__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WaitForTxRequest'_unknownFields
        (\ x__ y__ -> x__ {_WaitForTxRequest'_unknownFields = y__})
  defMessage
    = WaitForTxRequest'_constructor
        {_WaitForTxRequest'ref = Data.Vector.Generic.empty,
         _WaitForTxRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WaitForTxRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Bytes.Parser WaitForTxRequest
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
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "ref"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'ref y)
                                loop x v
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
          "WaitForTxRequest"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'ref") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData WaitForTxRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WaitForTxRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_WaitForTxRequest'ref x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.ref' @:: Lens' WaitForTxResponse Data.ByteString.ByteString@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.stage' @:: Lens' WaitForTxResponse Stage@ -}
data WaitForTxResponse
  = WaitForTxResponse'_constructor {_WaitForTxResponse'ref :: !Data.ByteString.ByteString,
                                    _WaitForTxResponse'stage :: !Stage,
                                    _WaitForTxResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WaitForTxResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WaitForTxResponse "ref" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WaitForTxResponse'ref
           (\ x__ y__ -> x__ {_WaitForTxResponse'ref = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WaitForTxResponse "stage" Stage where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WaitForTxResponse'stage
           (\ x__ y__ -> x__ {_WaitForTxResponse'stage = y__}))
        Prelude.id
instance Data.ProtoLens.Message WaitForTxResponse where
  messageName _
    = Data.Text.pack "utxorpc.submit.v1.WaitForTxResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC1WaitForTxResponse\DC2\DLE\n\
      \\ETXref\CAN\SOH \SOH(\fR\ETXref\DC2.\n\
      \\ENQstage\CAN\STX \SOH(\SO2\CAN.utxorpc.submit.v1.StageR\ENQstage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ref__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ref"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"ref")) ::
              Data.ProtoLens.FieldDescriptor WaitForTxResponse
        stage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Stage)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"stage")) ::
              Data.ProtoLens.FieldDescriptor WaitForTxResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ref__field_descriptor),
           (Data.ProtoLens.Tag 2, stage__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WaitForTxResponse'_unknownFields
        (\ x__ y__ -> x__ {_WaitForTxResponse'_unknownFields = y__})
  defMessage
    = WaitForTxResponse'_constructor
        {_WaitForTxResponse'ref = Data.ProtoLens.fieldDefault,
         _WaitForTxResponse'stage = Data.ProtoLens.fieldDefault,
         _WaitForTxResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WaitForTxResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser WaitForTxResponse
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
                                       "ref"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ref") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "stage"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"stage") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WaitForTxResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"ref") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"stage") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData WaitForTxResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WaitForTxResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WaitForTxResponse'ref x__)
                (Control.DeepSeq.deepseq (_WaitForTxResponse'stage x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.predicate' @:: Lens' WatchMempoolRequest TxPredicate@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.maybe'predicate' @:: Lens' WatchMempoolRequest (Prelude.Maybe TxPredicate)@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.fieldMask' @:: Lens' WatchMempoolRequest Proto.Google.Protobuf.FieldMask.FieldMask@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.maybe'fieldMask' @:: Lens' WatchMempoolRequest (Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask)@ -}
data WatchMempoolRequest
  = WatchMempoolRequest'_constructor {_WatchMempoolRequest'predicate :: !(Prelude.Maybe TxPredicate),
                                      _WatchMempoolRequest'fieldMask :: !(Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask),
                                      _WatchMempoolRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WatchMempoolRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WatchMempoolRequest "predicate" TxPredicate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WatchMempoolRequest'predicate
           (\ x__ y__ -> x__ {_WatchMempoolRequest'predicate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WatchMempoolRequest "maybe'predicate" (Prelude.Maybe TxPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WatchMempoolRequest'predicate
           (\ x__ y__ -> x__ {_WatchMempoolRequest'predicate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WatchMempoolRequest "fieldMask" Proto.Google.Protobuf.FieldMask.FieldMask where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WatchMempoolRequest'fieldMask
           (\ x__ y__ -> x__ {_WatchMempoolRequest'fieldMask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WatchMempoolRequest "maybe'fieldMask" (Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WatchMempoolRequest'fieldMask
           (\ x__ y__ -> x__ {_WatchMempoolRequest'fieldMask = y__}))
        Prelude.id
instance Data.ProtoLens.Message WatchMempoolRequest where
  messageName _
    = Data.Text.pack "utxorpc.submit.v1.WatchMempoolRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC3WatchMempoolRequest\DC2<\n\
      \\tpredicate\CAN\SOH \SOH(\v2\RS.utxorpc.submit.v1.TxPredicateR\tpredicate\DC29\n\
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
              Data.ProtoLens.FieldDescriptor WatchMempoolRequest
        fieldMask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "field_mask"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.FieldMask.FieldMask)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fieldMask")) ::
              Data.ProtoLens.FieldDescriptor WatchMempoolRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, predicate__field_descriptor),
           (Data.ProtoLens.Tag 2, fieldMask__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WatchMempoolRequest'_unknownFields
        (\ x__ y__ -> x__ {_WatchMempoolRequest'_unknownFields = y__})
  defMessage
    = WatchMempoolRequest'_constructor
        {_WatchMempoolRequest'predicate = Prelude.Nothing,
         _WatchMempoolRequest'fieldMask = Prelude.Nothing,
         _WatchMempoolRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WatchMempoolRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser WatchMempoolRequest
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
          (do loop Data.ProtoLens.defMessage) "WatchMempoolRequest"
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
instance Control.DeepSeq.NFData WatchMempoolRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WatchMempoolRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WatchMempoolRequest'predicate x__)
                (Control.DeepSeq.deepseq (_WatchMempoolRequest'fieldMask x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.tx' @:: Lens' WatchMempoolResponse TxInMempool@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.maybe'tx' @:: Lens' WatchMempoolResponse (Prelude.Maybe TxInMempool)@ -}
data WatchMempoolResponse
  = WatchMempoolResponse'_constructor {_WatchMempoolResponse'tx :: !(Prelude.Maybe TxInMempool),
                                       _WatchMempoolResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WatchMempoolResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WatchMempoolResponse "tx" TxInMempool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WatchMempoolResponse'tx
           (\ x__ y__ -> x__ {_WatchMempoolResponse'tx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WatchMempoolResponse "maybe'tx" (Prelude.Maybe TxInMempool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WatchMempoolResponse'tx
           (\ x__ y__ -> x__ {_WatchMempoolResponse'tx = y__}))
        Prelude.id
instance Data.ProtoLens.Message WatchMempoolResponse where
  messageName _
    = Data.Text.pack "utxorpc.submit.v1.WatchMempoolResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4WatchMempoolResponse\DC2.\n\
      \\STXtx\CAN\SOH \SOH(\v2\RS.utxorpc.submit.v1.TxInMempoolR\STXtx"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TxInMempool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tx")) ::
              Data.ProtoLens.FieldDescriptor WatchMempoolResponse
      in Data.Map.fromList [(Data.ProtoLens.Tag 1, tx__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WatchMempoolResponse'_unknownFields
        (\ x__ y__ -> x__ {_WatchMempoolResponse'_unknownFields = y__})
  defMessage
    = WatchMempoolResponse'_constructor
        {_WatchMempoolResponse'tx = Prelude.Nothing,
         _WatchMempoolResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WatchMempoolResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser WatchMempoolResponse
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
                                       "tx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tx") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WatchMempoolResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tx") _x
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
instance Control.DeepSeq.NFData WatchMempoolResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WatchMempoolResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_WatchMempoolResponse'tx x__) ())
data SubmitService = SubmitService {}
instance Data.ProtoLens.Service.Types.Service SubmitService where
  type ServiceName SubmitService = "SubmitService"
  type ServicePackage SubmitService = "utxorpc.submit.v1"
  type ServiceMethods SubmitService = '["readMempool",
                                        "submitTx",
                                        "waitForTx",
                                        "watchMempool"]
  packedServiceDescriptor _
    = "\n\
      \\rSubmitService\DC2S\n\
      \\bSubmitTx\DC2\".utxorpc.submit.v1.SubmitTxRequest\SUB#.utxorpc.submit.v1.SubmitTxResponse\DC2X\n\
      \\tWaitForTx\DC2#.utxorpc.submit.v1.WaitForTxRequest\SUB$.utxorpc.submit.v1.WaitForTxResponse0\SOH\DC2\\\n\
      \\vReadMempool\DC2%.utxorpc.submit.v1.ReadMempoolRequest\SUB&.utxorpc.submit.v1.ReadMempoolResponse\DC2a\n\
      \\fWatchMempool\DC2&.utxorpc.submit.v1.WatchMempoolRequest\SUB'.utxorpc.submit.v1.WatchMempoolResponse0\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl SubmitService "submitTx" where
  type MethodName SubmitService "submitTx" = "SubmitTx"
  type MethodInput SubmitService "submitTx" = SubmitTxRequest
  type MethodOutput SubmitService "submitTx" = SubmitTxResponse
  type MethodStreamingType SubmitService "submitTx" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl SubmitService "waitForTx" where
  type MethodName SubmitService "waitForTx" = "WaitForTx"
  type MethodInput SubmitService "waitForTx" = WaitForTxRequest
  type MethodOutput SubmitService "waitForTx" = WaitForTxResponse
  type MethodStreamingType SubmitService "waitForTx" = 'Data.ProtoLens.Service.Types.ServerStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl SubmitService "readMempool" where
  type MethodName SubmitService "readMempool" = "ReadMempool"
  type MethodInput SubmitService "readMempool" = ReadMempoolRequest
  type MethodOutput SubmitService "readMempool" = ReadMempoolResponse
  type MethodStreamingType SubmitService "readMempool" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl SubmitService "watchMempool" where
  type MethodName SubmitService "watchMempool" = "WatchMempool"
  type MethodInput SubmitService "watchMempool" = WatchMempoolRequest
  type MethodOutput SubmitService "watchMempool" = WatchMempoolResponse
  type MethodStreamingType SubmitService "watchMempool" = 'Data.ProtoLens.Service.Types.ServerStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RSutxorpc/submit/v1/submit.proto\DC2\DC1utxorpc.submit.v1\SUB google/protobuf/field_mask.proto\SUB utxorpc/cardano/v1/cardano.proto\"(\n\
    \\n\
    \AnyChainTx\DC2\DC2\n\
    \\ETXraw\CAN\SOH \SOH(\fH\NULR\ETXrawB\ACK\n\
    \\EOTtype\"@\n\
    \\SISubmitTxRequest\DC2-\n\
    \\STXtx\CAN\SOH \ETX(\v2\GS.utxorpc.submit.v1.AnyChainTxR\STXtx\"$\n\
    \\DLESubmitTxResponse\DC2\DLE\n\
    \\ETXref\CAN\SOH \ETX(\fR\ETXref\"l\n\
    \\vTxInMempool\DC2-\n\
    \\STXtx\CAN\SOH \SOH(\v2\GS.utxorpc.submit.v1.AnyChainTxR\STXtx\DC2.\n\
    \\ENQstage\CAN\STX \SOH(\SO2\CAN.utxorpc.submit.v1.StageR\ENQstage\"F\n\
    \\DC2ReadMempoolRequest\DC20\n\
    \\ETXtxs\CAN\SOH \ETX(\v2\RS.utxorpc.submit.v1.TxInMempoolR\ETXtxs\"E\n\
    \\DC3ReadMempoolResponse\DC2.\n\
    \\ENQstage\CAN\SOH \ETX(\SO2\CAN.utxorpc.submit.v1.StageR\ENQstage\"$\n\
    \\DLEWaitForTxRequest\DC2\DLE\n\
    \\ETXref\CAN\SOH \ETX(\fR\ETXref\"U\n\
    \\DC1WaitForTxResponse\DC2\DLE\n\
    \\ETXref\CAN\SOH \SOH(\fR\ETXref\DC2.\n\
    \\ENQstage\CAN\STX \SOH(\SO2\CAN.utxorpc.submit.v1.StageR\ENQstage\"W\n\
    \\DC1AnyChainTxPattern\DC29\n\
    \\acardano\CAN\SOH \SOH(\v2\GS.utxorpc.cardano.v1.TxPatternH\NULR\acardanoB\a\n\
    \\ENQchain\"\233\SOH\n\
    \\vTxPredicate\DC2:\n\
    \\ENQmatch\CAN\SOH \SOH(\v2$.utxorpc.submit.v1.AnyChainTxPatternR\ENQmatch\DC20\n\
    \\ETXnot\CAN\STX \ETX(\v2\RS.utxorpc.submit.v1.TxPredicateR\ETXnot\DC25\n\
    \\ACKall_of\CAN\ETX \ETX(\v2\RS.utxorpc.submit.v1.TxPredicateR\ENQallOf\DC25\n\
    \\ACKany_of\CAN\EOT \ETX(\v2\RS.utxorpc.submit.v1.TxPredicateR\ENQanyOf\"\142\SOH\n\
    \\DC3WatchMempoolRequest\DC2<\n\
    \\tpredicate\CAN\SOH \SOH(\v2\RS.utxorpc.submit.v1.TxPredicateR\tpredicate\DC29\n\
    \\n\
    \field_mask\CAN\STX \SOH(\v2\SUB.google.protobuf.FieldMaskR\tfieldMask\"F\n\
    \\DC4WatchMempoolResponse\DC2.\n\
    \\STXtx\CAN\SOH \SOH(\v2\RS.utxorpc.submit.v1.TxInMempoolR\STXtx*q\n\
    \\ENQStage\DC2\NAK\n\
    \\DC1STAGE_UNSPECIFIED\DLE\NUL\DC2\SYN\n\
    \\DC2STAGE_ACKNOWLEDGED\DLE\SOH\DC2\DC1\n\
    \\rSTAGE_MEMPOOL\DLE\STX\DC2\DC1\n\
    \\rSTAGE_NETWORK\DLE\ETX\DC2\DC3\n\
    \\SISTAGE_CONFIRMED\DLE\EOT2\255\STX\n\
    \\rSubmitService\DC2S\n\
    \\bSubmitTx\DC2\".utxorpc.submit.v1.SubmitTxRequest\SUB#.utxorpc.submit.v1.SubmitTxResponse\DC2X\n\
    \\tWaitForTx\DC2#.utxorpc.submit.v1.WaitForTxRequest\SUB$.utxorpc.submit.v1.WaitForTxResponse0\SOH\DC2\\\n\
    \\vReadMempool\DC2%.utxorpc.submit.v1.ReadMempoolRequest\SUB&.utxorpc.submit.v1.ReadMempoolResponse\DC2a\n\
    \\fWatchMempool\DC2&.utxorpc.submit.v1.WatchMempoolRequest\SUB'.utxorpc.submit.v1.WatchMempoolResponse0\SOHB\199\SOH\n\
    \\NAKcom.utxorpc.submit.v1B\vSubmitProtoP\SOHZ;github.com/bufbuild/buf-tour/gen/utxorpc/submit/v1;submitv1\162\STX\ETXUSX\170\STX\DC1Utxorpc.Submit.V1\202\STX\DC1Utxorpc\\Submit\\V1\226\STX\GSUtxorpc\\Submit\\V1\\GPBMetadata\234\STX\DC3Utxorpc::Submit::V1J\203\US\n\
    \\ACK\DC2\EOT\NUL\NUL[\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SUB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL*\n\
    \E\n\
    \\STX\EOT\NUL\DC2\EOT\b\NUL\f\SOH\SUB9 Represents a transaction from any supported blockchain.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\b\b\DC2\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\t\STX\v\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\t\b\f\n\
    \$\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\n\
    \\EOT\DC2\"\ETB Raw transaction data.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\n\
    \\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\n\
    \\n\
    \\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\n\
    \\DLE\DC1\n\
    \?\n\
    \\STX\EOT\SOH\DC2\EOT\SI\NUL\DC1\SOH\SUB3 Request to submit transactions to the blockchain.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SI\b\ETB\n\
    \.\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DLE\STX\GS\"! List of transactions to submit.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\DLE\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DLE\SYN\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DLE\ESC\FS\n\
    \K\n\
    \\STX\EOT\STX\DC2\EOT\DC4\NUL\SYN\SOH\SUB? Response containing references to the submitted transactions.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\DC4\b\CAN\n\
    \.\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\NAK\STX\EM\"! List of transaction references.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\NAK\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\NAK\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\NAK\ETB\CAN\n\
    \P\n\
    \\STX\ENQ\NUL\DC2\EOT\EM\NUL\US\SOH\SUBD Enum representing the various stages of a transaction's lifecycle.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\EM\ENQ\n\
    \\n\
    \!\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\SUB\STX\CAN\"\DC4 Unspecified stage.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\SUB\STX\DC3\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\SUB\SYN\ETB\n\
    \=\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\ESC\STX\EM\"0 Transaction has been acknowledged by the node.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\ESC\STX\DC4\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\ESC\ETB\CAN\n\
    \-\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\FS\STX\DC4\"  Transaction is in the mempool.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\FS\STX\SI\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\FS\DC2\DC3\n\
    \B\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX\GS\STX\DC4\"5 Transaction has been propagated across the network.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX\GS\STX\SI\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX\GS\DC2\DC3\n\
    \@\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETX\RS\STX\SYN\"3 Transaction has been confirmed on the blockchain.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETX\RS\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETX\RS\DC4\NAK\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT!\NUL$\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX!\b\DC3\n\
    \%\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\"\STX\DC4\"\CAN The contents of the tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX\"\STX\f\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\"\r\SI\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\"\DC2\DC3\n\
    \*\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX#\STX\DC2\"\GS The current stage of the tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX#\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX#\b\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX#\DLE\DC1\n\
    \D\n\
    \\STX\EOT\EOT\DC2\EOT'\NUL)\SOH\SUB8 Request to check the status of submitted transactions.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX'\b\SUB\n\
    \<\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX(\STX\US\"/ List of transaction currently on the mempool.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETX(\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX(\ETB\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX(\GS\RS\n\
    \J\n\
    \\STX\EOT\ENQ\DC2\EOT,\NUL.\SOH\SUB> Response containing the stage of the submitted transactions.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX,\b\ESC\n\
    \J\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX-\STX\ESC\"= List of stages corresponding to the transaction references.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETX-\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX-\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX-\EM\SUB\n\
    \H\n\
    \\STX\EOT\ACK\DC2\EOT1\NUL3\SOH\SUB< Request to wait for transactions to reach a certain stage.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX1\b\CAN\n\
    \:\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX2\STX\EM\"- List of transaction references to wait for.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX2\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX2\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX2\ETB\CAN\n\
    \_\n\
    \\STX\EOT\a\DC2\EOT6\NUL9\SOH\SUBS Response containing the transaction reference and stage once it has been reached.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX6\b\EM\n\
    \%\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX7\STX\DLE\"\CAN Transaction reference.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETX7\STX\a\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX7\b\v\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX7\SO\SI\n\
    \0\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETX8\STX\DC2\"# Stage reached by the transaction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\ETX8\STX\a\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETX8\b\r\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETX8\DLE\DC1\n\
    \D\n\
    \\STX\EOT\b\DC2\EOT<\NUL@\SOH\SUB8 Represents a tx pattern from any supported blockchain.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETX<\b\EM\n\
    \\f\n\
    \\EOT\EOT\b\b\NUL\DC2\EOT=\STX?\ETX\n\
    \\f\n\
    \\ENQ\EOT\b\b\NUL\SOH\DC2\ETX=\b\r\n\
    \$\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETX>\EOT-\"\ETB A Cardano tx pattern.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\ETX>\EOT \n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETX>!(\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETX>+,\n\
    \]\n\
    \\STX\EOT\t\DC2\EOTC\NULH\SOH\SUBQ Represents a simple tx predicate that can composed to create more complext ones\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXC\b\DC3\n\
    \8\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETXD\STX\RS\"+ Predicate is true if tx exhibits pattern.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\ETXD\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETXD\DC4\EM\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETXD\FS\GS\n\
    \?\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETXE\STX\US\"2 Predicate is true if tx doesn't exhibit pattern.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\EOT\DC2\ETXE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\ETXE\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETXE\ETB\SUB\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETXE\GS\RS\n\
    \D\n\
    \\EOT\EOT\t\STX\STX\DC2\ETXF\STX\"\"7 Predicate is true if tx exhibits all of the patterns.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\EOT\DC2\ETXF\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ACK\DC2\ETXF\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\ETXF\ETB\GS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\ETXF !\n\
    \D\n\
    \\EOT\EOT\t\STX\ETX\DC2\ETXG\STX\"\"7 Predicate is true if tx exhibits any of the patterns.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ETX\EOT\DC2\ETXG\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ETX\ACK\DC2\ETXG\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ETX\SOH\DC2\ETXG\ETB\GS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ETX\ETX\DC2\ETXG !\n\
    \?\n\
    \\STX\EOT\n\
    \\DC2\EOTK\NULN\SOH\SUB3 Request to watch changes of specific mempool txs.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETXK\b\ESC\n\
    \5\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETXL\STX\FS\"( A predicate to filter transactions by.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ACK\DC2\ETXL\STX\r\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETXL\SO\ETB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETXL\SUB\ESC\n\
    \7\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\ETXM\STX+\"* Field mask to selectively return fields.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ACK\DC2\ETXM\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\ETXM\FS&\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\ETXM)*\n\
    \@\n\
    \\STX\EOT\v\DC2\EOTQ\NULS\SOH\SUB4 Response that represents a change in a mempool tx.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\v\SOH\DC2\ETXQ\b\FS\n\
    \?\n\
    \\EOT\EOT\v\STX\NUL\DC2\ETXR\STX\NAK\"2 The content and stage of the tx that has changed\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\ETXR\STX\r\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\ETXR\SO\DLE\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\ETXR\DC3\DC4\n\
    \W\n\
    \\STX\ACK\NUL\DC2\EOTV\NUL[\SOH\SUBK Service definition for submitting transactions and checking their status.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETXV\b\NAK\n\
    \5\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETXW\STX;\"( Submit transactions to the blockchain.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETXW\ACK\SO\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETXW\SI\RS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETXW)9\n\
    \U\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETXX\STXE\"H Wait for transactions to reach a certain stage and stream the updates.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETXX\ACK\SI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETXX\DLE \n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ACK\DC2\ETXX+1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETXX2C\n\
    \?\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETXY\STXD\"2 Returns a point-in-time snapshot of the mempool.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETXY\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETXY\DC2$\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETXY/B\n\
    \V\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\ETXZ\STXN\"I Stream transactions from the mempool matching the specified predicates.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETXZ\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETXZ\DC3&\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ACK\DC2\ETXZ17\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETXZ8Lb\ACKproto3"