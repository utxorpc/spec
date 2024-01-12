{- This file was auto-generated from utxorpc/submit/v1/submit.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Utxorpc.Submit.V1.Submit (
        SubmitService(..), AnyChainTx(), AnyChainTx'Type(..),
        _AnyChainTx'Raw, CheckRequest(), CheckResponse(), Stage(..),
        Stage(), Stage'UnrecognizedValue, SubmitRequest(),
        SubmitResponse(), WaitForRequest(), WaitForResponse()
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
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.ref' @:: Lens' CheckRequest [Data.ByteString.ByteString]@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.vec'ref' @:: Lens' CheckRequest (Data.Vector.Vector Data.ByteString.ByteString)@ -}
data CheckRequest
  = CheckRequest'_constructor {_CheckRequest'ref :: !(Data.Vector.Vector Data.ByteString.ByteString),
                               _CheckRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CheckRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CheckRequest "ref" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckRequest'ref (\ x__ y__ -> x__ {_CheckRequest'ref = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CheckRequest "vec'ref" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckRequest'ref (\ x__ y__ -> x__ {_CheckRequest'ref = y__}))
        Prelude.id
instance Data.ProtoLens.Message CheckRequest where
  messageName _ = Data.Text.pack "utxorpc.submit.v1.CheckRequest"
  packedMessageDescriptor _
    = "\n\
      \\fCheckRequest\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor CheckRequest
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, ref__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CheckRequest'_unknownFields
        (\ x__ y__ -> x__ {_CheckRequest'_unknownFields = y__})
  defMessage
    = CheckRequest'_constructor
        {_CheckRequest'ref = Data.Vector.Generic.empty,
         _CheckRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CheckRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Bytes.Parser CheckRequest
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
          "CheckRequest"
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
instance Control.DeepSeq.NFData CheckRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CheckRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CheckRequest'ref x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.stage' @:: Lens' CheckResponse [Stage]@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.vec'stage' @:: Lens' CheckResponse (Data.Vector.Vector Stage)@ -}
data CheckResponse
  = CheckResponse'_constructor {_CheckResponse'stage :: !(Data.Vector.Vector Stage),
                                _CheckResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CheckResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CheckResponse "stage" [Stage] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckResponse'stage
           (\ x__ y__ -> x__ {_CheckResponse'stage = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CheckResponse "vec'stage" (Data.Vector.Vector Stage) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckResponse'stage
           (\ x__ y__ -> x__ {_CheckResponse'stage = y__}))
        Prelude.id
instance Data.ProtoLens.Message CheckResponse where
  messageName _ = Data.Text.pack "utxorpc.submit.v1.CheckResponse"
  packedMessageDescriptor _
    = "\n\
      \\rCheckResponse\DC2.\n\
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
              Data.ProtoLens.FieldDescriptor CheckResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, stage__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CheckResponse'_unknownFields
        (\ x__ y__ -> x__ {_CheckResponse'_unknownFields = y__})
  defMessage
    = CheckResponse'_constructor
        {_CheckResponse'stage = Data.Vector.Generic.empty,
         _CheckResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CheckResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Stage
             -> Data.ProtoLens.Encoding.Bytes.Parser CheckResponse
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
          "CheckResponse"
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
instance Control.DeepSeq.NFData CheckResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CheckResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CheckResponse'stage x__) ())
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
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.tx' @:: Lens' SubmitRequest [AnyChainTx]@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.vec'tx' @:: Lens' SubmitRequest (Data.Vector.Vector AnyChainTx)@ -}
data SubmitRequest
  = SubmitRequest'_constructor {_SubmitRequest'tx :: !(Data.Vector.Vector AnyChainTx),
                                _SubmitRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SubmitRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SubmitRequest "tx" [AnyChainTx] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubmitRequest'tx (\ x__ y__ -> x__ {_SubmitRequest'tx = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SubmitRequest "vec'tx" (Data.Vector.Vector AnyChainTx) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubmitRequest'tx (\ x__ y__ -> x__ {_SubmitRequest'tx = y__}))
        Prelude.id
instance Data.ProtoLens.Message SubmitRequest where
  messageName _ = Data.Text.pack "utxorpc.submit.v1.SubmitRequest"
  packedMessageDescriptor _
    = "\n\
      \\rSubmitRequest\DC2-\n\
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
              Data.ProtoLens.FieldDescriptor SubmitRequest
      in Data.Map.fromList [(Data.ProtoLens.Tag 1, tx__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SubmitRequest'_unknownFields
        (\ x__ y__ -> x__ {_SubmitRequest'_unknownFields = y__})
  defMessage
    = SubmitRequest'_constructor
        {_SubmitRequest'tx = Data.Vector.Generic.empty,
         _SubmitRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SubmitRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld AnyChainTx
             -> Data.ProtoLens.Encoding.Bytes.Parser SubmitRequest
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
          "SubmitRequest"
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
instance Control.DeepSeq.NFData SubmitRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SubmitRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_SubmitRequest'tx x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.ref' @:: Lens' SubmitResponse [Data.ByteString.ByteString]@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.vec'ref' @:: Lens' SubmitResponse (Data.Vector.Vector Data.ByteString.ByteString)@ -}
data SubmitResponse
  = SubmitResponse'_constructor {_SubmitResponse'ref :: !(Data.Vector.Vector Data.ByteString.ByteString),
                                 _SubmitResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SubmitResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SubmitResponse "ref" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubmitResponse'ref (\ x__ y__ -> x__ {_SubmitResponse'ref = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SubmitResponse "vec'ref" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubmitResponse'ref (\ x__ y__ -> x__ {_SubmitResponse'ref = y__}))
        Prelude.id
instance Data.ProtoLens.Message SubmitResponse where
  messageName _ = Data.Text.pack "utxorpc.submit.v1.SubmitResponse"
  packedMessageDescriptor _
    = "\n\
      \\SOSubmitResponse\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor SubmitResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, ref__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SubmitResponse'_unknownFields
        (\ x__ y__ -> x__ {_SubmitResponse'_unknownFields = y__})
  defMessage
    = SubmitResponse'_constructor
        {_SubmitResponse'ref = Data.Vector.Generic.empty,
         _SubmitResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SubmitResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Bytes.Parser SubmitResponse
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
          "SubmitResponse"
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
instance Control.DeepSeq.NFData SubmitResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SubmitResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_SubmitResponse'ref x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.ref' @:: Lens' WaitForRequest [Data.ByteString.ByteString]@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.vec'ref' @:: Lens' WaitForRequest (Data.Vector.Vector Data.ByteString.ByteString)@ -}
data WaitForRequest
  = WaitForRequest'_constructor {_WaitForRequest'ref :: !(Data.Vector.Vector Data.ByteString.ByteString),
                                 _WaitForRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WaitForRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WaitForRequest "ref" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WaitForRequest'ref (\ x__ y__ -> x__ {_WaitForRequest'ref = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WaitForRequest "vec'ref" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WaitForRequest'ref (\ x__ y__ -> x__ {_WaitForRequest'ref = y__}))
        Prelude.id
instance Data.ProtoLens.Message WaitForRequest where
  messageName _ = Data.Text.pack "utxorpc.submit.v1.WaitForRequest"
  packedMessageDescriptor _
    = "\n\
      \\SOWaitForRequest\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor WaitForRequest
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, ref__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WaitForRequest'_unknownFields
        (\ x__ y__ -> x__ {_WaitForRequest'_unknownFields = y__})
  defMessage
    = WaitForRequest'_constructor
        {_WaitForRequest'ref = Data.Vector.Generic.empty,
         _WaitForRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WaitForRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Bytes.Parser WaitForRequest
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
          "WaitForRequest"
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
instance Control.DeepSeq.NFData WaitForRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WaitForRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_WaitForRequest'ref x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.ref' @:: Lens' WaitForResponse Data.ByteString.ByteString@
         * 'Proto.Utxorpc.Submit.V1.Submit_Fields.stage' @:: Lens' WaitForResponse Stage@ -}
data WaitForResponse
  = WaitForResponse'_constructor {_WaitForResponse'ref :: !Data.ByteString.ByteString,
                                  _WaitForResponse'stage :: !Stage,
                                  _WaitForResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WaitForResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WaitForResponse "ref" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WaitForResponse'ref
           (\ x__ y__ -> x__ {_WaitForResponse'ref = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WaitForResponse "stage" Stage where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WaitForResponse'stage
           (\ x__ y__ -> x__ {_WaitForResponse'stage = y__}))
        Prelude.id
instance Data.ProtoLens.Message WaitForResponse where
  messageName _ = Data.Text.pack "utxorpc.submit.v1.WaitForResponse"
  packedMessageDescriptor _
    = "\n\
      \\SIWaitForResponse\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor WaitForResponse
        stage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Stage)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"stage")) ::
              Data.ProtoLens.FieldDescriptor WaitForResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ref__field_descriptor),
           (Data.ProtoLens.Tag 2, stage__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WaitForResponse'_unknownFields
        (\ x__ y__ -> x__ {_WaitForResponse'_unknownFields = y__})
  defMessage
    = WaitForResponse'_constructor
        {_WaitForResponse'ref = Data.ProtoLens.fieldDefault,
         _WaitForResponse'stage = Data.ProtoLens.fieldDefault,
         _WaitForResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WaitForResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser WaitForResponse
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
          (do loop Data.ProtoLens.defMessage) "WaitForResponse"
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
instance Control.DeepSeq.NFData WaitForResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WaitForResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WaitForResponse'ref x__)
                (Control.DeepSeq.deepseq (_WaitForResponse'stage x__) ()))
data SubmitService = SubmitService {}
instance Data.ProtoLens.Service.Types.Service SubmitService where
  type ServiceName SubmitService = "SubmitService"
  type ServicePackage SubmitService = "utxorpc.submit.v1"
  type ServiceMethods SubmitService = '["check", "submit", "waitFor"]
  packedServiceDescriptor _
    = "\n\
      \\rSubmitService\DC2M\n\
      \\ACKSubmit\DC2 .utxorpc.submit.v1.SubmitRequest\SUB!.utxorpc.submit.v1.SubmitResponse\DC2J\n\
      \\ENQCheck\DC2\US.utxorpc.submit.v1.CheckRequest\SUB .utxorpc.submit.v1.CheckResponse\DC2R\n\
      \\aWaitFor\DC2!.utxorpc.submit.v1.WaitForRequest\SUB\".utxorpc.submit.v1.WaitForResponse0\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl SubmitService "submit" where
  type MethodName SubmitService "submit" = "Submit"
  type MethodInput SubmitService "submit" = SubmitRequest
  type MethodOutput SubmitService "submit" = SubmitResponse
  type MethodStreamingType SubmitService "submit" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl SubmitService "check" where
  type MethodName SubmitService "check" = "Check"
  type MethodInput SubmitService "check" = CheckRequest
  type MethodOutput SubmitService "check" = CheckResponse
  type MethodStreamingType SubmitService "check" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl SubmitService "waitFor" where
  type MethodName SubmitService "waitFor" = "WaitFor"
  type MethodInput SubmitService "waitFor" = WaitForRequest
  type MethodOutput SubmitService "waitFor" = WaitForResponse
  type MethodStreamingType SubmitService "waitFor" = 'Data.ProtoLens.Service.Types.ServerStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RSutxorpc/submit/v1/submit.proto\DC2\DC1utxorpc.submit.v1\"(\n\
    \\n\
    \AnyChainTx\DC2\DC2\n\
    \\ETXraw\CAN\SOH \SOH(\fH\NULR\ETXrawB\ACK\n\
    \\EOTtype\">\n\
    \\rSubmitRequest\DC2-\n\
    \\STXtx\CAN\SOH \ETX(\v2\GS.utxorpc.submit.v1.AnyChainTxR\STXtx\"\"\n\
    \\SOSubmitResponse\DC2\DLE\n\
    \\ETXref\CAN\SOH \ETX(\fR\ETXref\" \n\
    \\fCheckRequest\DC2\DLE\n\
    \\ETXref\CAN\SOH \ETX(\fR\ETXref\"?\n\
    \\rCheckResponse\DC2.\n\
    \\ENQstage\CAN\SOH \ETX(\SO2\CAN.utxorpc.submit.v1.StageR\ENQstage\"\"\n\
    \\SOWaitForRequest\DC2\DLE\n\
    \\ETXref\CAN\SOH \ETX(\fR\ETXref\"S\n\
    \\SIWaitForResponse\DC2\DLE\n\
    \\ETXref\CAN\SOH \SOH(\fR\ETXref\DC2.\n\
    \\ENQstage\CAN\STX \SOH(\SO2\CAN.utxorpc.submit.v1.StageR\ENQstage*q\n\
    \\ENQStage\DC2\NAK\n\
    \\DC1STAGE_UNSPECIFIED\DLE\NUL\DC2\SYN\n\
    \\DC2STAGE_ACKNOWLEDGED\DLE\SOH\DC2\DC1\n\
    \\rSTAGE_MEMPOOL\DLE\STX\DC2\DC1\n\
    \\rSTAGE_NETWORK\DLE\ETX\DC2\DC3\n\
    \\SISTAGE_CONFIRMED\DLE\EOT2\254\SOH\n\
    \\rSubmitService\DC2M\n\
    \\ACKSubmit\DC2 .utxorpc.submit.v1.SubmitRequest\SUB!.utxorpc.submit.v1.SubmitResponse\DC2J\n\
    \\ENQCheck\DC2\US.utxorpc.submit.v1.CheckRequest\SUB .utxorpc.submit.v1.CheckResponse\DC2R\n\
    \\aWaitFor\DC2!.utxorpc.submit.v1.WaitForRequest\SUB\".utxorpc.submit.v1.WaitForResponse0\SOHB\199\SOH\n\
    \\NAKcom.utxorpc.submit.v1B\vSubmitProtoP\SOHZ;github.com/bufbuild/buf-tour/gen/utxorpc/submit/v1;submitv1\162\STX\ETXUSX\170\STX\DC1Utxorpc.Submit.V1\202\STX\DC1Utxorpc\\Submit\\V1\226\STX\GSUtxorpc\\Submit\\V1\\GPBMetadata\234\STX\DC3Utxorpc::Submit::V1J\144\DC3\n\
    \\ACK\DC2\EOT\NUL\NUL8\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SUB\n\
    \E\n\
    \\STX\EOT\NUL\DC2\EOT\ENQ\NUL\t\SOH\SUB9 Represents a transaction from any supported blockchain.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ENQ\b\DC2\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\ACK\STX\b\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\ACK\b\f\n\
    \$\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\a\EOT\DC2\"\ETB Raw transaction data.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\a\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\a\n\
    \\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\a\DLE\DC1\n\
    \?\n\
    \\STX\EOT\SOH\DC2\EOT\f\NUL\SO\SOH\SUB3 Request to submit transactions to the blockchain.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\f\b\NAK\n\
    \.\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\r\STX\GS\"! List of transactions to submit.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\r\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\r\SYN\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\r\ESC\FS\n\
    \K\n\
    \\STX\EOT\STX\DC2\EOT\DC1\NUL\DC3\SOH\SUB? Response containing references to the submitted transactions.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\DC1\b\SYN\n\
    \.\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DC2\STX\EM\"! List of transaction references.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\DC2\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DC2\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DC2\ETB\CAN\n\
    \P\n\
    \\STX\ENQ\NUL\DC2\EOT\SYN\NUL\FS\SOH\SUBD Enum representing the various stages of a transaction's lifecycle.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\SYN\ENQ\n\
    \\n\
    \!\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\ETB\STX\CAN\"\DC4 Unspecified stage.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\ETB\STX\DC3\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\ETB\SYN\ETB\n\
    \=\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\CAN\STX\EM\"0 Transaction has been acknowledged by the node.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\CAN\STX\DC4\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\CAN\ETB\CAN\n\
    \-\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\EM\STX\DC4\"  Transaction is in the mempool.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\EM\STX\SI\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\EM\DC2\DC3\n\
    \B\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX\SUB\STX\DC4\"5 Transaction has been propagated across the network.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX\SUB\STX\SI\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX\SUB\DC2\DC3\n\
    \@\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETX\ESC\STX\SYN\"3 Transaction has been confirmed on the blockchain.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETX\ESC\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETX\ESC\DC4\NAK\n\
    \D\n\
    \\STX\EOT\ETX\DC2\EOT\US\NUL!\SOH\SUB8 Request to check the status of submitted transactions.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\US\b\DC4\n\
    \7\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX \STX\EM\"* List of transaction references to check.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX \v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX \DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX \ETB\CAN\n\
    \J\n\
    \\STX\EOT\EOT\DC2\EOT$\NUL&\SOH\SUB> Response containing the stage of the submitted transactions.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX$\b\NAK\n\
    \J\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX%\STX\ESC\"= List of stages corresponding to the transaction references.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETX%\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX%\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX%\EM\SUB\n\
    \H\n\
    \\STX\EOT\ENQ\DC2\EOT)\NUL+\SOH\SUB< Request to wait for transactions to reach a certain stage.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX)\b\SYN\n\
    \:\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX*\STX\EM\"- List of transaction references to wait for.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX*\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX*\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX*\ETB\CAN\n\
    \_\n\
    \\STX\EOT\ACK\DC2\EOT.\NUL1\SOH\SUBS Response containing the transaction reference and stage once it has been reached.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX.\b\ETB\n\
    \%\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX/\STX\DLE\"\CAN Transaction reference.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX/\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX/\b\v\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX/\SO\SI\n\
    \0\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX0\STX\DC2\"# Stage reached by the transaction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\ETX0\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX0\b\r\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX0\DLE\DC1\n\
    \W\n\
    \\STX\ACK\NUL\DC2\EOT4\NUL8\SOH\SUBK Service definition for submitting transactions and checking their status.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX4\b\NAK\n\
    \5\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX5\STX5\"( Submit transactions to the blockchain.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX5\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX5\r\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX5%3\n\
    \:\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX6\STX2\"- Check the status of submitted transactions.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX6\ACK\v\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX6\f\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX6#0\n\
    \U\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX7\STX?\"H Wait for transactions to reach a certain stage and stream the updates.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX7\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX7\SO\FS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ACK\DC2\ETX7'-\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX7.=b\ACKproto3"